function varargout = ImgSystem(varargin)
% IMGSYSTEM MATLAB code for ImgSystem.fig
%      IMGSYSTEM, by itself, creates a new IMGSYSTEM or raises the existing
%      singleton*.
%
%      H = IMGSYSTEM returns the handle to a new IMGSYSTEM or the handle to
%      the existing singleton*.
%
%      IMGSYSTEM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMGSYSTEM.M with the given input arguments.
%
%      IMGSYSTEM('Property','Value',...) creates a new IMGSYSTEM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ImgSystem_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ImgSystem_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ImgSystem

% Last Modified by GUIDE v2.5 03-Apr-2019 17:33:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ImgSystem_OpeningFcn, ...
                   'gui_OutputFcn',  @ImgSystem_OutputFcn, ...
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


% --- Executes just before ImgSystem is made visible.
function ImgSystem_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ImgSystem (see VARARGIN)

% Choose default command line output for ImgSystem
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ImgSystem wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ImgSystem_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function dealwith_Callback(hObject, eventdata, handles)
% hObject    handle to dealwith (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[file path]=uigetfile('*.bmp;*.jpg;*.png','请选择一幅图像');
if file==0 warndlg('您得输入一幅图像');
%警告对话框提示输入合法图像文件
else
    I=imread(fullfile(path,file));
    axes(handles.axes1);
    imshow(I);title('原图像');
    handles.I=I;
end
%Update handles structure
guidata(hObject,handles);

% --- Executes when uipanel2 is resized.
function uipanel2_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function fenge_Callback(hObject, eventdata, handles)
% hObject    handle to fenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','on');
set(handles.uipanel2,'Visible','off');


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%设置uipanel1的
set(handles.uipanel1,'Visible','on');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','on');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');

% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','on');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');

% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','on');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');

% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','on');
set(handles.uipanel6,'Visible','off');

% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','on');


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%清除视图图片
cla(handles.axes1,'reset');  %handles.axes2为显示图片窗口，reset即清除
% 重置清空动态txt的文字
%set(handles.axes1,'title','');  %handles.edit1为要清除文字的文本框（双击文本框可以看见tag）


% --------------------------------------------------------------------
function Close_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file path]=uigetfile('*.bmp;*.jpg;*.png','请选择一幅图像');
if file==0 warndlg('您得输入一幅图像');
%警告对话框提示输入合法图像文件
else
    I=imread(fullfile(path,file));
    axes(handles.axes1);
    imshow(I);title('原图像');
    handles.I=I;
end
%Update handles structure
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
%获取text文本框的数字，竖直平移X的数值
global x;%定义一个x的全局变量
x=str2num(get(hObject,'String'));


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
%获取text文本框的数字，竖直平移Y的数值
global y;
y=str2num(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y;
global x;
I=handles.I;
axes(handles.axes2);
se=translate(strel(1),[x y]);  
j=imdilate(I,se); 
axes(handles.axes2);
imshow(j);title('竖直平移后图像');

