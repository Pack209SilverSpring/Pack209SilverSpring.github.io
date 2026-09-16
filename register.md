---
layout: default
title: Register
hideTitle: true
hero_header: true
permalink: /register/
---

{%- comment -%} Current program year, computed at build time so it never needs manual updating. {%- endcomment -%}
{%- assign current_year = "now" | date: "%Y" | plus: 0 -%}
{%- assign next_year = current_year | plus: 1 -%}

<!-- HERO: full-bleed, parallax bg-fixed background (same technique as the homepage hero and "Ready to Explore" CTA) -->
<section class="relative left-1/2 right-1/2 w-screen -ml-[50vw] -mr-[50vw]">
  <div class="relative h-[45vh] min-h-[360px] max-h-[520px] bg-bottom-center bg-cover bg-fixed" style="background-image: url('{{ '/assets/images/209_campout.jpg' | relative_url }}');">
    <div class="absolute inset-0 bg-gradient-to-b from-cub-blue/70 via-black/45 to-black/60"></div>
    <div class="relative h-full max-w-6xl px-4 mx-auto">
      <div class="flex flex-col items-start justify-center h-full max-w-2xl text-left text-white">
        <h1 class="text-4xl font-extrabold sm:text-5xl md:text-6xl">
          Welcome to the Pack
        </h1>
        <p class="mt-4 text-lg sm:text-xl">
          Everything you need to register for Cub Scout Pack 209
        </p>
      </div>
    </div>
  </div>
</section>

