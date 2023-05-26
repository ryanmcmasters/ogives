use_bpm 10

notes1 = [64,59,59,55,57,57,54,55,52,50,50,64,59,59,55,57,57,53,55,57,60,60,62]
notes2 = [59,55,54,52,52,52,50,50,48,45,45,59,55,54,52,52,52,50,50,53,57,57,57]
notes3 = [55,50,50,48,48,48,47,47,43,42,42,55,50,50,48,48,48,46,46,50,52,52,53]
notes4 = [59,59,59,55,57,57,54,55,52,50,50,59,59,59,55,57,57,53,55,57,60,60,57]
notes5 = [52,55,47,52,45,45,47,43,45,36,36,52,55,47,52,45,45,46,51,50,45,45,50]

times = [1,1,1,0.5,0.5,2,0.5,0.5,0.5,0.5,2,1,1,1,0.5,0.5,2,0.5,0.5,0.5,0.5,2,4]

live_loop :ogive1 do
  
  i=0
  
  use_synth :tri
  
  a = 0.2
  at = 1
  re = 1
  
  notes1.size.times do
    a= 0.5
    play notes1[i]-12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes1[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i = i+1
    
  end
  
  i = 0
  
  notes1.size.times do
    
    a= 0.2
    
    play notes1[i]-12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes2[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes3[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes1[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    play notes1[i]+12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes2[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes3[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes1[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  i = 0
  
  notes1.size.times do
    
    a=0.3
    
    play notes1[i]+12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes2[i]+12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes3[i]+12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes4[i], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes5[i], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  i=0
  
  
  notes1.size.times do
    a=0.2
    play notes1[i]-12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes2[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes3[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes1[i]- 0, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    play notes1[i]+12, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes2[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes3[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play notes1[i]+24, attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
end


live_loop :drums2 do
  sample :bd_ada
  sleep 0.1
  sample :sn_zome, rate: 8
  sleep 0.05
  sample :bd_ada
  sleep 0.1
  
end

live_loop :hats do
  sample :elec_blip, rate: [8,16,32].choose
  sleep 0.025
end







