live_loop :guit do
  with_fx :echo, phase: 0.5 do
  	play :a4, mix: 0.2 
  	play :c4, mix: 0.2 
  	play :e4, mix: 0.2 
  	sleep 2
  	play :c4, mix: 0.2 
  	play :e4, mix: 0.2 
  	play :g4, mix: 0.2 
  	sleep 2
  	play :e4, mix: 0.2 
  	play :b4, mix: 0.2 
  	play :d4, mix: 0.2 
  	sleep 2
  	play :d4, mix: 0.2 
  	play :f4, mix: 0.2 
  	play :a4, mix: 0.2 
  	play :g4, mix: 0.2 
  	sleep 2
  end
end

live_loop :baseline do
	sync :guit
	with_fx :reverb do
		2.times do
			play :a4, mix: 0.4
			sleep 0.5
			play :e3, mix: 0.4
			sleep 0.5
			play :c3, mix: 0.4
			sleep 0.5
			play :g3, mix: 0.4
			sleep 0.5
			play :e3, mix: 0.4
			sleep 0.5
			play :f3, mix: 0.4
			sleep 0.5
			play :g3, mix: 0.4
			sleep 0.5
			play :g#3, mix: 0.4
			sleep 0.5
		end
	end
end

live_loop :beats do
  sync :guit
  with_fx :reverb, phase: 0.5 do
	  sample :bd_haus, mix:0.5
	  sleep 1.25
	  sample :bd_haus, mix:0.3
	  sleep 0.25
	  sample :bd_haus, mix:0.5
	  sleep 0.25
	  sample :bd_haus, mix:0.3
	  sleep 0.25
	  sample :bd_haus, mix:0.5
	  sleep 1
	  sample :bd_haus, mix:0.3
	  sleep 1
	  sample :bd_haus, mix:0.4
	  sleep 1.5
	  sample :bd_haus, mix:0.5
	  sleep 0.5
	  sample :bd_haus, mix:0.3
	  sleep 0.5
	  sample :bd_haus, mix:0.4
	  sleep 1
	  sample :bd_haus, mix:0.2
	  sleep 0.5
	end
end


live_loop :melody do
	sync :guit
  play rrand(50, 95)
  sleep 0.5
end 

# end