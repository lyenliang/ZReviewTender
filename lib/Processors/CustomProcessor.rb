$lib = File.expand_path('../lib', File.dirname(__FILE__))

require "Models/Review"
require "Models/Processor"
require "Helper"
require "ZLogger"

# Add to config.yml:
#
# processors:
#   - ProcessorTemplate:
#       class: "ProcessorTemplate"
#       parameter1: "value"
#       parameter2: "value"
#       parameter3: "value"
#       ...
#

class ProcessorTemplate < Processor

    def initialize(config, configFilePath, baseExecutePath)
        @config = config
        @configFilePath = configFilePath
        @baseExecutePath = baseExecutePath
        # init Processor
        # get paraemter from config e.g. config["parameter1"]
        # configFilePath: file path of config file (apple.yml/android.yml)
        # baseExecutePath: user excute path
    end

    def processReviews(reviews, platform)
        if reviews.length < 1
            return reviews
        end

        reviews.each do |review|
            puts review.platform
            puts review.title
            puts review.body
            puts review.createdDateTimestamp
        end
        ## do what your want to do with reviews...
        
        ## return result reviews
        return reviews
    end
end
