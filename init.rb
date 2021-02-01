require 'redmine'
require 'redmine_openid_connect/application_controller_patch'
require 'redmine_openid_connect/account_controller_patch'
require 'redmine_openid_connect/hooks'

Redmine::Plugin.register :redmine_openid_connect do
  name 'Redmine Openid Connect plugin'
  author 'Alfonso Juan Dillera / Markus M. May / Piotr Dobrowolski'
  description 'OpenID Connect implementation for Redmine'
  version '0.9.4-hswaw'
  url 'https://github.com/Informatic/redmine_openid_connect'
  author_url 'http://github.com/Informatic'
end

Rails.configuration.to_prepare do
  ApplicationController.prepend(RedmineOpenidConnect::ApplicationControllerPatch)
  AccountController.prepend(RedmineOpenidConnect::AccountControllerPatch)
end
