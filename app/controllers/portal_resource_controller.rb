class PortalResourceController < ApplicationController
  access_rule 'registered || admin', :only => [:index, :show, :new, :edit, :create, :update, :destroy ]
end