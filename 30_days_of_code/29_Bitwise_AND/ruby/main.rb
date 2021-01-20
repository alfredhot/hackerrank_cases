#!/bin/ruby

require 'json'
require 'stringio'

t = gets.to_i

t.times do |t_itr|
    nk = gets.rstrip.split

    n = nk[0].to_i

    k = nk[1].to_i

    max = nil
    b = 0
    m = k - 1
    while m >= 1 and max.nil? do 
      m_binary = m.to_s(2)
      zero_index = m_binary.rindex("0")
      if zero_index.nil?
        m_binary = "1"+m_binary
      else
        m_binary[zero_index] = "1"
      end
      
    b = m_binary.to_i(base=2)
	max = m if n >= b
      m = m - 1
    end
    
    puts max.nil? ? 0 : max
    
end

