#ogive_03
#erik satie arr VVOLF

use_bpm 9

notes1 = [62,64,65,62,60,57,58,55,57,60,62,60,57,58,60,62,64,62,60,62]
notes2 = [ 5, 4, 5, 4, 5, 4, 5, 4, 4, 5, 4, 5, 4, 5, 3, 5, 4, 5, 3, 5]
notes3 = [ 9, 7, 8, 9, 8, 9, 8, 9, 7, 8, 9, 8, 9, 8, 8, 9, 7, 9, 8, 9]
notes4 = [ 5, 4, 8, 9, 5, 0, 5, 0, 0, 5, 7, 5, 0, 5, 0, 5, 4, 5, 0, 5]
notes5 = [12,19,24,16,12,16,12,16, 7,12,19,12,12,12,15,12,19,12,15,12]

times = [1,1,2,1,2,0.5,0.5,0.5,0.5,2,1,2,0.5,0.5,0.5,0.5,2,1,1,4]

live_loop :ogive1 do
  
  i = 0
  
  use_synth :square
  
  a = 0.2
  at = 0.5
  re = 0.5
  
  notes1.size.times do
    a= 0.5
    play notes1[i]-12, attack: at, sustain: times[i]+0.25, release: re, pan: rrand(-1,1), amp: a
    play notes1[i]- 0, attack: at, sustain: times[i]+0.25, release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i = i+1
    
  end
  
  i = 0
  
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
  
  i = 0
  
  notes1.size.times do
    
    a=0.5
    
    play [notes1[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes2[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes3[i]+12], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes4[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    play [notes1[i] - notes5[i]], attack: at, sustain: times[i], release: re, pan: rrand(-1,1), amp: a
    
    sleep times[i]
    i=i+1
    
  end
  
  i = 0
  
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
  
  3.times do
    sample :bd_ada
    sample :bd_boom
    sleep 0.25*s/9
  end
  
  sleep 2.25*s/9
  sample :sn_zome, rate: 8
  sleep 2*s/9
  sample :sn_zome, rate: 8
  sleep 2*s/9
  sample :bd_ada
  sample :bd_boom
  
  sleep 1*s/9
  4.times do
    sample :sn_zome, rate: 16, amp: [0.25,0.5,1].choose
    sleep 0.25*s/9
  end
  
end

live_loop :hats do
  
  sample :elec_blip, rate: [0.25,0.5,2,3,4,7,8,16,32].choose, pan: rrand(-1,1), amp: [0.5,1].choose
  sample :elec_blip, rate: [0.25,0.5,2,3,4,7,8,16,32].choose, pan: rrand(-1,1), amp: [0.5,1].choose
  sleep 0.125/9
  
end