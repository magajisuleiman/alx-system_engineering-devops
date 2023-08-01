#!/usr/bin/env ruby
# Match a 10 digit phone number 4155049898 without spaces or dashes

puts ARGV[0].scan(/^\d{10}$/).join
