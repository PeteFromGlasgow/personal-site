{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}
<div class="row">
	<div class="medium-2">
	</div>
	<div class="medium-8 column align-center">
		<div class='blog-header'>
			<h1 id='blog-header-text'>{{title}}</h1>
		</div>
	</div>
</div>
<div class="row">
	<div class="medium-2">
	</div>
	<div class="medium-8 blog-body column align-center">
		
		{{ contents | raw }}
	</div>

</div>
{% endblock content %}