require "fog/riakcs/version"
require "fog/core"

module Fog
  module RiakCS
    extend Fog::Provider

    autoload :MultipartUtils, File.expand_path('../riakcs/multipart_utils', __FILE__)
    autoload :Provisioning, File.expand_path('../riakcs/provisioning', __FILE__)
    autoload :Utils, File.expand_path('../riakcs/utils', __FILE__)
    autoload :UserUtils, File.expand_path('../riakcs/user_utils', __FILE__)
    autoload :Usage, File.expand_path('../riakcs/usage', __FILE__)

    service(:provisioning, 'Provisioning')
    service(:usage,        'Usage')
  end
end
