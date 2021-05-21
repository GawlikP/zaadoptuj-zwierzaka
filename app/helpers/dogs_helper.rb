module DogsHelper
  def humanize seconds
    i =0;
    t = " "
    days = 0
    weeks = 0
     ActiveSupport::Duration.build(seconds).parts.map do |key, value|
       next if "#{key}" == "seconds"
       next if "#{key}" == "minutes"
       next if "#{key}" == "hours"
       if "#{key}" == "days" then days =  value; next end
         if "#{key}" == "weeks" then t = "#{t} #{value * 7 + days} days"
         else
           t = "#{t} #{value} #{key}"
          end

      end

      return t
  end



end
