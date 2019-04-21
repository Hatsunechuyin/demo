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

% Last Modified by GUIDE v2.5 21-Apr-2019 23:57:18

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
set(handles.uipanel18,'Visible','off');


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
set(handles.uipanel18,'Visible','off');

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
set(handles.uipanel18,'Visible','off');


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
set(handles.uipanel1,'Visible','off');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel18,'Visible','on');


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
        axis on;                  %��ʾ����ϵ
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
%���ŵı���
global res;
res=1;
global bRadius;%��ֹ�뾶
bRadius=20;
global fil;%��˹��������˹��ѡ��
fil=1;
global filter;%��ͨ�˲�����ͨ�˲�
filter=1;



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
        %set(0,'defaultFigurePosition',[100,100,1000,500]);%���ô��ڴ�С
        %set(0,'defaultFigureColor',[1 1 1]);%���ô�����ɫ
        imshow(r);title({['��ת�ĽǶ�:', num2str(rotate),'��']});
        axis on;                  %��ʾ����ϵ
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
        CR=info.ratio;%disp(CR);%ѹ����
        %H=info.h;disp(H);%��Ϣ��
        %CE=info.ce;disp(CE);%����Ч��
        axes(handles.axes3);title('������ͼ��');
        imshow(unzipped);
        %disp('ƽ���볤');L=info.maxcodelen
        %disp('ѹ����');CR=info.ratio
        set(handles.text34,'String',CR);
        [m,n]=size(Gray);
        set(handles.text35,'String',m*n);
        set(handles.text37,'String',info.cols1);
        [m,n]=size(unzipped);
        set(handles.text39,'String',m*n);
        e=double(Gray)-double(unzipped);
        [m, n]=size(e);
        erms=sqrt(sum(e(:).^2)/(m*n));
        set(handles.text41,'String',erms);
        %disp('��Ϣ��');H=info.h
        %disp('����Ч��');CE=info.ce
        %pad=info.pad
        %huffcodes=info.huffcodes
        %ratio=info.ratio
        %length1=info.length
        %maxcodelen=info.maxcodelen
        %rows=info.rows
        %info1=info.cols1
        whos('Gray');
        whos('unzipped');
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
        %RGB=I;
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


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%ά���˲���ԭͼ��
I=handles.I;
len=28;%�˶�λ��
theta=14;%�˶��Ƕ�
PSF=fspecial('motion',len,theta);
blurred=imfilter(I,PSF,'conv','circular');%����������ģ��ͼ�񣬲�����blurred
wnrl=deconvwnr(blurred,PSF,0.0005);%ά���˲���ԭͼ��
axes(handles.axes2);
imshow(blurred);title('���˶��γ�ģ��ͼ��');%��ʾģ��ͼ��
axes(handles.axes3);
imshow(wnrl);title('ά���˲���ԭͼ��');%��ʾ��ԭͼ��


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
BW5=edge(I,'canny');%����canny���ӱ�Ե��⣬����ֵ����Ĭ��ֵ
axes(handles.axes2);    %��ʾ��axes2����
imshow(BW5,[]);title('canny����');



% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ��
J=imnoise(I,'salt & pepper',0.04);%��ͼ�����ӽ���������ǿ��Ϊ0.04
axes(handles.axes3);    %��ʾ��axex2����
imshow(J); title('�ܽ���������ȾͼƬ');
K=medfilt2(J,[6,6]);          %��ά��ֵ�˲�
axes(handles.axes2);
imshow(K);title('�Ҷ�ͼ��');
axes(handles.axes4);
imshow(K);title('��ά��ֵ�˲�������ͼƬ');


%����Ҷ�任
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;%=======��ȡͼ�� ��ʾͼ��
I1=rgb2gray(I);
ii=im2double(I); %=====��ͼ���������ת��Ϊdouble��ͼ�����ܶ��ǲ��������͵ģ���û������ᱨ���� �������������ͱ���ת��Ϊ�Ҷ�ͼ��
i1 = fft2(ii); %======����Ҷ�任
i2 =fftshift(i1); %======���任��Ƶ��ͼ���Ľ��ƶ������ģ�ԭ�����Ĳ������Ľ� �����ƶ����ģ����ں���Ĵ���
i3=log(abs(i2)); %=====��ʾ���ĵ�Ƶ���֣��Ӷ�����Ϊ�˸��õ���ʾ
axes(handles.axes2);
imshow(i3,[]);title('��ά����Ҷ�任');
i5 = real(ifft2(ifftshift(i2))); %===Ƶ���ͼ���任������ ��ȡʵ��
i6 = im2uint8(mat2gray(i5)); %===ȡ��Ҷ�ͼ
axes(handles.axes3);
imshow(i6);title('��任');
i7=rgb2gray(I);
i8=fft2(i7);%===�Ի�ɫͼ���ܹ�һ������Ϊ����2ά���󣬲�ɫͼ��3ά������Ҫת��Ϊ2ά��ͼ
m=fftshift(i8); %ֱ�������Ƶ�Ƶ������
%RR=real(m); %ȡ����Ҷ�任��ʵ��
%II=imag(m); %ȡ����Ҷ�任���鲿
A=abs(m);%����Ƶ�׷�ֵ
%A=sqrt(RR.^2+II.^2);
A=(A-min(min(A)))/(max(max(A))-min(min(A)))*225; %��һ��
axes(handles.axes4);
imshow(A); %��ʾԭͼ��
colorbar; %��ʾͼ�����ɫ��
title('Ƶ��ͼ'); %ͼ������

