require 'time'
def timeDiff(input_file)
        content = File.read input_file
        time_HHMM = /(\d{2}:\d{2})$/
        hours = content.scan(time_HHMM)

        start_time = Time.parse(hours.first.to_s)
        end_time = Time.parse(hours.last.to_s)
        
        total_seconds = end_time-start_time
        total_utc = Time.at(total_seconds).utc
        total_str = total_utc.strftime("%H:%M")

        puts input_file+": "+total_str+" hours"
        return total_seconds
end

now = Time.now().utc
sum = Time.now().utc

puts "REPORT"
for arg in ARGV        
        sum +=  timeDiff arg                
end

elapsed_time = (sum-now).floor

elapsed_hours = (elapsed_time/3600).floor
elapsed_minutes = (elapsed_time%3600).floor
puts "total hours: "+elapsed_hours.to_s+":%02d"%[elapsed_minutes.to_s]+" hours"