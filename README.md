# README

* rails new abs_api --skip-test --api --skip-sprockets --skip-helpers

* Gemfile.rb
	gem "graphql"
	gem 'graphiql-rails'

* bundle install

* rails g graphql:install

* rails g model entity name:string cin:string transactions:has_many
* rails g model transaction name:string type:string originator:belongs_to

* rails g graphql:object Entity name:String cin:String transactions:[Transaction]
* rails g graphql:object Transaction name:String type:String originator:Entity

* Update QueryTypes for added models