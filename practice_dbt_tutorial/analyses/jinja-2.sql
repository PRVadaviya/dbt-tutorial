
{%- set apples = ['gala', 'fuji', 'honeycrisp'] -%}

{% for i in apples%}

     {% if i != 'fuji'%}
          {{i}}
     {% else %}
          {{i}} is not my favorite apple.
          
     {% endif %}
{% endfor %}