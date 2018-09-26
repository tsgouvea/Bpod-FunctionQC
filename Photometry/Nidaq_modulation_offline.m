function Modulated_LED=Nidaq_modulation_offline(amp,freq,duration,sample_rate)
%Generates a sin wave for LED amplitude modulation.
% global nidaq TaskParameters

Modulated_LED=(amp/2)*ones(duration*sample_rate,1);
DeltaT=1/sample_rate;
Time=0:DeltaT:(duration-DeltaT);
Modulated_LED=amp*(sin(2*pi*freq*Time)+1)/2;
Modulated_LED=Modulated_LED';
end
