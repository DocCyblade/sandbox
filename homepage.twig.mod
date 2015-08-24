{% extends 'base.html.twig' %}

{% block body_id 'homepage' %}

{#
    the homepage is a special page which displays neither a header nor a footer.
    this is done with the 'trick' of defining empty Twig blocks without any content
#}
{% block header %}{% endblock %}
{% block footer %}{% endblock %}

{% block body %}
    <div class="page-header">
        <h1>{{ 'title.homepage'|trans|raw }}</h1>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="jumbotron">
                <p>
                    {{ 'help.browse_app'|trans|raw }}
                </p>
                <p>
                    <a class="btn btn-primary btn-lg" href="{{ path('blog_index') }}">
                        <i class="fa fa-users"></i> {{ 'action.browse_app'|trans }}
                    </a>
                </p>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="jumbotron">
                <p>
                    {{ 'help.browse_admin'|trans|raw }}
                </p>
                <p>
                    <a class="btn btn-primary btn-lg" href="{{ path('admin_index') }}">
                        <i class="fa fa-lock"></i> {{ 'action.browse_admin'|trans }}
                    </a>
                </p>
            </div>
        </div>
    </div>

   <div class="row">
        <div class="col-sm-6">
            <div class="jumbotron">
                <p>Use this demo site to help you with your own application by using it as an example.<p>
                <br>
                <p>
                    <a class="btn btn-primary btn-lg" href="https://symfony.com/doc/2.7/book/index.html">
                        <i class="fa fa-book"></i> Browse Symfony 2.7 LTS Docs
                    </a>
                </p>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="jumbotron">
                <p>To disable this demo site:<br><br>
                        Login to the server and disable the apache site by using the command:<br><br>
                        <code>a2dissite symfony_demo.conf</code>
                </p>
            </div>
        </div>
    </div>
{% endblock %}
