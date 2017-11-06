class SongsController < ApplicationController
  use Rack::Flash
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
end
