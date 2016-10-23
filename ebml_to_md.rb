#!/usr/bin/env ruby

require 'rubygems'
require 'gollum'
require 'gollum-lib'
require 'nokogiri'

wiki = Gollum::Wiki.new('')
file = File.open("EBMLRegistry.xml", "r")
doc = Nokogiri::XML(file)

doc.search('/registry/rule').each do |el|
  title = el.at('@icid').inner_text
  content = ""
  content << "# #{title}\n\n"
  content << "Name: " + el.at('name').inner_text + "\n\n" if el.at('name')
  content << "Authority: " + el.at('authority').inner_text + "\n\n" if el.at('authority')
  content << "Target format: " + el.at('target_format').inner_text + "\n\n" if el.at('target_format')
  content << "Target format part: " + el.at('target_format_part').inner_text + "\n\n" if el.at('target_format_part')
  content << "Citation: " + el.at('citation').inner_text + "\n\n" if el.at('citation')
  content << "Severity: " + el.at('severity').inner_text + "\n\n" if el.at('severity')
  content << "Definition: " + el.at('definition').inner_text + "\n\n" if el.at('definition')
  content << "Reference file: " + el.at('reference_file').inner_text + "\n\n" if el.at('reference_file')
  content << "Manager: " + el.at('manager').inner_text + "\n\n" if el.at('manager')
  content << "Note: " + el.at('note').inner_text + "\n\n" if el.at('note')

  commit = { :message => "Import EBML ICID #{title} into Gollum",
             :name => 'AB',
             :email => 'ashley.blewer@gmail.com' }
  begin
    puts "Writing page #{title}"
    page = wiki.page(title)
    wiki.update_page(page, title, :markdown, content, commit)
  rescue Gollum::DuplicatePageError => e
    puts "Updating page #{title}"
    page = wiki.page(title)
    wiki.update_page(page, title, :markdown, content, commit)
  end
end

file.close