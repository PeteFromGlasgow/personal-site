{% extends 'layout.html.swig' %}

{% block title %} {{ title }} {% endblock title %}


{% block content %}

<div class="off-canvas-wrapper">
  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>
    <div class="off-canvas position-left" id="blog-off-canvas" data-off-canvas>
    	<ul class="menu vertical">
        <li><a href="#">One</a></li>
        <li><a href="#">Two</a></li>
        <li><a href="#">Three</a></li>
        <li><a href="#">Four</a></li>
      </ul>
    </div>
    <div class="off-canvas-content" data-off-canvas-content>
    	<a data-toggle="blog-off-canvas"> &lt; Open Menu</a>
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
    </div>
    
  </div>


</div>
{% endblock content %}