%DCT�任
% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
J=rgb2gray(I);%��ͼƬת��Ϊ��ɫͼ��
whos('J');
axes(handles.axes2);
imshow(J);title('ԭ��ͼ��');
K=dct2(J);%��ͼ����DCT�任
axes(handles.axes4);
imshow(log(abs(K))+1,[0,10]);title('DCT�任���');
colormap(gray(4));colorbar;
K(abs(K)<0.1)=0;
I1=idct2(K)/255;
whos('K');
axes(handles.axes3);
imshow(I1);title('ѹ�����ͼƬ');

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% I=handles.I;
% I=rgb2gray(I);
% sig=double(I)/255;
% [m_sig,n_sig]=size(sig);%ͼ���С
% sizi=16;                %����ͼ��ֿ�ͱ���ϵ���ĸ���
% Snum=108;
% %�ֿ�ͽ��б任
% T=hadamard(sizi);
% hdcoe=blkproc(sig,[sizi sizi],'P1*x*P2',T,T);
% %��������ϵ��
% coe=im2col(hdcoe,[sizi sizi],'distinct');
% coe_temp=coe;
% [Y,Ind]=sort(coe);
% %��ȥ��С�����ϵ��
% [m,n]=size(coe);
% Snum=m-Snum;
% for i=1:n
%     coe_temp(Ind(1:Snum),i)=0;
% end
% %�ؽ�ͼ��
% re_hdcoe=col2im(coe_temp,[sizi sizi],[m_sig n_sig],'distinct');
% re_sig=blkproc(re_hdcoe,[sizi sizi],'P1*x*P2',T,T);
% %figure,imshow(uint8(re_sig));
% error=sig.^2-re_sig.^2;
% MSE=sum(error(:)/numel(re_sig))
% axes(handles.axes2)
% imshow(sig);title('�Ҷ�ͼ��');
% axes(handles.axes3)
% imshow(uint8(re_sig));title('ѹ�����ͼ��')
im_l=handles.I;
im_l1=im2double(im_l);
im_l2=rgb2gray(im_l1);
%��ͼ����й�����任
H=hadamard(512);%����512X512��Hadamard����
haImg=H*im_l2*H;
haImg2=haImg/512;
%��ͼ����й�������任
hhaImg=H'*haImg2*H';
hhaImg2=hhaImg/512;
haImg1=im2uint8(haImg);
hhaImg1=im2uint8(hhaImg2);
subplot(2,2,1);
imshow(im_l);
title('ԭͼ');
subplot(2,2,2);
imshow(im_l2);
title('�Ҷ�ͼ');
subplot(2,2,3);
imshow(haImg2);
title('ͼ��Ķ�ά��ɢHadamard�任');
subplot(2,2,4);
imshow(hhaImg1);
title('ͼ��Ķ�ά��ɢHadamard��任');

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
X=rgb2gray(I);
I=im2double(X);
axes(handles.axes2);
imshow(I);title('�Ҷ�ͼ��');
disp('ԭʼͼ��I�Ĵ�С:');
whos('I')
%��ͼ����bior3.7С������2��С���ֽ�
[c,s]=wavedec2(I,2,'bior3.7');     %��ͼ����С�����в�ֽ�
cal=appcoef2(c,s,'bior3.7',1);     %��ȡС���ֽ�ṹ�е�һ��ĵ�Ƶϵ���͸�Ƶϵ��
ch1=detcoef2('h',c,s,1);          %��ȡ��άˮƽ����ϸ��ϵ��
cv1=detcoef2('v',c,s,1);          %��ȡ��ά��ֱ����ϸ��ϵ��
cd1=detcoef2('d',c,s,1);          %��ȡ��ά�Խ��߷���ϸ��ϵ��
%�ֱ�Ը�Ƶ�ʳɷֽ����ع�
a1=wrcoef2('a',c,s,'bior3.7',1);
h1=wrcoef2('h',c,s,'bior3.7',1);
v1=wrcoef2('v',c,s,'bior3.7',1);
d1=wrcoef2('d',c,s,'bior3.7',1);
c1=[a1,h1;v1,d1];
%axes(handles.axes2);
%imshow(c1);title('�ֽ���Ƶ����Ƶ����Ϣ');
ca1=appcoef2(c,s,'bior3.7',1);     %����С���ֽ��һ���Ƶ��Ϣ
ca1=wcodemat(ca1,440,'mat',0);   %���ȶԵ�һ����Ϣ������������
ca1=0.5*ca1;                  %�ı�ͼ��߶�
axes(handles.axes3);
imshow(uint8(ca1));                %��ʾѹ�����ͼ��
title('��һ��ѹ�����ͼ��')
disp('��һ��ѹ��ͼ��Ĵ�СΪ��')
whos('ca1')
ca2=appcoef2(c,s,'bior3.7',2);     %����С���ֽ�ڶ����Ƶ��Ϣ����ѹ��
ca2=wcodemat(ca2,440,'mat',0);   %���ȶԵڶ�����Ϣ������������
ca2=0.25*ca2;                 %�ı�ͼ��߶�
axes(handles.axes4);
imshow(uint8(ca2));       %��ʾѹ�����ͼ�� ��Ҳ����imshow(ca2,[]))��Ȼ������ΧһƬ�հ�
title('�ڶ���ѹ�����ͼ��')
disp('�ڶ���ѹ��ͼ��Ĵ�СΪ��')
whos('ca2')


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I_gray=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ
I_double=double(I_gray);%ת��Ϊ˫����
[wid,len]=size(I_gray);%ͼ��Ĵ�С
colorLevel=256;%�Ҷȼ�
hist=zeros(colorLevel,1);%ֱ��ͼ
for i=1:wid%����ֱ��ͼ
    for j=1:len
        m=I_gray(i,j)+1;%ͼ��ĻҶȼ�m
        hist(m)=hist(m)+1;%�Ҷ�ֵΪi�����غ�
    end
