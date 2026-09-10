{% comment %}
Leaders partial - a reusable component for displaying pack leaders
Parameters:
- none: uses default styling and layout
{% endcomment %}

## Meet the Leaders

Pack 209 is run by parents — every leader below is also a Pack 209 family.

<div class="mt-6 divide-y divide-slate-200" markdown="0">

{% for leader in site.data.leaders %}
  {% include leader-card.html leader=leader %}
{% endfor %}

</div>
