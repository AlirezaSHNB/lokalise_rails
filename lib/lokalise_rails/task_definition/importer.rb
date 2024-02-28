module LokaliseRails
    module TaskDefinition
        class Importer < Base
            class << self
                def import!
                    $stdout.print 'Task complete!'
                    true
                end
            end
        end
    end
end