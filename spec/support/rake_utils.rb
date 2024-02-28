module RakeUtils
    def import_executor
        -> { Rake::Task['lokalise_rails:import'].execute }
    end

    def export_executor
        -> { Rake::Task['lokalise_rails:export'].execute }
    end
end