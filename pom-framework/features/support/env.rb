# Controls the 'global' environment, i.e. make 'watir' functionality available everywhere.
require 'watir'
require 'page-object'

World(PageObject::PageFactory)