end
%ֱ��ͼ��һ��
hist=hist/(wid*len);%���Ҷ�ֵ���� Pi
miuT=0;%���������ֵ
for m=1:colorLevel
    miuT=miuT+(m-1)*hist(m);  %�����ֵ
end
xigmaB2=0;%
for mindex=1:colorLevel
    threshold=mindex-1;%�趨��ֵ
    omega1=0;%Ŀ�����
    omega2=0;%��������
    for m=1:threshold-1
        omega1=omega1+hist(m);% Ŀ����� W0
    end
    omega2=1-omega1; %�����ĸ��� W1
    miu1=0;%Ŀ���ƽ���Ҷ�ֵ
    miu2=0;%������ƽ���Ҷ�ֵ
    for m=1:colorLevel
        if m<threshold
            miu1=miu1+(m-1)*hist(m);%Ŀ�� i*pi���ۼ�ֵ[1 threshold]
        else
            miu2=miu2+(m-1)*hist(m);%���� i*pi���ۼ�ֵ[threshold m]
        end
    end
    miu1=miu1/omega1;%Ŀ���ƽ���Ҷ�ֵ
    miu2=miu2/omega2;%������ƽ���Ҷ�ֵ
    xigmaB21=omega1*(miu1-miuT)^2+omega2*(miu2-miuT)^2;%��󷽲�
    xigma(mindex)=xigmaB21;%���趨һ��ֵ �ٱ������лҶȼ�
    %�ҵ�xigmaB21��ֵ���
    if xigmaB21>xigmaB2
        finalT=threshold;%�ҵ���ֵ �Ҷȼ�
        xigmaB2=xigmaB21;%����Ϊ���
    end
end
%��ֵ��һ��
fT=finalT/255;
for i=1:wid
     for j=1:len
         if I_double(i,j)>finalT %�������趨�ľ�ֵ ��ΪĿ��
             bin(i,j)=0;
         else
             bin(i,j)=1;
         end
     end
