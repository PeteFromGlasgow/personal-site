{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}
<div class="row">
	<div class="medium-12 column">
		<div class='blog-header'>
			<h1 id='blog-header-text'>{{title}}</h1>
		</div>
	</div>
</div>
<div class="row">
	<div class="medium-10 blog-body column">
		
		{{ contents | raw }}
	</div>
	<div class="medium-2 column">
		<h4>Metadata</h4>
		{{date}}
		<h4>Posts</h4>
		{% for post in blogposts %}
			<a href="/{{post.path}}">{{post.title}}</a>
		{% endfor %}
	</div>
</div>
{% endblock content %}