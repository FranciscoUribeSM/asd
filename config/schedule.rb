# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#

set :environment, :development              #Configuración del entorno de desarrollo
set :output, "#{path}/log/cron_log.logs"    #Ruta de la salida en un archivo llamado cron_logs.logs
env :GEM_PATH, ENV['GEM_PATH']              

every 2.minutes do
    runner "User.daily_bonus()"
end

# Learn more: http://github.com/javan/whenever
