function senal = grabacion(t,Fs,Ch,num_bits)
    %micros = audiodevinfo.input.Name;
    %micro = find(micros == 'Microphone (2- Realtek High Definition Audio) (Windows DirectSound)');
    recObj = audiorecorder(Fs,num_bits,Ch);
    disp('Start Speaking');
    recordblocking(recObj,t);
    disp('End of Recording');
    senal = getaudiodata(recObj);
end