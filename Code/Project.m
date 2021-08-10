while(1)
   f = input('Enter the sampling frequency: '); 
   if(f>0)
       break;
   end
   fprintf('\nFrequency must be positive number\n\n');
end
while(1)
   Start = input('Enter the starting time interval: ');
   End = input('Enter the ending time interval: ');
   if(Start<End)
       break;
   end
   fprintf('\nStarting time must be less than ending time\n\n');
end
while(1)
   n = input('Enter the number of break points: ');
    if(n>=0)
       break;
    end
   fprintf('\nMust be positive number\n\n');
end
t = linspace(Start, End, ((End-Start)*f));	%Full time interval


i=0;
EndBP=Start;
while i<=n				%loop with iteratons = no. of break points + 1 (Number of signals)
    StartBP = EndBP;	%setting the start of interval with the end of the last one
    if i==n
        EndBP = End;	%last interval(don't have to take it's location from user)
    else
        while(1)
            fprintf('\nEnter location of break point number %d: ', i+1);
            EndBP = input('');	%getting location of each breakpoint (end of interval)
            if(EndBP>StartBP)
                break;
            end
            fprintf('\nShould be greater than start time\n\n');
        end
    end
    while(1)
        fprintf('\nSignal options\na. DC Signal\nb. Ramp Signal\nc. General Order Polynomial\nd. Exponential Signal\ne. Sinusodial Signal\n\n');
        fprintf('\nEnter signal number %d: ', i+1);
        signal = input('', 's');
        if (signal>='a' && signal<='e')
            break;
        end
        fprintf('Wrong Input, Try again\n');
    end
    tn = linspace(StartBP, EndBP, ((EndBP-StartBP)*f)); %Time interval of the current signal
    switch signal
        case 'a' 										%DC signal
            amp = input('Enter the amplitude of the signal: ');
            y = amp * ones(1,((EndBP-StartBP)*f));
        case 'b'										%Ramp signal
            m = input('Enter the slope of the signal: ');
            c = input('Enter the intercept of the signal: ');
            y = m * tn + c;
        case 'c'										%General Polynomial
            amp = input('Enter the amplitude of the signal: ');
            power = input('Enter the power of the signal: ');
            intercept = input('Enter the intercept of the signal: ');
            y = amp * (tn.^power) + intercept;
        case 'd'										%Exponential signal
            amp = input('Enter the amplitude of the signal: ');
            x = input('Enter the exponent of the signal: ');
            y = amp * exp(tn * x);
        case 'e'										%Sinusodial Signal
            amp = input('Enter the amplitude of the signal: ');
            f0 = input('Enter the frequency of the signal: ');
            phase = input('Enter the phase of the signal: ');
            y = amp * sin(2*pi*f0*tn + phase);
    end
    if i==0
        ynew = y;			%initializing the new vector "ynew" to hold the value of the whole signal
    else
        ynew = [ynew y];	%Concatenating "ynew" with y for ever loop iteration
    end
    i=i+1;
end

figure;plot(t,ynew);		%plotting signal
tn = t;
while(1)
    
    while(1)
        fprintf('\nChoose from the following operations\na. Amplitude Scaling\nb. Time reversal\nc. Time Shift\nd. Expanding the signal\ne. Compressing the signal\nf. None\n\n');
        option = input('Enter the desired operation: ', 's');
     if(option>='a' && option <='f')		%Checking for validity of input
          break;
     end
     fprintf('\nWrong Input\n');
    end

    switch option
     case 'a'										%Amplitude Scaling
          scale = input('Enter the scale value: ');
          ynew = ynew * scale;
          figure;plot(tn,ynew);
     case 'b'										%Time Reversal
            tn = -tn;
            figure;plot(tn,ynew);
     case 'c'										%Time Shift
            shift = input('Enter the shift value: ');
            tn= tn-shift;
            figure;plot(tn,ynew);
     case 'd'										%Expanding the signal
            val = input('Enter the expanding value: ');
            tn= tn * val;
            figure;plot(tn,ynew);
     case 'e'										%Compressing the signal
            val = input('Enter the compressing value: ');
            tn= tn / val;
            figure;plot(tn,ynew)
     case 'f'										%None
            break;
    end
end