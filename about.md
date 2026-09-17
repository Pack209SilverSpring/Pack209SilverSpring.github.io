---
layout: default
title: About
hideTitle: true
hero_header: true
permalink: /about/

hero_image: /assets/images/209_campfire.jpg
hero_title: About Pack 209
hero_subtitle: Building character, confidence, and community

our_pack_image: /assets/images/209_billygoat1.jpg
our_pack_image_alt: Pack 209 Scouts hiking together
our_pack_text: |
  We are a Cub Scout Pack based in Silver Spring, Maryland, open to boys and girls in
  kindergarten through fifth grade (we're launching a new Lion (K) den this
  fall!). We foster an open, non-discriminatory, and diverse community. While many of our Scouts attend Woodlin Elementary, the Pack includes families from a variety of area schools and neighborhoods.

  Everything we do ties back to the Scout Oath and Law. Being trustworthy, helpful, and
  kind aren't just words on a poster — they're what we expect from each other at every
  meeting and campout.

  Mostly, we want kids to leave a Pack 209 meeting a little more confident than when they
  showed up — whether that's from finishing a hike, helping a younger Scout, or just
  building something that actually works.

our_story_text: |
  Scouting has deep roots in our community. The Boy Scouts of America was founded in 1910
  ("Be Prepared" is still the Scout motto for older youth), and our own Troop 209 was
  chartered back in 1918 as one of Montgomery County's oldest scouting units. Cub Scouting
  for younger kids came along in 1930, built around a simpler idea: "Do Your Best."

  Pack 209 serves the Woodside neighborhoods north of downtown Silver Spring, and is part of
  Scouting America's National Capital Area Council, Potomac District. We're a family
  Pack where girls and boys scout side by side, and we don't do fundraisers. Annual dues
  cover our costs, so families can focus on the fun instead of selling popcorn.

hosts_leaders_text: |
  Cub Scout Pack 209 is chartered through Cissel-Saxon American Legion Post 41, with
  facilities for meetings and activities generously provided by Silver Spring United
  Methodist Church (SSUMC), 8900 Georgia Ave, Silver Spring, MD 20910. The Pack typically
  meets in Fellowship Hall, below the sanctuary (enter via the lower-level doors on the
  Ballard St./south side of the building). Some Pack families are SSUMC members, but many
  are not. All are welcome.

  Pack 209 is run by an all-volunteer team of leaders, drawing from Pack parents and
  dedicated members of our charter and host organizations. Pack 209 truly belongs to our
  families and our community, creating an inclusive environment where all children can
  experience the benefits of scouting.

closing_cta_image: /assets/images/209_parade.jpg
closing_cta_text: |
  Pack 209 welcomes all children in kindergarten through fifth grade. Our volunteer-led program provides
  age-appropriate activities that build character, foster citizenship, and develop physical and mental fitness—all
  while having fun and making memories that last a lifetime.
---

<!-- HERO: full-bleed, parallax bg-fixed background (same technique as the homepage hero and "Ready to Explore" CTA) -->
<section class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw]">
  <div class="relative h-[45vh] min-h-[360px] max-h-[520px] bg-center bg-cover bg-fixed" style="background-image: url('{{ page.hero_image | relative_url }}');">
    <div class="absolute inset-0 bg-gradient-to-b from-cub-blue/70 via-black/45 to-black/60"></div>
    <div class="relative h-full max-w-6xl px-4 mx-auto">
      <div class="flex flex-col items-start justify-center h-full max-w-2xl text-left text-white">
        <h1 class="text-4xl font-extrabold sm:text-5xl md:text-6xl">
          {{ page.hero_title }}
        </h1>
        <p class="mt-4 text-lg sm:text-xl">
          {{ page.hero_subtitle }}
        </p>
      </div>
    </div>
  </div>
</section>

<div class="grid items-center gap-12 p-12 mt-10 bg-white md:grid-cols-2">
    <div class="prose">
        {{ page.our_pack_text | markdownify }}
    </div>

    <div>
        <img src="{{ page.our_pack_image | relative_url }}" alt="{{ page.our_pack_image_alt }}"
            class="object-cover w-full h-80 rounded-[5px]" loading="lazy" decoding="async">
    </div>

</div>

<div class="mt-16 px-8">
    <h2 class="text-2xl font-bold text-forest">Our Story</h2>
    <div class="prose">
        {{ page.our_story_text | markdownify }}
    </div>
</div>

