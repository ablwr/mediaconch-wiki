# wiki

This is a prototype for the MediaConch wiki for stable URIs that summarize issues for failed validation.

Auto-generate and populate from EBMLRegistry using ebml_to_md.rb.

Using ruby-version ruby-1.9.3-p484 but any should be fine. Will locally need to install the gems stated in the script: gollum and gollum-lib. gollum-lib should install nokogiri, but it may need installation as well.

Start up local version of gollum by running `gollum` in the console and navigating to http://localhost:4567/ !

All files can be seen in http://localhost:4567/pages