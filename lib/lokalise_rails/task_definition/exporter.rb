module LokaliseRails
    module TaskDefinition
        class Exporter < Base
            class << self
                def export!
                    $stdout.print 'Task complete!'
                    true
                end
            end
        end
    end
end