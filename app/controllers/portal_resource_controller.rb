class PortalResourceController < ApplicationController
  access_rule 'registered', :only => [:index, :show, :new, :edit, :create, :update, :destroy ]
end