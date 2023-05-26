#ogive_02
#erik satie arr VVOLF

use_bpm 8

notes1 = [67,62,64,64,59,62,61,59,57,59,56,57,54,52,54,57,59,62,61,59,59,57]
notes2 = [ 5, 3, 5, 5, 4, 5, 4, 4, 3, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5]
notes3 = [ 8, 8, 9, 9, 9, 8, 7, 9, 7, 9, 7, 8, 9, 8, 9, 8, 9, 8, 7, 9, 9, 8]
notes4 = [ 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,12, 7, 0, 0, 0]
notes5 = [12, 3,12,12, 4,12, 7, 4, 7,12, 7,12, 4,12, 4,12,16,24,19,12,16,12]

times = [2,2,2,3,1,1,1,1,2,4,1,1,2,4,1,1,1,1,2,1,2,4]

live_loop :ogive1 do
  
  i=0
  
  use_synth :sine
  
  a = 0.2
  at = 0.25
  re = 0.25
  
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
    
    play [notes1[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes4[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes5[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  i=0
  
  notes1.size.times do
    
    a= 0.2
    
    play [notes1[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] -12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    play [notes1[i]+24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i] + 24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i] + 24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] + 12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  notes1.size.times do
    
    a= 0.2
    
    play [notes1[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes4[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes5[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  i=0
  
  notes1.size.times do
    
    a= 0.2
    
    play [notes1[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] -12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    play [notes1[i]+24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i] + 24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i] + 24], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] + 12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
end

live_loop :drums2 do
  s = 0.5
  
  sample :bd_ada
  sample :bd_boom
  sleep s/7
  sample :bd_ada
  sample :bd_boom
  sleep s/7
  sample :sn_zome, rate: 8
  sleep 2*s/7
  
  4.times do
    sample :sn_zome, rate: 16, pan: rrand(-0.25,0.25), amp: [0,1].choose
    sleep 0.25*s/7
  end
  
  sample :bd_ada
  sample :bd_boom
  sleep 1.5*s/7
  sample :bd_ada
  sample :bd_boom
  sleep 0.5*s/7
  
end

live_loop :hats do
  sample :elec_blip, rate: [8,16,32].choose, pan: rrand(-1,1), amp: [0.5,1].choose
  sample :elec_blip, rate: [8,16,32].choose, pan: rrand(-1,1), amp: [0.5,1].choose
  sleep 0.125/7
end