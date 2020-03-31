function varargout = Assignment3GUI(varargin)
% ASSIGNMENT3GUI MATLAB code for Assignment3GUI.fig
%      ASSIGNMENT3GUI, by itself, creates a new ASSIGNMENT3GUI or raises the existing
%      singleton*.
%
%      H = ASSIGNMENT3GUI returns the handle to a new ASSIGNMENT3GUI or the handle to
%      the existing singleton*.
%
%      ASSIGNMENT3GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASSIGNMENT3GUI.M with the given input arguments.
%
%      ASSIGNMENT3GUI('Property','Value',...) creates a new ASSIGNMENT3GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Assignment3GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Assignment3GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Assignment3GUI

% Last Modified by GUIDE v2.5 07-Apr-2018 13:28:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Assignment3GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Assignment3GUI_OutputFcn, ...
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



% --- Executes just before Assignment3GUI is made visible.
function Assignment3GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Assignment3GUI (see VARARGIN)

% Choose default command line output for Assignment3GUI
handles.output = hObject;
%t1-t9 are variables that store the states of the push buttons
handles.t1 = 0;
handles.t2 = 0;
handles.t3 = 0;
handles.t4 = 0;
handles.t5 = 0;
handles.t6 = 0;
handles.t7 = 0;
handles.t8 = 0;
handles.t9 = 0;

handles.x = [9; 9; 9; 9; 0]; %9 refers to invalid pattern, start off with all invalid
handles.count = 0; %counter that counts consecutive failures

%x input - a vector of 5x1
%1st 4 values are inputs from cards in time sequence
%last value is the time

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes Assignment3GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Assignment3GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in t1.
function t1_Callback(hObject, eventdata, handles)
t1 = get(hObject, 'Value');
handles.t1 = t1;
guidata(hObject, handles);
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of t1


% --- Executes on button press in t2.
function t2_Callback(hObject, eventdata, handles)
t2 = get(hObject, 'Value');
handles.t2 = t2;
guidata(hObject, handles);
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of t2


% --- Executes on button press in t3.
function t3_Callback(hObject, eventdata, handles)
t3 = get(hObject, 'Value');
handles.t3 = t3;
guidata(hObject, handles);
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t3


% --- Executes on button press in t4.
function t4_Callback(hObject, eventdata, handles)
t4 = get(hObject, 'Value');
handles.t4 = t4;
guidata(hObject, handles);
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t4


% --- Executes on button press in t5.
function t5_Callback(hObject, eventdata, handles)
t5 = get(hObject, 'Value');
handles.t5 = t5;
guidata(hObject, handles);
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t5


% --- Executes on button press in t6.
function t6_Callback(hObject, eventdata, handles)
t6 = get(hObject, 'Value');
handles.t6 = t6;
guidata(hObject, handles);
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t6


% --- Executes on button press in t7.
function t7_Callback(hObject, eventdata, handles)
t7 = get(hObject, 'Value');
handles.t7 = t7;
guidata(hObject, handles);
% hObject    handle to t7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t7


% --- Executes on button press in t8.
function t8_Callback(hObject, eventdata, handles)
t8 = get(hObject, 'Value');
handles.t8 = t8;
guidata(hObject, handles);
% hObject    handle to t8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of t8


% --- Executes on button press in t9.
function t9_Callback(hObject, eventdata, handles)
t9 = get(hObject, 'Value');
handles.t9 = t9;
guidata(hObject, handles);
% hObject    handle to t9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.metricdata.t9, 'String', t9);
% Hint: get(hObject,'Value') returns toggle state of t9


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
%restoring the push button states
t1 = handles.t1;
t2 = handles.t2;
t3 = handles.t3;
t4 = handles.t4;
t5 = handles.t5;
t6 = handles.t6;
t7 = handles.t7;
t8 = handles.t8;
t9 = handles.t9;

%pre-trained neural network for converting input values to unique codes for
%each cards
w = [1 2 4 8 16 32 64 128 256]; %weight
b = 0; %bias
p = [t1; t2; t3; t4; t5; t6; t7; t8; t9]; %input
val = w*p + b;
handles.val = val;

%prediction
x = handles.x;
count = handles.count;

%neural network for card identification with activation layer
%f(val) = [hardlim(val-b1) - hardlim(val-b2)]
c1 = [hardlim(val-96.5)-hardlim(val-97.5)];
c2 = [hardlim(val-321.5)-hardlim(val-322.5)];
c3 = [hardlim(val-49.5)-hardlim(val-50.5)];
c4 = [hardlim(val-273.5)-hardlim(val-274.5)];
c5 = [hardlim(val-83.5)-hardlim(val-84.5)];
c6 = [hardlim(val-272.5)-hardlim(val-273.5)];
c7 = [hardlim(val-261.5)-hardlim(val-262.5)];
c8 = [hardlim(val-267.5)-hardlim(val-268.5)];

if(c1==1)
    a = 1;
elseif(c2==1)
    a = 2;
elseif(c3==1)
    a = 3;
elseif(c4==1)
    a = 4;
elseif(c5==1)
    a = 5;
elseif(c6==1)
    a = 6;
elseif(c7==1)
    a = 7;
elseif(c8==1)
    a = 8;
else
    a = 9;
end
  
%update input with the latest card
x(2:4) = x(1:3);
x(1) = a;
x(5) = x(5) + 1; %simple counter

%neural network as a comparator - pre-trained
y_c1 = hardlim([1 -1]*x(1:2) - 0.5);
y_c2 = hardlim([1 -1]*x(2:3) - 0.5);
y_c3 = hardlim([1 -1]*x(3:4) - 0.5); 

%neural network as a modulo operator
binary = fliplr(de2bi(x(5)));
sz = size(binary);
w = [zeros(1,sz(2)-2) 1 1];
b = -0.5;
if(sz<2)
    binary = [1 binary];
end
y_m1 = ~hardlim(w*binary' + b);

%final neural network with ANDs - pre-trained
y_a1 = hardlim([1 1 1]*[y_c1; y_c2; y_c3] - 2.5); %checks if the cards are in ascending order
y_a2 = hardlim([1 1]*[y_a1; y_m1] - 1.5); %checks output after 4 cards
y = y_a2;

%GUI made interactive for the user
if(mod(x(5),4)==1)
    handles.string = '1st card entered';
elseif(mod(x(5),4)==2)
    handles.string = '2nd card entered';
elseif(mod(x(5),4)==3)
    handles.string = '3rd card entered';
end

if(y==0 && y_m1==1)
    count = count + 1; %simple counter to lock the system.
    if(count==3)
        handles.string = 'Lock';
        mbox = msgbox('You have locked your system. Now everything is reset for the purpose of testing the system by the user.', 'Alert');
        count = 0;
    else
        handles.string = 'No boost';
    end
end
if(y==1)
    count = 0;
    handles.string = 'Boost';
end

handles.x = x;
handles.count = count;
edit1_Callback(hObject, eventdata, handles);
guidata(hObject, handles);

% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.val, 'String', val);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
set(handles.edit1, 'String', handles.string);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
