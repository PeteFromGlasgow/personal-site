{% extends 'layout.html.swig' %}

{% block title %} The home of Peter Kinnaird {% endblock title %}


{% block content %}

{{ contents | raw }}

{% endblock content %}