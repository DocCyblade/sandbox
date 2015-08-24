#!/bin/bash

cp text2 text2.mod

# update default twig template (Give it a TKL Branding)
TEMPLATE=text2.mod



#  update welcome template, part 1 - Whats next
sed -i "s|<h2>What's next?</h2>|<h2>What's next?</h2><p>This welcome page is being served via app_dev.php.</p><p>You should secure it by specifying your IP address in <i>$APPDEV</i></p><p>When ready for production, update <i>$HTACCESS</i> to specify app.php instead.</p><p>Be sure to check out the <a href=""{{ app.request.host }}"">Symfony Demo Application</a></p><p><i>Note: The database configuration is already setup for you, enjoy!</i></p>|" $TEMPLATE
