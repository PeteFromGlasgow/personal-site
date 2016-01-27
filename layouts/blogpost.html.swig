{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}

<div class="row">
	<div class="medium-10 column">
		<h2>{{title}}</h2>
		{{ contents | raw }}
	</div>
	<div class="medium-2 column">
		<h4>Posts</h4>
		{% for post in blogposts %}
			<a href="/{{post.path}}">{{post.title}}</a>
		{% endfor %}
	</div>
</div>
{% endblock content %}