<div class="px-8 py-10 mt-12 text-white shadow-lg rounded-[5px] bg-scout-blue">
  <h2 class="m-0 text-3xl font-bold tracking-tight text-center text-white">
    Our Hosts and Leaders
  </h2>

  <div class="flex flex-wrap gap-5 md:flex-nowrap">
  <div class="min-w-[120px] mx-auto items-center flex-1">
        <div class="prose text-white">
            {{ page.hosts_leaders_text | markdownify }}
        </div>
    </div>

  </div>
    <div class="flex">
        <a href="/join"
            class="px-6 py-3 mx-auto mt-5 font-bold transition bg-cub-gold rounded-[5px] text-cub-blue hover:bg-yellow-300">
            Join Pack 209
        </a>
    </div>
</div>
<div class="mt-16 px-8">
    <h2 class="text-2xl font-bold text-forest">Scout Law</h2>
    <p class="mt-4 text-lg">These are the principles we teach our scouts. We hope they all grow up to be:</p>
    <div class="flex justify-between flex-wrap gap-2 mt-6 text-center">
        <p class="text-lg font-medium text-cub-blue">Trustworthy</p>
        <p class="text-lg font-medium text-cub-blue">Loyal</p>
        <p class="text-lg font-medium text-cub-blue">Helpful</p>
        <p class="text-lg font-medium text-cub-blue">Friendly</p>
        <p class="text-lg font-medium text-cub-blue">Courteous</p>
        <p class="text-lg font-medium text-cub-blue">Kind</p>
        <p class="text-lg font-medium text-cub-blue">Obedient</p>
        <p class="text-lg font-medium text-cub-blue">Cheerful</p>
        <p class="text-lg font-medium text-cub-blue">Thrifty</p>
        <p class="text-lg font-medium text-cub-blue">Brave</p>
        <p class="text-lg font-medium text-cub-blue">Clean</p>
        <p class="text-lg font-medium text-cub-blue">Reverent</p>
    </div>
</div>

<div class="mt-16">
    <div class="grid gap-12 px-8 bg-white md:grid-cols-2">
        <div>
            <h2 class="text-2xl font-bold text-forest">Cub Scout Motto & Slogan</h2>
            <div class="mt-4">
                <h3 class="text-xl font-bold text-cub-blue">Our Motto: "Do Your Best"</h3>
                <p>
                     These three simple words guide everything we do in Cub Scouting. It's not about being perfect. We ask each Scout to set their own
                    goal and give it their full effort.
                </p>
            </div>
            <div class="mt-6">
                <h3 class="text-xl font-bold text-cub-blue">Our Slogan: "Do a Good Turn Daily"</h3>
                <p class="mt-2">
                    This reminds Scouts to do at least one act of service each day, developing the habit of thinking
                    about others first and creating a lifetime pattern of service and citizenship.
                </p>
            </div>
        </div>
        <div>
            <h2 class="text-2xl font-bold text-forest">The Outdoor Code</h2>
            <div class="mt-4">
                <p class="italic">As an American, I will do my best to —</p>
                <ul class="mt-4 space-y-2">
                    <li><span class="font-semibold">Be clean in my outdoor manners.</span> A Cub Scout takes care of the
                        outdoors and keeps it clean.</li>
                    <li><span class="font-semibold">Be careful with fire.</span> A Cub Scout may enjoy a campfire only
                        with adult leaders and knows not to play with matches.</li>
                    <li><span class="font-semibold">Be considerate in the outdoors.</span> A Cub Scout shares outdoor
                        places and treats everything with respect.</li>
                    <li><span class="font-semibold">Be conservation-minded.</span> A Cub Scout works to restore the
                        health of the land for others to enjoy.</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw] mt-16">
  <section class="relative flex items-start justify-start min-h-[420px] px-4 py-16 overflow-hidden text-left bg-center bg-cover bg-fixed" style="background-image: url('{{ page.closing_cta_image | relative_url }}');">
    <div class="absolute inset-0 bg-forest/75"></div>
    <div class=" max-w-6xl px-4 mx-auto relative">
    <h2 class="text-3xl font-bold text-white sm:text-4xl">Join our Adventure</h2>
    <div class="mt-4 text-lg leading-7 text-white prose">
        {{ page.closing_cta_text | markdownify }}
    </div>
    <div class="mt-6">
        <a href="/join" class="inline-flex items-center px-6 py-3 font-bold font-heading transition bg-cub-gold rounded-[5px] text-cub-blue hover:bg-yellow-300">
          Join Pack 209
        </a>
        <a href="/contact"
            class="inline-flex items-center px-6 py-3 ml-4 font-bold font-heading text-white transition rounded-[5px] bg-cub-blue hover:bg-blue-900">
            Contact Us
        </a>
    </div>
    </div>
  </section>
</div>
