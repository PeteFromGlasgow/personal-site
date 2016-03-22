{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}

<div class="off-canvas-wrapper">
  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
    <div class="off-canvas position-left" id="blog-off-canvas" data-off-canvas>

    	<ul class="menu vertical">
        <li class='menu-text'><img src="/public/images/peter_drawing_no_back.png" class='face-bordered face-bordered-small'></img>
PeterKinnaird.eu</li>
        <li><a href="#">Two</a></li>
        <li><a href="#">Three</a></li>
        <li><a href="#">Four</a></li>
      </ul>
      <hr>
    </div>
    <div class="off-canvas-content" data-off-canvas-content>
    	<a id="menu-burger" data-toggle="blog-off-canvas"> &#9776;</a>
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
		<div class="row">
			<div class="medium-2">
			</div>
			<div class="medium-4 blog-body column align-center">
				{% if previous %}
				<a href="/{{previous.path}}"> &lt; {{previous.title}}</a>
				{% endif %}
			</div>
			<div id="previous-post" class="medium-4 blog-body column align-center">
				{% if next %}
				<a href="/{{next.path}}">  {{next.title}} &gt;</a>
				{% endif %}
			</div>

		</div>	
    </div>
    
  </div>


</div>
{% endblock content %}