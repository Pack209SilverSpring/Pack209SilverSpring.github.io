require 'time'

# The jekyll-google-calendar gem only limits how far *ahead* it fetches
# events (see `look_ahead` under `gcalendar:` in _config.yml) -- it has no
# option to limit how far *back* it goes, so it generates a page for every
# event the calendar has ever had (this Pack's calendar dates to 2011).
# This drops event pages older than the cutoff below before the site
# builds, so old history doesn't pile up as published pages. The calendar
# widget still greys out recent past events rather than hiding them, so
# this window should stay generous enough to cover that.
EVENT_PAGE_LOOKBACK_DAYS = 730

Jekyll::Hooks.register :site, :pre_render do |site|
  cutoff = Time.now - (EVENT_PAGE_LOOKBACK_DAYS * 24 * 60 * 60)

  site.pages.reject! do |page|
    event = page.data['event']
    next false unless event && event['start']

    raw = event['start']['dateTime'] || event['start']['date']
    start_time = begin
      Time.parse(raw.to_s)
    rescue ArgumentError, TypeError
      nil
    end
    next false unless start_time

    start_time < cutoff
  end
end