<!-- FOUR STEPS -->
<section class="px-4 mt-16 sm:px-6 lg:px-8">
  <div class="max-w-6xl mx-auto">
    <div class="grid gap-6 md:grid-cols-2">
      <!-- STEP 1 · National dues -->
      <article class="flex flex-col p-8 bg-white rounded-[5px] ring-1 ring-slate-200">
        <div class="flex items-center justify-between">
          <span class="inline-flex items-center justify-center w-12 h-12 text-xl font-extrabold rounded-full bg-cub-blue text-white">1</span>
        </div>
        <h3 class="mt-5 mb-0 text-xl font-bold text-cub-blue">
          Register with Scouting America
        </h3>
        <p class="mt-3 text-slate-600">
          Register with Scouting America to officially join the cub scouts! Registration includes $170 to cover national and National Capital Area Council registration ($85 BSA registration fee, $80 council participation fee, and a ~$5 processing fee). Add $15 for an optional year of <em>Scout Life</em> magazine. Important: when prompted, choose <strong class="text-cub-blue">Cub Scout Pack 209</strong>, chartered through Cissel-Saxon American Legion Post 41, so your scout lands in the right pack.
        </p>
        <p class="mt-3 text-sm text-slate-500">
          <strong class="text-cub-blue">Returning scouts:</strong> Scouting America bills 12 months from your last registration, so you may not owe anything yet. When the renewal does come due, paying it is required to stay registered as a scout.
        </p>
        <dl class="mt-5 text-sm text-slate-500 space-y-1">
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Where:</dt><dd>my.scouting.org (you'll create an account if you don't have one)</dd></div>
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Done when:</dt><dd>You receive a registration confirmation email</dd></div>
        </dl>
        <div class="flex flex-col mt-6 gap-3">
          <a href="https://my.scouting.org/VES/OnlineReg/1.0.0/?tu=UF-MB-082paa0209"
             target="_blank" rel="noopener"
             class="flex items-baseline justify-between gap-4 px-5 py-4 transition font-heading rounded-[5px] bg-cub-blue ring-1 ring-cub-blue hover:bg-blue-900">
            <span class="text-xs font-semibold tracking-[0.2em] uppercase text-white/90">Register through Scouting America</span>
            <span class="text-xl font-extrabold text-white">$170</span>
          </a>
        </div>
      </article>
      <!-- STEP 2 · Pack 209 dues -->
      <article class="flex flex-col p-8 bg-white rounded-[5px] ring-1 ring-slate-200">
        <div class="flex items-center justify-between">
          <span class="inline-flex items-center justify-center w-12 h-12 text-xl font-extrabold rounded-full bg-cub-blue text-white">2</span>
        </div>
        <h3 class="mt-5 mb-0 text-xl font-bold text-cub-blue">
          Pay Pack 209 dues
        </h3>
        <p class="mt-3 text-slate-600">
          $115 covers Fall and Spring campouts, Pack t-shirts, Pinewood Derby car kits, awards (belt loops, pins, and badges), and other Pack activity costs.
        </p>
        <dl class="mt-5 text-sm text-slate-500 space-y-1">
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Where:</dt><dd>Zelle or check</dd></div>
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Done when:</dt><dd>Payment confirmed</dd></div>
        </dl>
        <div class="mt-6 rounded-[5px] p-5" style="background-color:#6D1ED4">
          <div class="flex items-baseline justify-between">
            <p class="text-lg font-extrabold tracking-tight text-white">Zelle&reg;</p>
            <span class="text-xl font-extrabold text-white">$115</span>
          </div>
          <p class="mt-2 text-sm font-semibold text-white">Pay with Zelle</p>
          <p class="mt-1 text-sm text-purple-100">
            Send $115 to
            <a href="mailto:Treasurer@cubscoutpack209.org" class="underline decoration-white/60 underline-offset-2 hover:decoration-white">Treasurer@cubscoutpack209.org</a>
            using Zelle in your banking app.
          </p>
        </div>
        <p class="mt-3 text-xs text-slate-500 italic">
          Checks also accepted — see any pack leader at a meeting.
        </p>
      </article>
      <!-- STEP 3 · Uniform -->
      <article class="flex flex-col p-8 bg-white rounded-[5px] ring-1 ring-slate-200">
        <div class="flex items-center justify-between">
          <span class="inline-flex items-center justify-center w-12 h-12 text-xl font-extrabold rounded-full bg-cub-blue text-white">3</span>
        </div>
        <h3 class="mt-5 mb-0 text-xl font-bold text-cub-blue">
          Get a uniform
        </h3>
        <p class="mt-3 text-slate-600">
          Scouts wear two uniforms: the "Class A" blue Cub Scout shirt with neckerchief, slide, and hat (the belt displays earned belt loop awards), and a "Class B" pack t-shirt, whose cost is included in dues. The blue shirt bought in the first year can be worn through 5th grade, so size up. Gently used hand-me-downs may be available in our pack rummage bin. <strong class="text-cub-blue">Any family struggling with the cost of a uniform, registration, or dues should speak privately with the Cubmaster — assistance may be available.</strong> <a href="https://www.scouting.org/programs/cub-scouts/cub-scout-uniform/" rel="noopener" class="text-cub-blue underline decoration-cub-blue/30 underline-offset-2 hover:decoration-cub-blue">See the uniform by rank</a>.
        </p>
        <dl class="mt-5 text-sm text-slate-500 space-y-1">
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Where:</dt><dd>National Capital Scout Shop — 9190 Rockville Pike, Bethesda, MD 20814 <span class="text-slate-400">((301) 564-1091 · Mon–Fri 9:30am–5pm, Sat 10am–3pm, closed Sun)</span> <span class="text-slate-400">(or <a href="https://www.scoutshop.org/" rel="noopener" class="text-cub-blue/80 underline decoration-cub-blue/30 underline-offset-2 hover:decoration-cub-blue">shop online</a>)</span></dd></div>
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Done when:</dt><dd>Your scout has a shirt, pants, and neckerchief that fit</dd></div>
        </dl>
      </article>
      <!-- STEP 4 · Medical form + optional talent survey -->
      <article class="flex flex-col p-8 bg-white rounded-[5px] ring-1 ring-slate-200">
        <div class="flex items-center justify-between">
          <span class="inline-flex items-center justify-center w-12 h-12 text-xl font-extrabold rounded-full bg-cub-blue text-white">4</span>
        </div>
        <h3 class="mt-5 mb-0 text-xl font-bold text-cub-blue">
          Fill in the medical form
        </h3>
        <p class="mt-3 text-slate-600">
          Ensure the {{ current_year }}-{{ next_year }} <a href="https://filestore.scouting.org/filestore/HealthSafety/pdf/680-001_AB.pdf" target="_blank" rel="noopener" class="text-cub-blue underline decoration-cub-blue/30 underline-offset-2 hover:decoration-cub-blue">Annual Health and Safety form</a> is completed, with a hard copy on file with the pack. Scouting America rules require we have this on hand in paper copy before any overnight trips or extended scouting activities.
        </p>
        <dl class="mt-5 text-sm text-slate-500 space-y-1">
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Where:</dt><dd>Download, print, and fill out</dd></div>
          <div class="flex gap-2"><dt class="font-semibold text-cub-blue/80 min-w-24">Done when:</dt><dd>Signed hard copy turned in to a pack leader</dd></div>
        </dl>
        <a href="https://filestore.scouting.org/filestore/HealthSafety/pdf/680-001_AB.pdf"
           target="_blank" rel="noopener"
           class="flex items-baseline justify-between gap-4 px-5 py-4 mt-6 transition font-heading rounded-[5px] bg-cub-blue ring-1 ring-cub-blue hover:bg-blue-900">
          <span class="text-xs font-semibold tracking-[0.2em] uppercase text-white/90">Download the Health and Safety Form</span>
          <span class="text-cub-gold" aria-hidden="true">→</span>
        </a>
        <div class="pt-5 mt-6 border-t border-slate-100">
          <p class="text-xs font-semibold tracking-[0.2em] uppercase text-cub-blue/60">Optional</p>
          <h4 class="mt-1 text-base font-bold text-cub-blue">Family Talent Survey</h4>
          <p class="mt-2 text-sm text-slate-600">
            Please let us know how you as parents can help this year! We are asking all families to fill out this <a href="https://forms.gle/RrMjVrj47FY9R1Bz9" target="_blank" rel="noopener" class="text-cub-blue underline decoration-cub-blue/30 underline-offset-2 hover:decoration-cub-blue">Family Talent Survey</a> to give us a better sense of your hidden talents and abilities. We know that you all have a lot to contribute!
          </p>
        </div>
      </article>
    </div>
  </div>
</section>

<!-- STUCK FOOTER -->
<section class="px-4 mt-12 mb-12 sm:px-6 lg:px-8 sm:mt-16">
  <div class="max-w-6xl mx-auto overflow-hidden text-center rounded-[5px] bg-forest">
    <div class="px-6 py-12 sm:px-10">
      <h2 class="mt-0 text-3xl font-bold text-white sm:text-4xl">
        Stuck on a step?
      </h2>
      <p class="mt-3 text-blue-50 max-w-xl mx-auto">
        Registration paperwork is the least fun part of scouting. We've all done it. Send us a note and a parent leader will help you sort it out.
      </p>
      <div class="mt-8">
        <a href="mailto:cubmaster@cubscoutpack209.org?subject=Registration%20help"
           class="inline-flex items-center justify-center px-7 py-3.5 font-bold font-heading transition bg-cub-gold rounded-[5px] text-cub-blue hover:bg-yellow-300">
          Email cubmaster@cubscoutpack209.org
        </a>
      </div>
    </div>
  </div>
</section>
