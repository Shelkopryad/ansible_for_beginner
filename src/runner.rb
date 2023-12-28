def sum(*args)
  args.inject(0) {|s, x| s + x}
end

puts sum(*ARGV.map(&:to_i))
