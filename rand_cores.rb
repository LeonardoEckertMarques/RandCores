require 'securerandom'

class RandCores
  def initialize
	@hex = '#'
	@rgb = []
	@cor = []
  end
  def rgb(qntCores)
    while qntCores > 0 do
	@hex += SecureRandom.hex(3)
	p @rgb = @hex
	@hex = '#'
	for i in 1..6
	  case
	  when @rgb[i] == "a"
	       @cor[i] = 10
	  when @rgb[i] == "b"
	       @cor[i] = 11
	  when @rgb[i] == "c"
	       @cor[i] = 12
	  when @rgb[i] == "d"
	       @cor[i] = 13
	  when @rgb[i] == "e"
	       @cor[i] = 14
	  when @rgb[i] == "f"
	       @cor[i] = 15
	   else
	       @cor[i] = @rgb[i]
	   end
	end
	for i in 1..6
	  if i %2==1
	    p @cor[i].to_i * 16 + @cor[i+1].to_i
	  end
	end
	qntCores -= 1
      end
    end
end
