{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}

<div class="row">
	<div class="medium-10 column">
		<h2>{{title}}</h2>
		{{ contents | raw }}
	</div>
	<div class="medium-2 column">
		
	</div>
</div>
{% endblock content %}