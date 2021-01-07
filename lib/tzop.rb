require_relative 'utils'

module TimezoneOperation

  class TZOP

    class InvalidTimeZone < StandardError
    end

    class InvalidTime < StandardError
    end

    def initialize(tz1, tz2 = nil)
      tz1_name = Utils.tzinfo_zone_name( tz1 )
      raise_invalid_timezone tz1 if tz1_name.nil?
      @tz1 = Utils.initialize_tzinfo_zone( tz1_name )

      if tz2.nil?
        @tz2 = Utils.get_local_timezone
      else
        tz2_name = Utils.tzinfo_zone_name( tz2 )
        raise_invalid_timezone tz2 if tz2_name.nil?

        @tz2 = Utils.initialize_tzinfo_zone( tz2_name )
      end
    end

    def available_zones
      Utils.zone_mapping_hash
    end

    def transition(t)
      time = Utils.parse_time t
      raise_invalid_time time if time.nil?

      utc_time = @tz1.local_to_utc time
      tz2_time = @tz2.utc_to_local utc_time
    end

    # Returns the current time in the timezone as a Time.
    def now
      @tz1.now
    end

    # Returns the current date in the timezone as a Date
    def today
      @tz1.now.to_date
    end

    def raise_invalid_timezone(timezone_name)
      raise InvalidTimeZone, "#{timezone_name} is not valid. Please check with #available_zones."
    end

    def raise_invalid_time(time)
      raise InvalidTime, "#{time} is not valid time."
    end

  end

end