end
axes(handles.axes2);
imshow(bin);


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
global res;
res=str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        global res;%��ȡȫ�ֵı��������ű���
        I=handles.I;%�򿪵�ͼ��ľ��
        axes(handles.axes2);%��ʾ���ǽ��������������Ϊ��ǰ������,��������ͼ.      
        im0 = imresize(I,res);%�������ŵ�ԭ����res��
        imshow(im0);title({['���ű���:', num2str(res)]}');
        axis on;                  %��ʾ����ϵ
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.text3,'String',res);%��text3����ʾ����
try
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        global res1;
        res1=get(handles.slider1,'value')%��ȡ�������е�����
        I=handles.I;%�򿪵�ͼ��ľ��
        disp(size(I));%���� 
        im0 = imresize(I,res1);%�������ŵ�ԭ����res��
        disp(size(im0));
        axes(handles.axes2);%��ʾ���ǽ��������������Ϊ��ǰ������,��������ͼ.
        imshow(im0);title({['���ű���:', num2str(res1)]}');
        axis on;     %��ʾ����ϵ
    else
        warndlg('û�м��е�ͼ��');
    end
catch
    %warndlg('��������һ��ͼ��');
end

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2

%ͼ���񻯵�ʵ�ʣ���ͼ�� = ԭͼ�� + ���صı�Ե
% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
%I=rgb2gray(I);
fb=tofloat(I);  	%��ͼ��ת��Ϊ������
%lapmask=[1 1 1;1 -8 1;1 1 1]; 	%������˹�˲�ģ��
lapmask=[0,1,0;1,-4,1;0,1,0];
fen=imfilter(fb,lapmask,'replicate');%����������������άͼ������˲�
fen1=fb-fen;
axes(handles.axes2);
imshow(fen);title('ͼ��ı�Ե');
axes(handles.axes3);
imshow(fen1);title('������˹��');
function [out,revertclass] = tofloat(inputimage)
%Copy the book of Gonzales
identify = @(x) x;
tosingle = @im2single;
table = {'uint8',tosingle,@im2uint8 
         'uint16',tosingle,@im2uint16 
         'logical',tosingle,@logical
         'double',identify,identify
         'single',identify,identify};
classIndex = find(strcmp(class(inputimage),table(:,1)));
if isempty(classIndex)
    error('��֧�ֵ�ͼ������');
end
out = table{classIndex,2}(inputimage);
revertclass = table{classIndex,3};


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','on');
set(handles.uipanel2,'Visible','off');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel18,'Visible','off');


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
%I_2D=D3_To_D2(I);
I_2D=rgb2gray(I);
I1=fft2(I_2D);
I2=uint8(real(ifft2(I1)));
I1=log(1+abs(fftshift(I1)));
axes(handles.axes2);
imshow(I_2D);title('�Ҷ�ͼ��');
axes(handles.axes4);
imshow(I1,[]);
title('fft2���Ƶ��');colorbar;
axes(handles.axes3);
imshow(I2,[]);
title('ifft2��ĸ�ԭͼ��');
%��λת���ɶ�ά
function image_out=D3_To_D2(image_in)
[m,n]=size(image_in);
 n=n/3;%�����ҵĻҶ�ͼ����185x194x3�ģ����Գ���3�����������PxQ�ģ��Ͳ�Ҫ����
 A=zeros(m,n);%�������
 for i=1:m
     for j=1:n
        A(i,j)= image_in(i,j);%���ͼ��A
     end
 end
image_out=uint8(A);


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
%try
    whos;
    if  isfield(handles,'I')%�жϾ���еı����Ƿ����
        I=handles.I;
        %I=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ
        J=imnoise(I,'salt & pepper',0.02);
        axes(handles.axes2);
        imshow(J);title('��ӽ�������ͼ��');
        %disp(get(hObject,'value'));%���Դ�ӡ�õ�
        switch get(hObject,'value')   %ʵ�������б���Ҫд���﷨   %ʵ�������б���Ҫд���﷨
            case 1    
            case 2 
                %K1=filter2(fspecial('average',3),J);%����3*3ģ��ƽ���˲�
                for i=1:3
                    K1(:,:,i)=filter2(fspecial('average',3),J(:,:,i))/255;
                end
                axes(handles.axes3);
                imshow(K1);title('3*3ģ��ƽ���˲�');
                %guidata(hObject,handles);%����handles
            case 3 
                for i=1:3
                    K1(:,:,i)=filter2(fspecial('average',5),J(:,:,i))/255;
                end
                axes(handles.axes3);
                imshow(K1);title('5*5ģ��ƽ���˲�');
                %guidata(hObject,handles);
            case 4
                for i=1:3
                    K1(:,:,i)=filter2(fspecial('average',7),J(:,:,i))/255;
                end
                axes(handles.axes3);
                imshow(K1);title('7*7ģ��ƽ���˲�');;
                %guidata(hObject,handles);
            case 5
                 for i=1:3
                    K1(:,:,i)=filter2(fspecial('average',9),J(:,:,i))/255;
                end
                axes(handles.axes3);
                imshow(K1);title('9*9ģ��ƽ���˲�');;
                %guidata(hObject,handles);
        end
    else
        warndlg('û�м��е�ͼ��');
    end
%catch
    %warndlg('��������һ��ͼ��');
%end

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I1=rgb2gray(I);
axes(handles.axes2);
imhist(I1);
I2=histeq(I1);
axes(handles.axes3);
imshow(I2);
axes(handles.axes4);
imhist(I2);

%I1=handles.I;
%[M,N,G]=size(I1);
%result=zeros(M,N,3);
%���ÿһ��ÿһ�����RGBֵ�����ж���ֵ���ڶ���
%for g=1:3
  %  A=zeros(1,256);
    %ÿ������һ�㣬����Ҫ���³�ʼ��Ϊ0
   % average=0;
    %for k=1:256
       % count=0;
      %  for i=1:M
         %   for j=1:N
          %      value=I1(i,j,g);
           %     if value==k
           %         count=count+1;
             %   end
          %  end
       % end
       % count=count/(M*N*1.0);
      %  average=average+count;
      %  A(k)=average;
  %  end
 %   A=uint8(255.*A+0.5);
  %  for i=1:M
    %    for j=1:N
     %       I1(i,j,g)=A(I1(i,j,g)+0.5);
     %   end
  %  end  
