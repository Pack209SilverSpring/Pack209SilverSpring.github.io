---
announcement_visible: true
announcement_text: Missed our Join Scouting event on 9/15? <a href="/join"
  class="underline hover:no-underline">Learn more</a> or <a
  href="mailto:cubmaster@cubscoutpack209.org" class="underline
  hover:no-underline">contact us</a>
hero_image: /assets/images/209_scoutshikee.jpg
why_image: /assets/images/209_denmeeting.jpg
why_image_alt: Pack 209 Cub Scouts on a family camping trip
why_text: "Pack 209 meets in Silver Spring, MD, and is open to any kid in
  kindergarten through fifth grade who want to get outside, learn new skills,
  and make new friends. Here's what a typical year looks like:"
layout: default
hero_title: Cub Scout Pack 209
hero_subtitle: Welcome to the Adventure
hero_description: A Scouting America pack for all youth in <span
  class="font-semibold">kindergarten through 5th grade</span> in Silver Spring,
  MD. New families are always welcome.
why_bullets:
  - emoji: 🌲
    text: Campouts and hikes in every season
  - emoji: 🧪
    text: Pinewood Derby, monthly pack meetings, and hands-on projects with dens
  - emoji: 🤝
    text: Den friendships that carry from Kindergarten to 5th grade
  - emoji: ✨
    text: Open to every kid and every family — no experience needed
activity_cards:
  - image: /assets/images/209_campfire.jpg
    alt: Pack 209 Cub Scouts camping trip
    title: Family Camping
    description: Our pack goes on a fall and spring family camping trip out in
      nature. It's one giant playdate outside with all of your scout's friends
  - image: /assets/images/209_pinewood3.jpg
    alt: Pack 209 Cub Scouts racing cars at the Pinewood Derby
    title: Pinewood Derby
    description: Scouts design, build, and race their own wooden car in the classic
      yearly event.
  - image: /assets/images/209_sweepthecreek.jpg
    alt: Pack 209 Cub Scouts volunteering together
    title: Community Service
    description: Scouting for Food, Sweep the Creek, and other projects that give back.
  - image: /assets/images/209_hike4.jpg
    alt: Pack 209 Cub Scouts hiking a local trail
    title: Parades & Hikes
    description: Pack 209 joins the Montgomery County Thanksgiving Parade, goes on
      local area hikes, and more throughout the year.
cta_paragraph_1: New to Scouting? We’ll help you get started. Everyone’s welcome.
cta_paragraph_2: We meet the third Tuesday of the month at 7:00 PM at the Silver
  Spring United Methodist Church on Georgia Ave. Whether you're a parent looking
  to get involved or a child ready for a new challenge, we welcome you to Pack
  209. Together, we build leaders and friends in our community.
hero_header: true
navbarText: Silver Spring, MD
---

<!-- HERO: full-bleed, breaks out of the max-w-6xl main container. Parallax: bg-fixed keeps the photo in place while the page scrolls over it (same technique as the "Ready to Explore" CTA below). -->
<section class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw]">
  <div class="relative h-[80vh] min-h-[520px] max-h-[820px] bg-[20%] bg-cover" style="background-image: url('{{ page.hero_image | relative_url }}');">
    <div class="absolute inset-0 bg-gradient-to-b from-cub-blue/70 via-black/45 to-black/60"></div>
    <div class="relative h-full max-w-6xl px-4 mx-auto">
      <div class="flex flex-col items-start justify-center h-full max-w-2xl text-left text-white">
        <h1 class="text-4xl sm:text-5xl md:text-6xl text-white font-extrabold">
          {{ page.hero_title }}
        </h1>
        <h2 class="mt-2 mb-3 text-xl sm:text-2xl md:text-3xl text-white line-height-sm">{{ page.hero_subtitle }}</h2>
        <p class="text-lg sm:text-xl">
          {{ page.hero_description }}
        </p>
        <div class="flex flex-col w-full gap-4 mt-8 sm:w-auto sm:flex-row sm:flex-wrap">
          <a href="/join" class="inline-flex items-center justify-center w-full px-6 py-3 font-bold font-heading transition bg-yellow-400 rounded-[5px] text-blue-900 hover:bg-yellow-600 no-underline sm:w-auto">
            Join Now
          </a>
          <a href="/calendar" class="inline-flex items-center justify-center w-full px-6 py-3 font-semibold font-heading text-white transition rounded-[5px] bg-cub-blue ring-1 ring-cub-blue hover:bg-blue-900 no-underline sm:w-auto">
            Upcoming Events
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ANNOUNCEMENT BANNER: text is a CMS-editable frontmatter field (announcement_text) so leaders can update it without touching code. Set announcement_visible: false in front matter (or via /admin) to hide it. -->
{% if page.announcement_visible %}
<section class="px-4 py-3 text-sm font-medium text-center text-forest bg-yellow-100 relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw] mb-6">
  📣 {{ page.announcement_text }}
