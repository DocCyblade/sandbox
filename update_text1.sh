#!/bin/bash


WEBROOT=/var/www/symfony/web
APPDEV=$WEBROOT/app_dev.php
HTACCESS=$WEBROOT/.htaccess

cp text1 text1.mod

# update default twig template (Give it a TKL Branding)
TEMPLATE=text1.mod


#                <h2>What do I do now?</h2>\n\
#                        <p>This welcome page is being served via app_dev.php.</p> \n\
#                        <p>You should secure it by specifying your IP address in <i>$APPDEV</i></p> \n\
#                        <p>When ready for production, update <i>$HTACCESS</i> to specify app.php instead.</p> \n\
#                        <p>Be sure to check out the <a href='{{ app.request.host }}:8000'>Symfony Demo Application</a></p> \n\
#                        <p><i>Note: The database configuration is already setup for you, enjoy!</i></p> \n\


sed -i "s|<h2>What's next?</h2>| \n\
                <h2>What do I do now?</h2>\n\
                        <p>This welcome page is being served via app_dev.php.</p> \n\
                        <p>You should secure it by specifying your IP address in <i>$APPDEV</i></p> \n\
                        <p>When ready for production, update <i>$HTACCESS</i> to specify app.php instead.</p> \n\
                        <p>Be sure to check out the <a href='{{ app.request.host }}:8000'>Symfony Demo Application</a></p> \n\
                        <p><i>Note: The database configuration is already setup for you, enjoy!</i></p> \n\
|" $TEMPLATE




