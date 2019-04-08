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

% Last Modified by GUIDE v2.5 08-Apr-2019 22:23:13

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

[file path]=uigetfile('*.bmp;*.jpg;*.png','��ѡ��һ��ͼ��');
if file==0 warndlg('��������һ��ͼ��');
%����Ի�����ʾ����Ϸ�ͼ���ļ�
else
    I=imread(fullfile(path,file));
    axes(handles.axes1);
    imshow(I);title('ԭͼ��');
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
%����uipanel1��
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

%�����ͼͼƬ
cla(handles.axes1,'reset');  %handles.axes1Ϊ��ʾͼƬ���ڣ�reset�����
cla(handles.axes2,'reset');  %handles.axes2Ϊ��ʾͼƬ���ڣ�reset�����
cla(handles.axes3,'reset');  %handles.axes3Ϊ��ʾͼƬ���ڣ�reset�����
cla(handles.axes4,'reset');  %handles.axes4Ϊ��ʾͼƬ���ڣ�reset�����
%������õ��ľ�̬�ı�
set(handles.text3,'String','');
% ������ն�̬txt������
%set(handles.axes1,'title','');  %handles.edit1ΪҪ������ֵ��ı���˫���ı�����Կ���tag��
%�������Ҫ��ͼƬ���ڴ�Ҳ�����(ע:������ܴ���,Ҳ����Ҫ���)
handles=rmfield(handles,'I');
guidata(hObject,handles);

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
[file path]=uigetfile('*.bmp;*.jpg;*.png','��ѡ��һ��ͼ��');
if file==0 warndlg('��������һ��ͼ��');
%����Ի�����ʾ����Ϸ�ͼ���ļ�
else
    I=imread(fullfile(path,file));
    axes(handles.axes1);
    imshow(I);title('ԭͼ��');
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
%��ȡtext�ı�������֣���ֱƽ��X����ֵ
global x;%����һ��x��ȫ�ֱ���
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
%��ȡtext�ı�������֣���ֱƽ��Y����ֵ
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
%ͼ���ƽ�Ʋ���
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        global y;%��ȡȫ�ֵı�����Ҳ�����ı��������
        global x;
        I=handles.I;%�򿪵�ͼ��ľ��
        axes(handles.axes2);%��ʾ���ǽ��������������Ϊ��ǰ������,��������ͼ.
        se=translate(strel(1),[x y]);  
        j=imdilate(I,se); 
        axes(handles.axes2);
        imshow(j);title('��ֱƽ�ƺ�ͼ��');
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end



% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
%���б�����һ�ζ�ȡ����ͼƬ
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        set(handles.text3,'String','���е�ͼƬ');
        axes(handles.axes3);%��������axes�������ж���
        A=handles.I;
        [I1,rect]=imcrop(A);
        %title('����ǰ','color','r');
        rectangle('Position',rect,'LineWidth',2,'EdgeColor','r')%��ʾͼ���������(������һ������)
        axes(handles.axes4)
        imshow(I1);title('ѡȡ���ֵ�ͼ��');
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v_image;
v_image=get(handles.popupmenu2,'value');

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    global v_image;%��ȡȫ�ֵı�����Ҳ�����ı��������
    if isempty(v_image)
        v_image=1;
    end
    disp(handles);%���Դ�ӡ�õ�
    whos;
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        %disp(v_image);%���Դ�ӡ�õ�
        switch v_image   %ʵ�������б���Ҫд���﷨
            case 1 
                I=handles.I;
                J1=flipdim(I,2);%ԭͼ���ˮƽ����
                axes(handles.axes2);
                imshow(J1);title('ˮƽ����');
                %guidata(hObject,handles);%����handles
            case 2 
                I=handles.I;
                J2=flipdim(I,1);%ԭͼ��Ĵ�ֱ����
                axes(handles.axes2);
                imshow(J2);title('��ֱ����');
                %guidata(hObject,handles);
            case 3
                I=handles.I;
                J3=flipdim(I,1);%ԭͼ���ˮƽ��ֱ����
                J4=flipdim(J3,2);
                axes(handles.axes2);
                imshow(J4);title('ˮƽ��ֱ����');
                %guidata(hObject,handles);
        end
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end


%������������ǰ���Ҫ��ȫ�ֱ�����ʼ��
% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%�����ȫ�ֱ���
global v_image;
v_image=1;
%��ˮƽλ�Ʊ�������ֵ
global x;
x=0;
global y;
y=0;
%����ת�Ƕȷ��ֵ
global rotate;
rotate=0;


%��תͼƬ����ʱ��Ϊ��
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        I=handles.I;
        global rotate;%��ȡȫ�ֵı�����Ҳ�����ı��������
        r=imrotate(I,rotate,'nearest');%���ڲ�ֵ����תͼƬ
        axes(handles.axes2);
        imshow(r);title({['��ת�ĽǶ�:', num2str(rotate),'��']});
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
global rotate;
rotate=str2num(get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%try
%��Ҫ�����������Դ����
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        I=handles.I;      
        Gray=rgb2gray(I);%ת���ɻҶȵ�ͼ��
        axes(handles.axes2);
        imshow(Gray);title('�Ҷ�ͼ��');
        [zipped,info]=huffencode(Gray);%���ù���������������ѹ��
        unzipped=huffdecode(zipped,info);%���ù��������������н���
        %L=info.avalen;disp(L);%ƽ���볤
        %CR=info.ratio;disp(CR);%ѹ����
       % H=info.h;disp(H);%��Ϣ��
       % CE=info.ce;disp(CE);%����Ч��
        axes(handles.axes3);
        imshow(unzipped);
    else
        warndlg('���ȴ���Ҫ������ͼƬ');
    end
%catch
%end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        I=handles.I;      
        RGB=rgb2gray(I);
        axes(handles.axes2);
        imshow(RGB);title('�Ҷ�ͼ��');
        J=imnoise(RGB,'gaussian',0,0.025);%���Ҷ�ͼ����Ӹ�˹����������ֵΪ0.����Ϊ0.025
        axes(handles.axes3);
        imshow(J);title('��������ͼ��');
        K=wiener2(J,[5 5]);
        axes(handles.axes4);
        imshow(K);title('ά���˲�����');
    else
        warndlg('���ȴ���Ҫ������ͼƬ');
    end
catch
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        I=handles.I;      
        RGB=rgb2gray(I);
        RGB=im2double(RGB);
        len=50;%���ò���
        theta=20;
        PSF=fspecial('motion',len,theta);%����FSP
        J=imfilter(RGB,PSF,'conv','circular');%�˶�ģ��
        axes(handles.axes2);
        imshow(J);title('�Ҷ��˻�ͼ��ͼ��');
        nsr=0;
        K=deconvwnr(J,PSF,nsr);%ά���˲�
        axes(handles.axes3);
        imshow(K);title('��ԭͼ��(ά���˲�)'); 
    else
        warndlg('���ȴ���Ҫ������ͼƬ');
    end
%catch
%end
