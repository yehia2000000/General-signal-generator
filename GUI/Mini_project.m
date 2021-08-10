
function varargout = Mini_project(varargin)

% MINI_PROJECT MATLAB code for Mini_project.fig
%      MINI_PROJECT, by itself, creates a new MINI_PROJECT or raises the existing
%      singleton*.
%
%      H = MINI_PROJECT returns the handle to a new MINI_PROJECT or the handle to
%      the existing singleton*.
%
%      MINI_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINI_PROJECT.M with the given input arguments.
%
%      MINI_PROJECT('Property','Value',...) creates a new MINI_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mini_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mini_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mini_project

% Last Modified by GUIDE v2.5 19-Dec-2020 09:06:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mini_project_OpeningFcn, ...
                   'gui_OutputFcn',  @Mini_project_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Mini_project is made visible.
function Mini_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mini_project (see VARARGIN)
clc
% Choose default command line output for Mini_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mini_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Outputs from this function are returned to the command line.
function varargout = Mini_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in Ramp.
function Ramp_Callback(hObject, eventdata, handles)
% hObject    handle to Ramp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Ramp


% --- Executes on button press in Poly.
function Poly_Callback(hObject, eventdata, handles)
% hObject    handle to Poly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Poly


% --- Executes on button press in Sin.
function Sin_Callback(hObject, eventdata, handles)
% hObject    handle to Sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Sin



function StartSignal_Callback(hObject, eventdata, handles)
% hObject    handle to StartSignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of StartSignal as text
%        str2double(get(hObject,'String')) returns contents of StartSignal as a double


% --- Executes during object creation, after setting all properties.
function StartSignal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StartSignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
movegui('northwest');
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EndSignal_Callback(hObject, eventdata, handles)
% hObject    handle to EndSignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EndSignal as text
%        str2double(get(hObject,'String')) returns contents of EndSignal as a double


% --- Executes during object creation, after setting all properties.
function EndSignal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EndSignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NumBP_Callback(hObject, eventdata, handles)
% hObject    handle to NumBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumBP as text
%        str2double(get(hObject,'String')) returns contents of NumBP as a double


% --- Executes during object creation, after setting all properties.
function NumBP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Type_Signal.
function Type_Signal_Callback(hObject, eventdata, handles)

global Start_Signal;
global End_Signal ;
global Freq ;


Start_Signal = str2num(get(handles.Start,'string'));
End_Signal = str2num(get(handles.End,'string'));
Time_signal = linspace (Start_Signal,End_Signal,(End_Signal-Start_Signal)* Freq);
if get(handles.DC ,'value')==1 
    set(handles.Amp ,'enable' ,'on');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'off');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    
elseif get(handles.Ramp ,'value')==1 
    set(handles.Amp ,'enable' ,'off');
    set(handles.Slop ,'enable' ,'on');
    set(handles.Inter,'enable' ,'on');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    
elseif get(handles.Poly ,'value')==1 
    set(handles.Amp ,'enable' ,'on');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'on');
    set(handles.Pow ,'enable' ,'on');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    
elseif get(handles.Sin ,'value')==1 
    set(handles.Amp ,'enable' ,'on');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'off');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'on');
    set(handles.Phase ,'enable' ,'on');
elseif get(handles.Exp_signal ,'value')==1 
    set(handles.Amp ,'enable' ,'on');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'off');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'on');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    
end
set(handles.Info_signal ,'enable' ,'on');


    

    

% hObject    handle to Type_Signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Amp_Callback(hObject, eventdata, handles)
% hObject    handle to Amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Amp as text
%        str2double(get(hObject,'String')) returns contents of Amp as a double


% --- Executes during object creation, after setting all properties.
function Amp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Slop_Callback(hObject, eventdata, handles)
% hObject    handle to Slop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slop as text
%        str2double(get(hObject,'String')) returns contents of Slop as a double


% --- Executes during object creation, after setting all properties.
function Slop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Inter_Callback(hObject, eventdata, handles)
% hObject    handle to Inter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Inter as text
%        str2double(get(hObject,'String')) returns contents of Inter as a double