</section>
{% endif %}

<!-- TODO: program overview PDF -->

<!-- EVENTS / CALENDAR PREVIEW -->

{%- assign now_epoch = site.time | date: "%s" -%}
{%- assign shown = 0 -%}
{%- assign remaining_events = 0 -%}
{%- assign additional_events = '' -%}

<!-- Collect and sort events -->

{%- assign upcoming = '' | split: '' -%}
{%- for p in site.pages -%}
{%- if p.url and p.url contains '/events/' and p.event -%}
{%- assign ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
{%- if ev_iso -%}
{%- assign ev_epoch = ev_iso | date: "%s" -%}
{%- if ev_epoch >= now_epoch -%}
{%- assign upcoming = upcoming | push: p -%}
{%- endif -%}
{%- endif -%}
{%- endif -%}
{%- endfor -%}
{%- assign upcoming = upcoming | sort: 'event.sort_key' -%}

<section class="pt-2 pb-8 bg-slate-50">
  <div class="max-w-6xl px-4 mx-auto">
    <h2 class="text-2xl font-bold text-center sm:text-4xl text-forest leading-1">Coming Up</h2>
    <div class="grid items-stretch gap-6 mt-10 md:grid-cols-3">
      {%- for p in upcoming -%}
        {%- if shown < 2 -%}
          {%- assign ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
          {%- assign end_iso = p.event.end.dateTime | default: p.event.end.date -%}
          {%- assign ev_day  = ev_iso  | date: "%Y-%m-%d" -%}
          {%- assign end_day = end_iso | date: "%Y-%m-%d" -%}
          <article class="flex flex-col justify-between h-full p-5 bg-white rounded-[5px] border border-slate-200">
            <!-- Date pinned top -->
            <p class="text-sm text-slate-500">
              {{ ev_iso | date: "%a • %b %-d" }}
              {%- if end_iso and end_day != ev_day -%}
                – {{ end_iso | date: "%a • %b %-d" }}
              {%- endif -%}
            </p>
            <!-- Middle content centered -->
            <div class="flex flex-col items-center justify-center text-center">
              <h3 class="mt-1 font-bold text-cub-blue">
                <a href="{{ p.url | relative_url }}" class="no-underline hover:underline">
                  {{ p.title | default: "Pack Event" }}
                </a>
              </h3>
              <!-- Location -> city only (public events only) -->
              {%- assign loc = p.event.location | default: p.location | default: p.venue -%}
              {%- if loc -%}
                {%- assign parts = loc | split: ',' -%}
                {%- if parts.size >= 3 -%}
                  {%- assign city = parts[1] | strip -%}
                {%- elsif parts.size == 2 -%}
                  {%- assign city = parts[0] | strip -%}
                {%- else -%}
                  {%- assign city = loc -%}
                {%- endif -%}
                <p class="mt-2 text-sm text-slate-600">{{ city }}</p>
              {%- endif -%}
              <!-- Times only for same-day timed events -->
              {%- if p.event.start.dateTime and end_iso and end_day == ev_day -%}
                <p class="mt-1 text-xs text-slate-500">
                  {{ p.event.start.dateTime | date: "%-I:%M %p" }}
                  {%- if p.event.end and p.event.end.dateTime -%}
                    – {{ p.event.end.dateTime | date: "%-I:%M %p" }}
                  {%- endif -%}
                </p>
              {%- endif -%}
            </div>
            <a href="{{ p.url | relative_url }}" class="inline-flex mt-3 font-semibold text-slate-900 no-underline hover:underline">Details</a>
          </article>
          {%- assign shown = shown | plus: 1 -%}
        {%- else -%}
          {%- if remaining_events < 3 -%}
            {%- assign remaining_events = remaining_events | plus: 1 -%}
            {%- assign current_ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
            {%- capture event_item -%}
              <li class="pb-3 mb-3 border-b border-slate-100 last:border-0 last:mb-0 last:pb-0">
                <p class="text-sm text-slate-500">{{ current_ev_iso | date: "%b %-d" }}</p>
                <a href="{{ p.url | relative_url }}" class="font-medium no-underline hover:underline">{{ p.title | default: "Pack Event" }}</a>
              </li>
            {%- endcapture -%}
            {%- assign additional_events = additional_events | append: event_item -%}
          {%- endif -%}
        {%- endif -%}
      {%- endfor -%}
      <!-- Third card with list of more events -->
      {%- if remaining_events > 0 -%}
        <article class="flex flex-col justify-between h-full p-5 bg-white rounded-[5px] border border-slate-200">
          <h3 class="py-0 mt-0 mb-3 font-bold text-cub-blue">More Upcoming Events</h3>
          <div class="flex items-center flex-1">
            <ul class="w-full text-sm list-none">
              {{ additional_events }}
            </ul>
          </div>
          <a href="/events/" class="inline-flex mt-3 font-semibold text-slate-900 no-underline hover:underline">See All Events</a>
        </article>
      {%- endif -%}
    </div>
    {%- if upcoming.size == 0 -%}
      <p class="mt-6 text-center text-slate-600">No upcoming events found.</p>
    {%- endif -%}
    <div class="mt-8 text-center">
      <a href="/calendar/" class="inline-flex items-center justify-center w-full px-5 py-3 font-semibold font-heading text-white transition rounded-[5px] bg-cub-blue hover:bg-blue-900 no-underline sm:w-auto">
        Full Calendar
      </a>
    </div>

  </div>
</section>

<!-- WHY CUB SCOUTING: full-bleed forest-tinted band, image left / text right -->
<div class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw] bg-forest-tint">
<div class="max-w-6xl px-4 py-16 mx-auto">
<section class="grid items-center gap-10 md:grid-cols-2">
  <div>
    <img src="{{ page.why_image | relative_url }}" alt="{{ page.why_image_alt }}" class="object-cover w-full max-h-[660px] bg-bottom rounded-[5px]">
  </div>
  <div>
    <h2 class="text-3xl font-bold sm:text-4xl text-forest">Why Cub Scouting?</h2>
    <p class="mt-4 text-lg leading-7">
      {{ page.why_text }}
    </p>
    <ul class="mt-6 space-y-3">
      {% for bullet in page.why_bullets %}
      <li class="flex items-start gap-3"><span class="mt-1">{{ bullet.emoji }}</span> <span>{{ bullet.text }}</span></li>
      {% endfor %}
    </ul>
    <div class="mt-6">
      <a href="/about" class="inline-flex items-center justify-center w-full px-5 py-3 font-semibold font-heading text-white transition rounded-[5px] bg-cub-blue hover:bg-blue-900 no-underline sm:w-auto">
        More About Pack 209
      </a>
    </div>
  </div>
</section>
</div>
</div>

<!-- WHAT WE DO: intro text, then a card grid (photo + description per activity) -->
<section class="max-w-3xl px-4 pt-16 mx-auto text-center">
  <h2 class="text-3xl font-bold sm:text-4xl text-forest">What We Do</h2>
  <p class="mt-3">A quick look at our favorite pack and den activities.</p>
</section>

<section class="max-w-6xl px-4 py-10 mx-auto">
  <div class="grid gap-6 mt-6 sm:grid-cols-2 lg:grid-cols-4">
    {% for card in page.activity_cards %}
    <div class="overflow-hidden bg-white rounded-[5px] ring-1 ring-slate-200">
      <img src="{{ card.image | relative_url }}" alt="{{ card.alt }}" class="object-cover w-full h-40">
      <div class="p-4 pt-2">
        <h3 class="font-bold text-cub-blue mt-1">{{ card.title }}</h3>
        <p class="mt-1 text-sm text-slate-600">{{ card.description }}</p>
      </div>
    </div>
    {% endfor %}
  </div>
</section>

<!-- BE PART OF THE PACK (Leaders + Dens) -->
<section class="max-w-6xl px-4 py-16 mx-auto">
  <div class="grid gap-2 lg:grid-cols-2">
    <!-- Leaders -->
    <div markdown="1">
      {% include leaders.md %}
</div>
    <!-- Den Finder / Schedule -->
    <div>
      <h2>Find Your Den</h2>
      <p class="mt-3">Meetings tailored to grade/age. New families welcome—jump in anytime. Pack meetings are
      hosted at Silver Spring United Methodist Church (8900 Georgia Ave), in Fellowship Hall.</p>
      <div class="mt-6 divide-y divide-slate-200">
        {% for den in site.data.dens.dens %}
        <div class="flex items-baseline justify-between py-3">
          <p class="font-semibold">{{ den.name }} ({{ den.grade }})</p>
        </div>
        {% endfor %}
      </div>
      <div class="mt-6">
        <a href="mailto:cubmaster@cubscoutpack209.org?subject=Question%20about%20Pack%20209"
           target="_blank" rel="noopener"
           class="inline-flex items-center justify-center w-full px-5 py-3 font-semibold font-heading text-white transition rounded-[5px] bg-cub-blue hover:bg-blue-900 no-underline sm:w-auto">
          Ask a Question
        </a>
        <p class="mt-3 text-sm text-slate-500">
          or email <a href="mailto:cubmaster@cubscoutpack209.org" class="text-cub-blue underline decoration-cub-blue/30 underline-offset-2 hover:decoration-cub-blue">cubmaster@cubscoutpack209.org</a>
        </p>
      </div>
    </div>
  </div>
</section>

<!-- TODO: add Pack 209 family testimonials -->

<!-- FINAL CTA: full-bleed parallax background photo (image stays fixed while the page scrolls over it) -->
<div class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw] mt-16">
  <section class="relative flex items-center justify-center min-h-[420px] px-4 py-16 overflow-hidden text-center bg-bottom-center bg-cover bg-fixed" style="background-image: url('{{ '/assets/images/209_campfire.jpg' | relative_url }}');">
    <div class="absolute inset-0 bg-cub-blue/85"></div>
    <div class="relative max-w-6xl mx-auto">
      <h2 class="text-3xl font-bold text-white sm:text-4xl">Ready to Explore?</h2>
      <p class="mt-3 text-white">{{ page.cta_paragraph_1 }}</p>
      <p class="mt-3 text-white">{{ page.cta_paragraph_2 }}</p>
      <div class="mt-6">
        <a href="/join" class="inline-flex items-center justify-center w-full px-6 py-3 font-bold font-heading transition bg-cub-gold rounded-[5px] text-cub-blue hover:bg-yellow-300 no-underline sm:w-auto">
          Join Pack 209
        </a>
      </div>
    </div>
  </section>
</div>
