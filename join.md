---
layout: default
title: Join Pack 209
permalink: /join/
hideTitle: true

cards:
  - title: Sign up for Pack 209
    description: Four short steps to register your scout for the year. We'll walk you through each one.
    link_text: See the steps
  - title: Contact us to learn more
    description: Talk to a parent leader, ask anything, or arrange to visit a meeting first — no commitment.
    link_text: Get in touch
---

<!-- TODO: once Pack 209 has its own program overview PDF, re-add a download hero here. -->

<!-- TWO CTAs -->
<section class="px-4 mt-12 mb-12 sm:px-6 lg:px-8 sm:mt-16">
  <div class="grid max-w-6xl gap-6 mx-auto md:grid-cols-2">
    <a href="/register"
       class="group block p-8 transition font-heading rounded-[5px] bg-cub-gold ring-1 ring-cub-blue hover:bg-yellow-300">
      <h2 class="mt-0 mb-0 text-2xl font-bold tracking-tight text-cub-blue sm:text-3xl">
        {{ page.cards[0].title }}
      </h2>
      <p class="mt-3 text-cub-blue/80">
        {{ page.cards[0].description }}
      </p>
      <span class="inline-flex items-center gap-1 mt-6 font-bold text-cub-blue">
        {{ page.cards[0].link_text }}
        <span aria-hidden="true" class="transition-transform group-hover:translate-x-0.5">→</span>
      </span>
    </a>
    <a href="mailto:leaders@cubscoutpack209.org?subject=Question%20about%20Pack%20209"
       target="_blank" rel="noopener"
       class="group block p-8 transition font-heading bg-white rounded-[5px] ring-1 ring-cub-blue hover:bg-slate-50">
      <h2 class="mt-0 mb-0 text-2xl font-bold tracking-tight text-cub-blue sm:text-3xl">
        {{ page.cards[1].title }}
      </h2>
      <p class="mt-3 text-slate-600">
        {{ page.cards[1].description }}
      </p>
      <span class="inline-flex items-center gap-1 mt-6 font-bold text-cub-blue">
        {{ page.cards[1].link_text }}
        <span aria-hidden="true" class="transition-transform group-hover:translate-x-0.5">→</span>
      </span>
    </a>

  </div>
</section>