% --- Executes during object creation, after setting all properties.
function Inter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Inter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pow_Callback(hObject, eventdata, handles)
% hObject    handle to Pow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pow as text
%        str2double(get(hObject,'String')) returns contents of Pow as a double


% --- Executes during object creation, after setting all properties.
function Pow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Expand_Callback(hObject, eventdata, handles)
% hObject    handle to Expand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Expand as text
%        str2double(get(hObject,'String')) returns contents of Expand as a double


% --- Executes during object creation, after setting all properties.
function Expand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Expand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Freq_sin_Callback(hObject, eventdata, handles)
% hObject    handle to Freq_sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Freq_sin as text
%        str2double(get(hObject,'String')) returns contents of Freq_sin as a double


% --- Executes during object creation, after setting all properties.
function Freq_sin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Freq_sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Phase_Callback(hObject, eventdata, handles)
% hObject    handle to Phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Phase as text
%        str2double(get(hObject,'String')) returns contents of Phase as a double


% --- Executes during object creation, after setting all properties.
function Phase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Info_signal.
function Info_signal_Callback(hObject, eventdata, handles)
% hObject    handle to Info_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amp ;
global slop ;
global intercept ;
global power ;
global exponent;
global phase ;
global freq ;

amp = str2num(get(handles.Amp,'string'));
slop = str2num(get(handles.Slop,'string'));
intercept = str2num(get(handles.Inter,'string'));
power = str2num(get(handles.Pow,'string'));
exponent = str2num(get(handles.Exp,'string'));
freq =  str2num(get(handles.Freq_sin,'string')); 
phase = str2num(get(handles.Phase,'string'));

 set(handles.pushbutton7 ,'enable' ,'on');


   
    