%end
%չʾ����Ч��
%axes(handles.axes3);
%imshow(I1);
%axes(handles.axes2);
%imhist(I1)


% --------------------------------------------------------------------
function Untitled_11_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function save_1_Callback(hObject, eventdata, handles)
% hObject    handle to save_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    [f,p]=uiputfile({'*.jpg'},'�����ļ�');
    str=strcat(p,f);
    pix=getframe(handles.axes2);
    imwrite(pix.cdata,str,'jpg')
catch
end


% --------------------------------------------------------------------
function save_2_Callback(hObject, eventdata, handles)
% hObject    handle to save_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    [f,p]=uiputfile({'*.jpg'},'�����ļ�');
    str=strcat(p,f);
    pix=getframe(handles.axes3);
    imwrite(pix.cdata,str,'jpg')
catch
end

% --------------------------------------------------------------------
function save_4_Callback(hObject, eventdata, handles)
% hObject    handle to save_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    [f,p]=uiputfile({'*.jpg'},'�����ļ�');
    str=strcat(p,f);
    pix=getframe(handles.axes4);
    imwrite(pix.cdata,str,'jpg');
catch
end


% --------------------------------------------------------------------
function savea_Callback(hObject, eventdata, handles)
% hObject    handle to savea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I1=rgb2gray(I);
axes(handles.axes2);
imhist(I1);
I2=imadjust(I1,[0.3 0.7],[0.1 0.9],1);
axes(handles.axes3);
imshow(I2);
axes(handles.axes4);
imhist(I2);


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.I;
x=rgb2gray(x);
[m,n]=size(x); 
x=double(x); 
b=zeros(m,n); 
c=zeros(m,n); 
for i=1:m-2 
    for j=1:n-2 
        b(i+1,j+1)=x(i,j)-x(i+1,j+1); 
        c(i+1,j+1)=x(i,j+1)-x(i+1,j); 
        b(i+1,j+1)=sqrt(b(i+1,j+1)^2+c(i+1,j+1)^2)+100; 
    end
end
axes(handles.axes3);
imshow(uint8(b));title('�ݶ�����');



% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fil;
fil=get(hObject,'value');
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filter;
global bRadius;
filter=get(handles.popupmenu5,'value');
switch filter
    case 1
        set(handles.popupmenu6,'string',{20,50,300});
        str=get(handles.popupmenu6,'string');
        val=get(handles.popupmenu6,'value');
        %disp(str(val));
        bRadius=str2double(str(val));
        disp(bRadius);
    case 2
        set(handles.popupmenu6,'string',{2,4,8});
        str=get(handles.popupmenu6,'string');
        val=get(handles.popupmenu6,'value');
        bRadius=str2double(str(val));
        disp(bRadius);
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bRadius;
val=get(handles.popupmenu6,'value');
str=get(handles.popupmenu6,'string');
bRadius=str2double(str(val));
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on popupmenu6 and none of its controls.
function popupmenu6_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
set(handles.popupmenu6,'string','1');


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%������˹��ͨ�˲����Ĵ��ݺ���Ϊ��h=1/(1+0.414*(d/d0)^(2*level));
%��˹��ͨ�˲����Ĵ��ݺ���Ϊ ��h=exp(-1/2*(d^2/d0^2));
%������˹��ͨ�˲����Ĵ��ݺ���Ϊ��h=1/(1+0.414*(d0/d)^(2*level));
%��˹��ͨ�˲����Ĵ��ݺ���Ϊ ��h=1-exp(-1/2*(d^2/d0^2));
global fil;
%disp(fil);
global filter;
%disp(filter);
global bRadius;
disp(bRadius);
I=handles.I;
I1=rgb2gray(I);
I2=imnoise(I1,'gaussian',0.03);	 %�Ӿ�ֵΪ0������Ϊ0.03�ĸ�˹����
%I3=double(I2);
fft_I=fft2(I2); 	% ��ά��ɢ����Ҷ�任
shift_I=fftshift(fft_I); 	% ֱ�������Ƶ�Ƶ������
[M,N]=size(shift_I);
m=floor(M/2);
n=floor(N/2);
title1='';
level=4;%2��������˹�˲��� 2ʱ�ӽ���˹��5ʱ�ӽ����룬������ֵ����ʱ����ģ��ЧӦ
switch fil
    case 1
        switch filter
            case 1
                title1='��˹��ͨ';
                disp('��˹��ͨ');
                for i=1:M
                    for j=1:N
                        d=sqrt((i-m)^2+(j-n)^2);
                        h=exp(-1/2*(d^2/bRadius^2));
                        result(i,j)=h*shift_I(i,j);
                    end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
            case 2
                title1='��˹��ͨ';
                disp('��˹��ͨ');
                for i=1:M
                     for j=1:N
                           d=sqrt((i-m)^2+(j-n)^2);
                           h=1-exp(-1/2*(d^2/bRadius^2));
                           result(i,j)=h*shift_I(i,j);
                     end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
        end 
    case 2
        switch filter
            case 1
                title1='������˹��ͨ';
                disp('������˹��ͨ');
                for i=1:M
                    for j=1:N
                        d=sqrt((i-m)^2+(j-n)^2);
                        h=1/(1+0.414*(d/bRadius)^(2*level));
                        result(i,j)=h*shift_I(i,j);
                    end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
            case 2
                title1='������˹��ͨ';
                disp('������˹��ͨ');
                for i=1:M
                     for j=1:N
                         d=sqrt((i-m)^2+(j-n)^2);
                         h=1/(1+0.414*(d/bRadius)^(2*level));
                         result(i,j)=h*shift_I(i,j);
                     end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
        end 
