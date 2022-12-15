function varargout = simulator_first_iter(varargin)
% SIMULATOR_FIRST_ITER MATLAB code for simulator_first_iter.fig
%      SIMULATOR_FIRST_ITER, by itself, creates a new SIMULATOR_FIRST_ITER or raises the existing
%      singleton*.
%
%      H = SIMULATOR_FIRST_ITER returns the handle to a new SIMULATOR_FIRST_ITER or the handle to
%      the existing singleton*.
%
%      SIMULATOR_FIRST_ITER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMULATOR_FIRST_ITER.M with the given input arguments.
%
%      SIMULATOR_FIRST_ITER('Property','Value',...) creates a new SIMULATOR_FIRST_ITER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simulator_first_iter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simulator_first_iter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simulator_first_iter

% Last Modified by GUIDE v2.5 15-Dec-2022 21:45:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simulator_first_iter_OpeningFcn, ...
                   'gui_OutputFcn',  @simulator_first_iter_OutputFcn, ...
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


% --- Executes just before simulator_first_iter is made visible.
function simulator_first_iter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simulator_first_iter (see VARARGIN)

% Choose default command line output for simulator_first_iter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simulator_first_iter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simulator_first_iter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on slider movement.
function alpha_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

alpha = get(hObject,'Value');
set(handles.alphaval,'String',num2str(alpha));
setappdata(0,'a_val',alpha);

% --- Executes during object creation, after setting all properties.
function alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function N_Callback(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

N = get(hObject,'Value');
if (N==1)
setappdata(0,'N_val',300);
elseif (N==2)
setappdata(0,'N_val',600);
elseif (N==3)
setappdata(0,'N_val',1200);
elseif (N==4)
setappdata(0,'N_val',1800);
elseif (N==5)
setappdata(0,'N_val',2400);
end

% --- Executes during object creation, after setting all properties.
function N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes during object creation, after setting all properties.
% function beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to betamin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minwl_Callback(hObject, eventdata, handles)
% hObject    handle to minwl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minwl as text
%        str2double(get(hObject,'String')) returns contents of minwl as a double
minwl1=str2double(get(hObject,'String'));
setappdata(0,'minwl_val',minwl1);

% --- Executes during object creation, after setting all properties.
function minwl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minwl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxwl_Callback(hObject, eventdata, handles)
% hObject    handle to maxwl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxwl as text
%        str2double(get(hObject,'String')) returns contents of maxwl as a double
maxwl1=str2double(get(hObject,'String'));
setappdata(0,'maxwl_val',maxwl1);

% --- Executes during object creation, after setting all properties.
function maxwl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxwl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double
mvar = get(hObject,'String');
setappdata(0,'m_val',str2double(mvar));


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function betamin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to betamin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function specres_Callback(hObject, eventdata, handles)
% hObject    handle to specres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of specres as text
%        str2double(get(hObject,'String')) returns contents of specres as a double
sr = get(hObject,'String');
setappdata(0,'spec_res',str2double(sr))

% --- Executes during object creation, after setting all properties.
function specres_CreateFcn(hObject, eventdata, handles)
% hObject    handle to specres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
f1valtxt=get(hObject,'Value');
setappdata(0,'f1_val',f1valtxt)

% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function f2_Callback(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function f2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes during object creation, after setting all properties.
function idealN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to idealN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function idealalpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to idealalpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function psize_Callback(hObject, eventdata, handles)
% hObject    handle to psize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of psize as text
%        str2double(get(hObject,'String')) returns contents of psize as a double
pixel1 = get(hObject,'Value');
if (pixel1==1)
setappdata(0,'p_size',25);
elseif (pixel1==2)
setappdata(0,'p_size',50);
elseif (pixel1==3)
setappdata(0,'p_size',100);
end
% --- Executes during object creation, after setting all properties.
function psize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to psize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function blazew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blazew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function idealW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to idealW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in N.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns N contents as cell array
%        contents{get(hObject,'Value')} returns selected item from N


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function blazeangle_Callback(hObject, eventdata, handles)
% hObject    handle to blazeangle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of blazeangle as text
%        str2double(get(hObject,'String')) returns contents of blazeangle as a double
ba = get(hObject,'String');
setappdata(0,'blaze_angle',str2double(ba))

% --- Executes during object creation, after setting all properties.
function blazeangle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blazeangle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'a_val');
n = getappdata(0,'N_val');
m_dupe = getappdata(0,'m_val');
lmin = getappdata(0,'minwl_val');
lmax = getappdata(0,'maxwl_val');
lblaze=(lmin+lmax)/2;
betamin1 = asind((m_dupe)*lmin*n*(10^-6) - sind(a));
betamax1 = asind((m_dupe)*lmax*n*(10^-6) - sind(a));
sens=m_dupe*n/sqrt(1-(n*m_dupe*lmin*(10^-6) - sind(a))^2);
specres1 = getappdata(0,'spec_res');
psize1 = getappdata(0,'p_size');
f2val1=(1.5)*(psize1)*(10^-6)/tan(sens*specres1*(10^-6)/2);
g=getappdata(0,'blaze_angle');
idealalpha1=g + acosd(m_dupe*n*(10^-6)*lblaze/(2*sind(g)));
f1val1=getappdata(0,'f1_val');
dval1 = 2*f2val1*tan((betamax1-betamin1)/2);
if isreal(betamax1) && isreal(betamin1) && isreal(sens) && isreal(idealalpha1)
    set(handles.betamin,'String',num2str(betamin1));
    set(handles.betamax,'String',num2str(betamax1));
    set(handles.blazew,'String',num2str((lmin + lmax)/2));
    set(handles.f2val,'String',num2str(f2val1));
    set(handles.idealW,'String',num2str(lblaze/specres1/n/m_dupe));
    set(handles.idealalpha,'String',num2str(idealalpha1))
    set(handles.f1val,'String',num2str(f1val1))
    set(handles.slitwidth,'String',num2str(f1val1*3*psize1*(10^-3)/f2val1));
    set(handles.d,'String',num2str(dval1))
else
err="Invalid values";
set(handles.betamin,'String',err);
set(handles.betamax,'String',err);
end
