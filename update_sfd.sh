#!/bin/bash

cp homepage.twig homepage.twig.mod

# Tweak demo welcome page
DEMO_TEMPLATE=homepage.twig.mod

# remove last block so we can add to it
sed -i "$ s|{% endblock %}||" $DEMO_TEMPLATE

# add to the twig template
cat >> $DEMO_TEMPLATE <<EOF
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
EOF

