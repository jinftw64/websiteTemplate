#! /usr/bin/bash

projectName=$1

if [[ -d $projectName ]]; then
	echo "This directory does not exist in the current directory."
else
	mkdir "$projectName"
	mkdir "$projectName"/css
	mkdir "$projectName"/scripts
	mkdir "$projectName"/fonts
	mkdir "$projectName"/images

	touch "$projectName"/index.html
	touch "$projectName"/css/style.css
	touch "$projectName"/scripts/script.js

	indexFile="$projectName"/index.html
	cssFile="$projectName"/css/style.css

	cat <<EOF >"$indexFile"
<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/style.css" rel="stylesheet">
    <script src="./scripts/script.js" defer></script>
  </head>
  <body>
  
  </body>
</html>
EOF

	cat <<EOF >"$cssFile"
/* https://www.joshwcomeau.com/css/custom-css-reset/ */

/*
  1. Use a more-intuitive box-sizing model.
*/
*, *::before, *::after {
  box-sizing: border-box;
}
/*
  2. Remove default margin
*/
* {
  margin: 0;
}
/*
  Typographic tweaks!
  3. Add accessible line-height
  4. Improve text rendering
*/
body {
  line-height: 1.5;
  -webkit-font-smoothing: antialiased;
}
/*
  5. Improve media defaults
*/
img, picture, video, canvas, svg {
  display: block;
  max-width: 100%;
}
/*
  6. Remove built-in form typography styles
*/
input, button, textarea, select {
  font: inherit;
}
/*
  7. Avoid text overflows
*/
p, h1, h2, h3, h4, h5, h6 {
  overflow-wrap: break-word;
}
/*
  8. Create a root stacking context
*/
#root, #__next {
  isolation: isolate;
}


/* System font stack */

body {
  font-family: system-ui, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

/* my code begins here */
EOF

fi
