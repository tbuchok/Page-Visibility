# Pagevisibility
Simple testing of some common questions for Flash advertising published inside a third-party IFRAME.

## Server set up
Most of the results will require that `index.html` be run from a server. 

Python should be installed on your computer and from this directory you can run:

`$ python -m SimpleHTTPServer`

A server should fire up at http://0.0.0.0:8000 and you're off running

## Building the Flash
`PageVisibility.as` is a pure ActionScript 3 file, it can be compiled using the `mxmlc` compiler.

If preferred, it can be set as the document class for an FLA, but it is not necessary.