function Start_Callback(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Start as text
%        str2double(get(hObject,'String')) returns contents of Start as a double


% --- Executes during object creation, after setting all properties.
function Start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to End (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of End as text
%        str2double(get(hObject,'String')) returns contents of End as a double


% --- Executes during object creation, after setting all properties.
function End_CreateFcn(hObject, eventdata, handles)
% hObject    handle to End (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Amp_sc_Callback(hObject, eventdata, handles)
% hObject    handle to Amp_sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Amp_sc as text
%        str2double(get(hObject,'String')) returns contents of Amp_sc as a double


% --- Executes during object creation, after setting all properties.
function Amp_sc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amp_sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Time_Rev_Callback(hObject, eventdata, handles)
% hObject    handle to Time_Rev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Time_Rev as text
%        str2double(get(hObject,'String')) returns contents of Time_Rev as a double


% --- Executes during object creation, after setting all properties.
function Time_Rev_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Time_Rev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Time_shift_Callback(hObject, eventdata, handles)
% hObject    handle to Time_shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Time_shift as text
%        str2double(get(hObject,'String')) returns contents of Time_shift as a double


% --- Executes during object creation, after setting all properties.
function Time_shift_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Time_shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to Expand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Expand as text
%        str2double(get(hObject,'String')) returns contents of Expand as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Expand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Comp_Callback(hObject, eventdata, handles)
% hObject    handle to Comp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Comp as text
%        str2double(get(hObject,'String')) returns contents of Comp as a double


% --- Executes during object creation, after setting all properties.
function Comp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Comp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Select_mod.
function Select_mod_Callback(hObject, eventdata, handles)
% hObject    handle to Select_mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global amp_scal ;
global time_rev ;
global time_shit ;
global exp_comp;

amp_scal = str2num(get(handles.Amp_sc,'string'));
time_rev = str2num(get(handles.Time_Rev,'string'));
time_shit = str2num(get(handles.Time_shift,'string'));
exp_comp = str2num(get(handles.Expand,'string'));

set(handles.Plot ,'enable' ,'on');


    set(handles.Amp_sc ,'enable' ,'off');
    set(handles.Time_Rev ,'enable' ,'off');
    set(handles.Time_shift,'enable' ,'off');
  set(handles.Expand ,'enable' ,'off');
  set(handles.Select_mod ,'enable' ,'off');




% --- Executes on button press in Add_signal.
function Add_signal_Callback(hObject, eventdata, handles)
% hObject    handle to Add_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Plot.
function Plot_Callback(hObject, eventdata, handles)
global Time_all ;
global y ; 
global y1 ;
global count1 ;
global amp_scal ;
global time_rev ;
global time_shit ;
global exp_comp;

if count1 >1
 y=amp_scal*[y y1];

else
    y=amp_scal*y;
end


Time_a = exp_comp.*time_rev.*(Time_all-time_shit);
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plot (Time_a,y);
axes(handles.axes1);


% --- Executes on button press in BO.
function BO_Callback(hObject, eventdata, handles)
global count1 ;
global Freq ;
global Start;
global End ;
global Time_all ;
global y ; 

y=0;
count1=0;
Start = str2num(get(handles.StartSignal,'string'));
End = str2num(get(handles.EndSignal,'string'));
Freq = str2num(get(handles.Freq_all,'string'));
Time_all = linspace (Start , End , (End - Start)*Freq);

    set(handles.Start ,'enable' ,'on');
    set(handles.End ,'enable' ,'on');
    set(handles.DC,'enable' ,'on');
    set(handles.Ramp ,'enable' ,'on');
    set(handles.Poly ,'enable' ,'on');
    set(handles.Exp_signal ,'enable' ,'on');
    set(handles.Type_Signal ,'enable' ,'on');
    set(handles.Sin ,'enable' ,'on');
    
    set(handles.StartSignal ,'enable' ,'off');
    set(handles.EndSignal ,'enable' ,'off');
    set(handles.NumBP ,'enable' ,'off');
    set(handles.Freq_all ,'enable' ,'off');
    set(handles.BO ,'enable' ,'off');

% hObject    handle to BO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Freq_all_Callback(hObject, eventdata, handles)
% hObject    handle to Freq_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Freq_all as text
%        str2double(get(hObject,'String')) returns contents of Freq_all as a double


% --- Executes during object creation, after setting all properties.
function Freq_all_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Freq_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in DC.
function DC_Callback(hObject, eventdata, handles)
% hObject    handle to DC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DC


% --- Executes on button press in Exp_signal.
function Exp_signal_Callback(hObject, eventdata, handles)
% hObject    handle to Exp_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Exp_signal


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
global y ; 
global count1 ;
global amp ;
global slop ;
global intercept ;
global power ;
global exponent;
global phase ;
global freq ;
global amp_scal ;
global time_rev ;
global time_shit ;
global exp_comp;
global Start_Signal;
global End_Signal ;
global Freq ;
global y1 ;
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

T=(End_Signal-Start_Signal)*Freq;
Time = linspace (Start_Signal,End_Signal,T);


if count1<=str2num(get(handles.NumBP,'string'))
if count1 >1
y=[y y1];
end 
if count1 == 0 
   if get(handles.DC ,'value')==1 
    y= amp .* ones(1,T);
    
    elseif get(handles.Ramp ,'value')==1 
    y= ((slop*Time)+intercept);
    
    elseif get(handles.Poly ,'value')==1 
    y =amp * (Time.^power)+intercept;

    
    elseif get(handles.Sin ,'value')==1 
       T=(End_Signal-Start_Signal)*Freq;
       Time = linspace (Start_Signal,End_Signal,T);
      
        y=amp*sin((2*pi*Time)+phase);
    
    elseif get(handles.Exp_signal ,'value')==1 
        y= amp.*exp(exponent.*Time);
   end
    if (str2num(get(handles.NumBP,'string'))==0)|(str2num(get(handles.NumBP,'string'))==1)        
        if count1==str2num(get(handles.NumBP,'string'))
        set(handles.pushbutton7 ,'enable' ,'off');
        
        set(handles.Amp_sc ,'enable' ,'on');
        set(handles.Time_Rev ,'enable' ,'on');
        set(handles.Time_shift,'enable' ,'on');
        set(handles.Expand ,'enable' ,'on');
        set(handles.Select_mod ,'enable' ,'on');
        end
        count1 = count1+1;
    else
         
        if count1==str2num(get(handles.NumBP,'string'))
        
        set(handles.pushbutton7 ,'enable' ,'off');
        
         set(handles.Amp_sc ,'enable' ,'on');
        set(handles.Time_Rev ,'enable' ,'on');
        set(handles.Time_shift,'enable' ,'on');
        set(handles.Expand ,'enable' ,'on');
        set(handles.Select_mod ,'enable' ,'on');

        end
         count1 = count1+1;
    end

    
else
    if get(handles.DC ,'value')==1 
    y1= amp * ones(1,T);
    
    elseif get(handles.Ramp ,'value')==1 
    y1=  ((slop*Time)+intercept);
    
    elseif get(handles.Poly ,'value')==1 
    y1 =amp*(Time.^power)+intercept;
    
    elseif get(handles.Sin ,'value')==1 
        T=(End_Signal-Start_Signal)*freq;
        Time = linspace (Start_Signal,End_Signal,T);
        y1=amp*sin((2*pi*Time)+phase);
    
    elseif get(handles.Exp_signal ,'value')==1 
        y1= amp.*exp(exponent.*Time);
    end
    if (str2num(get(handles.NumBP,'string'))==0)|(str2num(get(handles.NumBP,'string'))==1)
        
          if count1==str2num(get(handles.NumBP,'string'))
            set(handles.pushbutton7 ,'enable' ,'off');
            set(handles.Amp_sc ,'enable' ,'on');
            set(handles.Time_Rev ,'enable' ,'on');
            set(handles.Time_shift,'enable' ,'on');
            set(handles.Expand ,'enable' ,'on');
            set(handles.Select_mod ,'enable' ,'on');

          end
        count1 = count1+1;
    else
        if count1==str2num(get(handles.NumBP,'string'))
        set(handles.pushbutton7 ,'enable' ,'off');
        
        set(handles.Amp_sc ,'enable' ,'on');
        set(handles.Time_Rev ,'enable' ,'on');
        set(handles.Time_shift,'enable' ,'on');
        set(handles.Expand ,'enable' ,'on');
        set(handles.Select_mod ,'enable' ,'on');

        end
                 count1 = count1+1;

    end

    
end
else
    
  

end
    set(handles.Amp ,'enable' ,'off');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'off');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    
    set(handles.Info_signal ,'enable' ,'off');




function Inter1_Callback(hObject, eventdata, handles)
% hObject    handle to Inter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Inter1 as text
%        str2double(get(hObject,'String')) returns contents of Inter1 as a double


% --- Executes during object creation, after setting all properties.
function Inter1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Inter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
global count1;
 set(handles.Start ,'enable' ,'off');
    set(handles.End ,'enable' ,'off');
    set(handles.DC,'enable' ,'off');
    set(handles.Ramp ,'enable' ,'off');
    set(handles.Poly ,'enable' ,'off');
    set(handles.Exp_signal ,'enable' ,'off');
    set(handles.Type_Signal ,'enable' ,'off');
    set(handles.Sin ,'enable' ,'off');
    
    set(handles.StartSignal ,'enable' ,'on');
    set(handles.EndSignal ,'enable' ,'on');
    set(handles.NumBP ,'enable' ,'on');
    set(handles.Freq_all ,'enable' ,'on');
    set(handles.BO ,'enable' ,'on');
    
    set(handles.Amp ,'enable' ,'off');
    set(handles.Slop ,'enable' ,'off');
    set(handles.Inter,'enable' ,'off');
    set(handles.Pow ,'enable' ,'off');
    set(handles.Exp ,'enable' ,'off');
    set(handles.Freq_sin ,'enable' ,'off');
    set(handles.Phase ,'enable' ,'off');
    

    set(handles.Info_signal ,'enable' ,'off');
    
     set(handles.Select_mod ,'enable' ,'off');
    set(handles.Amp_sc ,'string' ,'1');
    set(handles.Time_Rev ,'string' ,'1');
    set(handles.Time_shift,'string' ,'0');
    set(handles.Expand ,'string' ,'1');
    
    
    set(handles.Amp_sc ,'enable' ,'off');
    set(handles.Time_Rev ,'enable' ,'off');
    set(handles.Time_shift,'enable' ,'off');
    set(handles.Expand ,'enable' ,'off');
    
    count1 = 0 ; 

   

    


% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Exp_Callback(hObject, eventdata, handles)
% hObject    handle to Exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Exp as text
%        str2double(get(hObject,'String')) returns contents of Exp as a double


% --- Executes during object creation, after setting all properties.
function Exp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
