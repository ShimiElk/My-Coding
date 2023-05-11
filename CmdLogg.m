function CmdLogg(Name)
arguments
        Name char{mustBeText} = 'log'

end

dfile=[Name,'_',datestr(now,'yyyy-mm-dd_HH-MM-SS'),'.txt'];
diary(dfile);
disp("Log file name is:  "+ dfile)
 