end
axes(handles.axes2);
imshow(result1);title(title1);

% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uipanel22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image_o=handles.I;
axes(handles.axes2);
imshow(image_o);title('�˻�ͼ��');
%Ƶ�����˻�ͼ���˻�����H(u,v)=exp(-0.0025*( (u-M/2).^2+(v-N/2).^2).^(5/6) )
%����Ҷ�任
f=im2double(image_o);
F=fft2(f);
F=fftshift(F);
%ִ���˻�
[M,N]=size(F);
[u,v]=meshgrid(1:M,1:N);%���ɶ�ά����ϵ
H=-exp(0.0025.*((u-M./2).^2+(v-N./2).^2).^(5./6));
[m,n]=size(H);
disp(m);
disp(n);
disp(M);
disp(N);
F=F*H';
%����Ҷ���任
X=ifftshift(F);
x=ifft2(X);
x=uint8(abs(x)*256);
axes(handles.axes3);
imshow(F);title('�˻�ͼ��');
%image_d=imread('C:\Program Files\MATLAB\R2013a\bin\work\ͼ��ԭ\lena_deterioration.bmp');
image_d=x;
%ֱ�����˲�ͼ��ԭ
ff=im2double(image_d);%��ͼ��Ҷ�ֵ��һ����0-1֮��
% ����Ҷ�任
f_Id=fft2(ff);
f_Id=fftshift(f_Id);
fH_Id=f_Id;
[M,N]=size(fH_Id);
% ���˲�
threshold=10;
if threshold>M/2
        %ȫ�˲�
        fH_Id=fH_Id./(H+eps);
else
        %��һ���뾶��Χ�ڽ����˲�
        for i=1:M
            for j=1:N
                if sqrt((i-M/2).^2+(j-N/2).^2)<threshold
                    fH_Id(i,j)=fH_Id(i,j)./(H(i,j)+eps);
                end
            end
        end
end
% ִ�и���Ҷ��任
fH_Id1=ifftshift(fH_Id);
f_new=ifft2(fH_Id1);
f_new=uint8(abs(f_new)*255);
axes(handles.axes4);
imshow(f_new);title('�˲��뾶=78�����˲���ԭͼ��');



% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.I;
[c,s]=wavedec2(X,3,'sym4');  %���ж���С���ֽ�
len=length(c);
justdet = prod(s(1,:));%��ȡϸ��ϵ����ʼλ�ã����������ϵ����  
%�����Ƶ�ֽ�ϵ����ͻ������
for I =1:justdet
    if(c( I )>250)
      c( I )=1.5*c( I );
    end
end
%�����Ƶ�ֽ�ϵ��������ϸ��
for I =justdet:len
    if(c( I ) < 150)
      c( I )=0.75*c( I );
    end
end
nx=waverec2(c,s,'sym4');%�ֽ�ϵ���ع�
axes(handles.axes2);
imshow(uint8(nx));title('��ǿͼ��')%������ǿͼ��

% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
x=rgb2gray(I);
axes(handles.axes2);
imshow(uint8(x));title('�Ҷ�ͼ��')
switch get(hObject,'value')
    case 1
    case 2
        disp('Sobel����');
        [H,W]=size(x);
        M=double(x);
        J=M;
        for i=2:H-1
            for j=2:W-1
                J(i,j)=abs(M(i-1,j+1)-M(i-1,j-1)+2*M(i,j+1)-2*M(i,j-1)+M(i+1,j+1)-M(i+1,j-1))+abs(M(i-1,j-1)-M(i+1,j-1)+2*M(i-1,j)-2*M(i+1,j)+M(i-1,j+1)-M(i+1,j+1));
            end
        end
        axes(handles.axes3);
        imshow(uint8(J));title('Sobel����')
    case 3
        disp('Prewitt����');
        [H,W]=size(x);
        M=double(x);
        J=M;
        for i=2:H-1
            for j=2:W-1
                J(i,j)=abs(M(i-1,j+1)-M(i-1,j-1)+M(i,j+1)-M(i,j-1)+M(i+1,j+1)-M(i+1,j-1))+abs(M(i+1,j-1)-M(i-1,j-1)+M(i+1,j)-M(i-1,j)+M(i+1,j+1)-M(i-1,j+1));
            end
        end
        %b=zeros(m,n); 
        %c=zeros(m,n); 
        %for i=1:m-2 
        %    for j=1:n-2 
        %        b(i+1,j+1)=-x(i,j)-x(i+1,j)-x(i+2,j+2)+x(i,j+2)+x(i+1,j+2)+x(i+2,j+2); 
        %        c(i+1,j+1)=x(i,j)+x(i,j+1)+x(i,j+2)-x(i+2,j)-x(i+2,j+1)-x(i+2,j+2); 
        %        b(i+1,j+1)=sqrt(b(i+1,j+1)^2+c(i+1,j+1)^2)+100; 
        %        %������������ַ�ʽ������ֵ��ͳһ��һ����,��ͬ�Ĵ����õ���ͬ��Ч�� 
        %        %if b(i+1,j+1)<0 
        %        % b(i+1,j+1)=-b(i+1,j+1); 
        %        %end 
        %    end 
        %end
        axes(handles.axes3);
        imshow(uint8(J));title('Prewitt����')
    case 4
        disp('Isotropic����');
%         [m,n]=size(x); 
%         x=double(x); 
%         b=zeros(m,n); 
%         c=zeros(m,n); 
%         for i=1:m-2 
%             for j=1:n-2 
%                 b(i+1,j+1)=-x(i,j)-x(i+1,j)-x(i+2,j+2)+x(i,j+2)+x(i+1,j+2)+x(i+2,j+2); 
%                 c(i+1,j+1)=x(i,j)+x(i,j+1)+x(i,j+2)-x(i+2,j)-x(i+2,j+1)-x(i+2,j+2); 
%                 b(i+1,j+1)=sqrt(b(i+1,j+1)^2+c(i+1,j+1)^2)+100; 
%                 %������������ַ�ʽ������ֵ��ͳһ��һ����,��ͬ�Ĵ����õ���ͬ��Ч�� 
%                 %if b(i+1,j+1)<0 
%                 %   b(i+1,j+1)=-b(i+1,j+1); 
%                 %end 
%             end 
%         end 
%         h2=fspecial('sobel');
%         I2=filter2(h2,x);
        [H,W]=size(x);
        M=double(x);
        J=M;
        for i=2:H-1
            for j=2:W-1
                J(i,j)=abs(M(i-1,j+1)-M(i-1,j-1)+sqrt(2)*M(i,j+1)-sqrt(2)*M(i,j-1)+M(i+1,j+1)-M(i+1,j-1))+abs(M(i+1,j-1)-M(i-1,j-1)+sqrt(2)*M(i+1,j)-sqrt(2)*M(i-1,j)+M(i+1,j+1)-M(i-1,j+1));
            end
        end
        axes(handles.axes3);
        imshow(uint8(J));title('Isotropic����')
end

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uipanel18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.I;
%X=rgb2gray(X);
%��������ͼ��
init=26;
randn('seed',init);
x=double(X)+38*randn(size(X));
%��������ͼ��
axes(handles.axes2)
imshow(x);
title('������ͼ��');
%�������ͼ���ȥ�봦��
%��С������sym4��x����2��С���ֽ�
[c,s]=wavedec2(x,2,'sym4');
%��ȡС���ֽ��е�һ��ĵ�Ƶͼ�񣬼�ʵ���˵�ͨ�˲�ȥ��
a1=wrcoef2('a',c,s,'sym4');
%����ȥ����ͼ��
axes(handles.axes3)
imshow(a1);title('��һ��ȥ��ͼ��');
%��ȡС���ֽ��еڶ���ĵ�Ƶͼ�񣬼�ʵ���˵�ͨ�˲�ȥ��
%�൱�ڰѵ�һ��ĵ�Ƶͼ�񾭹���һ�εĵ�Ƶ�˲�����
a2=wrcoef2('a',c,s,'sym4',2);
%����ȥ����ͼ��
axes(handles.axes4);
imshow(a2);title('�ڶ���ȥ��ͼ��');



% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
Gray=rgb2gray(I);
%���³���Ϊ��ԭͼ������г̱��룬ѹ�� ?
Gray_Linear=Gray(:); 
Gray_Length=length(Gray_Linear); 
j=1; 
index(1)=1; 
for z=1:1:(length(Gray_Linear)-1) %�г̱������� ?
    if Gray_Linear(z)==Gray_Linear(z+1); 
        index(j)=index(j)+1; 
    else
        Encode(j)=Gray_Linear(z);
        j=j+1; 
        index(j)=1;
    end 
end
Encode(j)=Gray_Linear(length(Gray_Linear)); %���һ����������
index=uint8(index);
k=1;
for i=1:1:j
    if index(i)==1
        Encode_hex(k)=Encode(i);% ʮ�����ƵĴ������߻Ҷ�ֵ
        k=k+1;
    else
        Encode_hex(k)=192+index(i);
        k=k+1;
        Encode_hex(k)=Encode(i);
        k=k+1;
    end
end
Encode_hex=dec2hex(Encode_hex);
Encode_hex_Length=size(Encode_hex,1);%�����г̱�������ռ�ֽ�����Encode_hex_Length
index_Lenght=length(index);
CR=Gray_Length/Encode_hex_Length; %�Ƚ�ѹ��ǰ��ѹ����Ĵ�С ?
%�г̱������ ?
l=1; 
for m=1:index_Lenght 
    for n=1:1:index(m) 
        Decode_temp(l)=Encode(m);
        l=l+1; 
    end 
end 
Decode=reshape(Decode_temp,384,512); %�ؽ���λͼ������ ͼ��ĳ��������ʹ�õ�ͼ���ͼƬ����һ��384*512
axes(handles.axes2);
imshow(Gray);title('ԭʼ�Ҷ�ͼ'); %��ʾԭͼ�Ķ�ֵͼ�� 
axes(handles.axes3);
imshow(Decode,[]);title('��ѹ���ָ����ͼ��'); %��ʾ��ѹ���ָ����ͼ�� ?
set(handles.text34,'String',CR)
set(handles.text35,'String',Gray_Length)
set(handles.text37,'String',Encode_hex_Length)
set(handles.text39,'String',length(Decode_temp))
e=double(Gray)-double(Decode);
[m, n]=size(e);
erms=sqrt(sum(e(:).^2)/(m*n));
set(handles.text41,'String',erms);
%disp('ѹ���ȣ�'); 
%disp(CR); 
%disp('ԭͼ�����ݵĳ��ȣ�'); 
%disp(Gray_Length); 
%disp('ѹ����ͼ�����ݵĳ���'); 
%disp(Encode_hex_Length); 
%disp('��ѹ��������ݳ���'); 
%disp(length(Decode_temp));


% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
x=double(I);
y=LPCencode(x);   
xx=LPCdecode(y);
%��ʾԤ�����ֵ
%figure(1);
%subplot(121);title('1');
%imshow(I);
%subplot(122);
axes(handles.axes2);
imshow(mat2gray(y));title('Ԥ�����ͼ��')
%�������������Ϊ��������룬��ôermsӦ��Ϊ��
e=double(x)-double(xx);
[m, n]=size(e);
erms=sqrt(sum(e(:).^2)/(m*n));
%CR=x/y;
set(handles.text34,'String','-');
%[m,n]=size(x)
set(handles.text35,'String','-');
%[m,n]=size(y)
set(handles.text37,'String','-');
%[m,n]=size(xx)
set(handles.text39,'String','-');
set(handles.text41,'String',erms);
%��ʾԭͼֱ��ͼ
%figure(2);
%subplot(121);
axes(handles.axes3);
[h, f]=hist(x(:));    
bar(f,h,'k');title('ԭͼֱ��ͼ');
%��ʾԤ������ֱ��ͼ
%subplot(122);
axes(handles.axes4);
[h, f]=hist(y(:));    
bar(f, h,'k');title('Ԥ������ֱ��ͼ');
%������%LPCencode������һά����Ԥ�����ѹ��ͼ��x,aΪԤ��ϵ�������aĬ�ϣ���Ĭ��a=��������ǰֵԤ�⡣
function y=LPCencode(x, a)
%error(nargchk(1, 2, nargin));
if nargin<2
    a=1;
end
x=double(x);   
[m, n]=size(x);
p=zeros(m, n);  %���Ԥ��ֵ
xs=x;   
zc=zeros(m, 1);
for i=1:length(a)
    xs=[zc  xs(:, 1:end-1)];    
    p=p+a(i)*xs;
end
y=x-round(p);
%������
%LPCdecode�����Ľ���������������õ���ͬһ��Ԥ����
function x=LPCdecode(y, a)
error(nargchk(1, 2, nargin));
if nargin<2
    a=1;
end
a=a(end: -1: 1);     
[m, n]=size(y);     
order=length(a);
a=repmat(a, m, 1);      
x=zeros(m, n+order);
for i=1:n
 ii=i+order;
x(:, ii)=y(:, i)+round(sum(a(:, order: -1: 1).*x(:, (ii-1): -1:(ii-order)), 2));
end
x=x(:, order+1: end);


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
