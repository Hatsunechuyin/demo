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

% Last Modified by GUIDE v2.5 17-May-2019 20:26:15

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
try
    [file path]=uigetfile('*.bmp;*.jpg;*.png','请选择一幅图像');
    if file==0 
        %warndlg('请重新一幅图像');
    %警告对话框提示输入合法图像文件
    else
        I=imread(fullfile(path,file));
        axes(handles.axes1);
        imshow(I);title('原图像');
        handles.I=I;
    end
    %Update handles structure
    guidata(hObject,handles);
catch
end

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
try 
    set(handles.uipanel1,'Visible','on');
    set(handles.uipanel3,'Visible','off');
    set(handles.uipanel4,'Visible','off');
    set(handles.uipanel5,'Visible','off');
    set(handles.uipanel6,'Visible','off');
    set(handles.uipanel18,'Visible','off');
catch
end


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    set(handles.uipanel1,'Visible','off');
    set(handles.uipanel3,'Visible','off');
    set(handles.uipanel4,'Visible','off');
    set(handles.uipanel5,'Visible','off');
    set(handles.uipanel6,'Visible','off');
    set(handles.uipanel18,'Visible','off');
catch
end

% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
set(handles.uipanel3,'Visible','on');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel18,'Visible','off');

% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','off');
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
try  
    %清除视图图片
    cla(handles.axes1,'reset');  %handles.axes1为显示图片窗口，reset即清除
    cla(handles.axes2,'reset');  %handles.axes2为显示图片窗口，reset即清除
    cla(handles.axes3,'reset');  %handles.axes3为显示图片窗口，reset即清除
    cla(handles.axes4,'reset');  %handles.axes4为显示图片窗口，reset即清除
    %清除设置到的静态文本
    set(handles.text3,'String','');
    % 重置清空动态txt的文字
    %set(handles.axes1,'title','');  %handles.edit1为要清除文字的文本框（双击文本框可以看见tag）
    %清除完需要吧图片的内存也清理掉(注:这个功能待定,也许不需要清除)
    handles=rmfield(handles,'I');
    guidata(hObject,handles);
catch
end

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
%图像的平移操作
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
%         set(handles.axes2,'visible','off');
%         set(handles.axes3,'visible','off');
%         set(handles.axes4,'visible','off');
%         cla(handles.axes2);
%         set(gca,'Visible','off');
%                 cla(handles.axes3);
%         set(gca,'Visible','off');
%                 cla(handles.axes4);
%         set(gca,'Visible','off');

%         axes(handles.axes3);
        A(:,:,1)=0.9412;
        A(:,:,2)=0.9412;
        A(:,:,3)=0.9412;
        axes(handles.axes1)
        imshow(A);
        axes(handles.axes2)
        imshow(A);
        axes(handles.axes3)
        imshow(A);
        axes(handles.axes4)
        imshow(A);
        global y;%获取全局的变量，也就是文本框里面的
        global x;
        I=handles.I;%打开的图像的句柄
        axes(handles.axes1);
        imshow(I);title('原图像');
        axes(handles.axes2);%表示的是将上面的坐标轴做为当前坐标轴,在其上做图.
        se=translate(strel(1),[x y]);  
        j=imdilate(I,se); 
        axes(handles.axes2);
        imshow(j);title('竖直平移后图像');
        axis on;                  %显示坐标系
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
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
%剪切保留上一次读取到的图片
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
%         set(handles.text3,'String','剪切的图片');
        set(handles.axes2,'visible','off');
        set(handles.axes3,'visible','off');
        set(handles.axes4,'visible','off');
        axes(handles.axes3);%将第三块axes当作剪切对象
        A=handles.I;
        [I1,rect]=imcrop(A);
        %title('剪切前','color','r');
        rectangle('Position',rect,'LineWidth',2,'EdgeColor','r')%显示图像剪切区域(会跳出一个窗体)
        axes(handles.axes4)
        imshow(I1);title('选取部分的图像');
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
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
    global v_image;%获取全局的变量，也就是文本框里面的
    if isempty(v_image)
        v_image=1;
    end
%     disp(handles);%测试打印用的
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        %disp(v_image);%测试打印用的
        switch v_image   %实现下拉列表需要写改语法
            case 1 
                I=handles.I;
                J1=flipdim(I,2);%原图像的水平镜像
                axes(handles.axes1);
                imshow(I);title('原图像');
                axes(handles.axes2);
                imshow(J1);title('水平镜像');
                %guidata(hObject,handles);%储存handles
            case 2 
                I=handles.I;
                J2=flipdim(I,1);%原图像的垂直镜像
                axes(handles.axes1);
                imshow(I);title('原图像');
                axes(handles.axes2);
                imshow(J2);title('垂直镜像');
                %guidata(hObject,handles);
            case 3
                I=handles.I;
                J3=flipdim(I,1);%原图像的水平垂直镜像
                J4=flipdim(J3,2);
                axes(handles.axes1);
                imshow(I);title('原图像');
                axes(handles.axes2);
                imshow(J4);title('水平垂直镜像');
                %guidata(hObject,handles);
        end
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
end


%创建这个窗体是吧需要的全局变量初始化
% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

%镜像的全局变量
global v_image;
v_image=1;
%给水平位移变量赋初值
global x;
x=0;
global y;
y=0;
%给旋转角度夫初值
global rotate;
rotate=0;
%缩放的比例
global res;
res=1;
global bRadius;%截止半径
bRadius=20;
global fil;%高斯跟巴特沃斯的选择
fil=1;
global filter;%高通滤波跟低通滤波
filter=1;
global lossyComCR;%压缩比
lossyComCR=0;%对应第一个
global lossyComTrans;
lossyComTrans=1;
global variance1;
variance1=0.05;%方差也是噪声密度，椒盐的默认
global matrix1;
matrix1=3;%
% disp('handles')
% set(uipanel1,'Visible','on');
% set(uipanel3,'Visible','off');
% set(uipanel4,'Visible','off');
% set(uipanel5,'Visible','off');
% set(uipanel6,'Visible','off');
% set(uipanel18,'Visible','off');



%旋转图片，逆时针为正
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
        I=handles.I;
        axes(handles.axes1);
        imshow(I);title('原图像');
        global rotate;%获取全局的变量，也就是文本框里面的
        r=imrotate(I,rotate,'nearest');%用邻插值法旋转图片
        axes(handles.axes2);
        %set(0,'defaultFigurePosition',[100,100,1000,500]);%设置窗口大小
        %set(0,'defaultFigureColor',[1 1 1]);%设置窗口颜色
        imshow(r);title({['旋转的角度:', num2str(rotate),'°']});
        axis on;                  %显示坐标系
%         figure('name','原图像比例'); 
%         imshow(I);title('原图像');
%         figure('name','旋转后的图像'); 
%         imshow(r);title({['旋转的角度:', num2str(rotate),'°']});
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
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
 cla(handles.axes2,'reset'); 
%try
%需要哈夫曼编码的源代码
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        I=handles.I;
        axes(handles.axes1);
        imshow(I);title('原图像');
        Gray=rgb2gray(I);%转化成灰度的图像
        axes(handles.axes3);
        imshow(Gray);title('灰度图像');
        [zipped,info]=huffencode(Gray);%调用哈夫曼编码程序进行压缩
        unzipped=huffdecode(zipped,info);%调用哈夫曼解码程序进行解码
        %L=info.avalen;disp(L);%平均码长
        CR=info.ratio;%disp(CR);%压缩比
        %H=info.h;disp(H);%信息熵
        %CE=info.ce;disp(CE);%编码效率
        axes(handles.axes4);
        imshow(unzipped);title('解码后的图像(哈夫曼)');
        %disp('平均码长');L=info.maxcodelen
        %disp('压缩比');CR=info.ratio
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
        %disp('信息熵');H=info.h
        %disp('编码效率');CE=info.ce
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
        warndlg('请先打开需要操作的图片');
    end
%catch
%end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        I=handles.I;
        axes(handles.axes1);
        imshow(I);title('原图像');
        RGB=rgb2gray(I);
        %RGB=I;
        axes(handles.axes2);
        imshow(RGB);title('灰度图像');
        J=imnoise(RGB,'gaussian',0,0.025);%给灰度图像添加高斯白噪声，均值为0.方差为0.025
        axes(handles.axes3);
        imshow(J);title('带噪声的图像');
        K=wiener2(J,[5 5]);
        axes(handles.axes4);
        imshow(K);title('维纳滤波降噪');
    else
        warndlg('请先打开需要操作的图片');
    end
catch
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%没用到的方法图像复原
%try
%     if  isfield(handles,'I')%判断句柄中的变量是否存在
%         I=handles.I;      
%         RGB=rgb2gray(I);
%         RGB=im2double(RGB);
%         len=50;%设置参数
%         theta=20;
%         PSF=fspecial('motion',len,theta);%产生FSP
%         J=imfilter(RGB,PSF,'conv','circular');%运动模糊
%         axes(handles.axes2);
%         imshow(J);title('灰度退化图像图像');
%         nsr=0;
%         K=deconvwnr(J,PSF,nsr);%维纳滤波
%         axes(handles.axes3);
%         imshow(K);title('复原图像(维纳滤波)'); 
%     else
%         warndlg('请先打开需要操作的图片');
%     end
%catch
%end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%维纳滤波复原图像
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');%显示复原图像
I=rgb2gray(I);
axes(handles.axes2);
imshow(I);title('灰度图像');%显示复原图像
len=28;%运动位移
theta=14;%运动角度
PSF=fspecial('motion',len,theta);
blurred=imfilter(I,PSF,'conv','circular');%读入无噪声模糊图像，并命名blurred
wnrl=deconvwnr(blurred,PSF,0.0005);%维纳滤波复原图像
axes(handles.axes3);
imshow(blurred);title('由运动形成模糊图像');%显示模糊图像
axes(handles.axes4);
imshow(wnrl);title('维纳滤波复原图像');%显示复原图像

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);%转化为灰度图像
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
J=imnoise(I,'salt & pepper',0.04);%对图像增加椒盐噪声，强度为0.04
axes(handles.axes3);    %显示在axex2框中
imshow(J); title('受椒盐噪声污染图片');
K=medfilt2(J,[6,6]);          %二维中值滤波
axes(handles.axes2);
imshow(K);title('灰度图像');
axes(handles.axes4);
imshow(K);title('二维中值滤波处理后的图片');


%傅里叶变换
% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;%读取图像 显示图像
axes(handles.axes1);
imshow(I);title('原图像');
I1=rgb2gray(I);
ii=im2double(I); %将图像矩阵类型转换为double（图像计算很多是不能用整型的），没有这个会报错！！ ，如果不用这个就必须转化为灰度图！
i1 = fft2(ii); %傅里叶变换
i2 =fftshift(i1); %将变换的频率图像四角移动到中心（原来良的部分在四角 现在移动中心，便于后面的处理）
i3=log(abs(i2)); %显示中心低频部分，加对数是为了更好的显示
axes(handles.axes2);
imshow(i3,[]);title('二维傅里叶变换');
i5 = real(ifft2(ifftshift(i2))); %频域的图反变换到空域 并取实部
i6 = im2uint8(mat2gray(i5)); %取其灰度图
axes(handles.axes3);
imshow(i6);title('逆变换');
i7=rgb2gray(I);
i8=fft2(i7);%对灰色图才能归一化。因为那是2维矩阵，彩色图是3维矩阵，需要转化为2维灰图
m=fftshift(i8); %直流分量移到频谱中心
%RR=real(m); %取傅立叶变换的实部
%II=imag(m); %取傅立叶变换的虚部
A=abs(m);%计算频谱幅值
%A=sqrt(RR.^2+II.^2);
A=(A-min(min(A)))/(max(max(A))-min(min(A)))*225; %归一化
axes(handles.axes4);
imshow(A); %显示原图像
colorbar; %显示图像的颜色条
title('灰度频谱图'); %图像命名

%DCT变换
% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
J=rgb2gray(I);%将图片转变为灰色图像
whos('J');
axes(handles.axes3);
imshow(J);title('原灰图像');
K=dct2(J);%对图像做DCT变换
axes(handles.axes2);
imshow(log(abs(K))+1,[0,10]);title('DCT变换结果');
colormap(gray(4));colorbar;
K(abs(K)<0.1)=0;
I1=idct2(K)/255;
whos('K');
axes(handles.axes4);
imshow(I1);title('压缩后重构的图像');

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im_l=handles.I;
im_l1=im2double(im_l);  
im_l2=rgb2gray(im_l1);
im_l2=imcrop(im_l2,[0,0,384,384]);
%对图像进行哈达玛变换  
H=hadamard(384);%产生384X384的Hadamard矩阵  
haImg=H*im_l2*H;  
haImg2=haImg/512;  
%对图像进行哈达玛逆变换  
hhaImg=H'*haImg2*H';  
hhaImg2=hhaImg/512;  
haImg1=im2uint8(haImg);  
hhaImg1=im2uint8(hhaImg2);  
% subplot(2,2,1);  
% imshow(im_l);  
% title('原图');  
axes(handles.axes2);
imshow(im_l2);  
title('灰度图');  
axes(handles.axes3);
imshow(haImg2);  
title('图像的二维离散Hadamard变换');  
axes(handles.axes4); 
imshow(hhaImg1);  
title('图像的二维离散Hadamard逆变换');  

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
X=rgb2gray(I);
I=im2double(X);
axes(handles.axes2);
imshow(I);title('灰度图像');
disp('原始图像I的大小:');
whos('I')
%对图像用bior3.7小波进行2层小波分解
[c,s]=wavedec2(I,2,'bior3.7');     %对图像用小波进行层分解
cal=appcoef2(c,s,'bior3.7',1);     %提取小波分解结构中的一层的低频系数和高频系数
ch1=detcoef2('h',c,s,1);          %提取二维水平方向细节系数
cv1=detcoef2('v',c,s,1);          %提取二维垂直方向细节系数
cd1=detcoef2('d',c,s,1);          %提取二维对角线方向细节系数
%分别对个频率成分进行重构
a1=wrcoef2('a',c,s,'bior3.7',1);
h1=wrcoef2('h',c,s,'bior3.7',1);
v1=wrcoef2('v',c,s,'bior3.7',1);
d1=wrcoef2('d',c,s,'bior3.7',1);
c1=[a1,h1;v1,d1];
%axes(handles.axes2);
%imshow(c1);title('分解后低频跟高频的信息');
ca1=appcoef2(c,s,'bior3.7',1);     %保留小波分解第一层低频信息
ca1=wcodemat(ca1,440,'mat',0);   %首先对第一层信息进行量化编码
ca1=0.5*ca1;                  %改变图像高度
axes(handles.axes3);
imshow(uint8(ca1));                %显示压缩后的图象
title('第一次压缩后的图像')
disp('第一次压缩图像的大小为：')
whos('ca1')
ca2=appcoef2(c,s,'bior3.7',2);     %保留小波分解第二层低频信息进行压缩
ca2=wcodemat(ca2,440,'mat',0);   %首先对第二层信息进行量化编码
ca2=0.25*ca2;                 %改变图像高度
axes(handles.axes4);
imshow(uint8(ca2));       %显示压缩后的图象 （也可以imshow(ca2,[]))不然超出范围一片空白
title('第二次压缩后的图像')
disp('第二次压缩图像的大小为：')
whos('ca2')


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像')
I_gray=rgb2gray(I);%转换为灰度图
axes(handles.axes3);
imshow(I_gray);title('灰度图像')
I_double=double(I_gray);%转换为双精度
[wid,len]=size(I_gray);%图像的大小
colorLevel=256;%灰度级
hist=zeros(colorLevel,1);%直方图
for i=1:wid%计算直方图
    for j=1:len
        m=I_gray(i,j)+1;%图像的灰度级m
        hist(m)=hist(m)+1;%灰度值为i的像素和
    end
end
%直方图归一化
hist=hist/(wid*len);%各灰度值概率 Pi
miuT=0;%定义总体均值
for m=1:colorLevel
    miuT=miuT+(m-1)*hist(m);  %总体均值
end
xigmaB2=0;%
for mindex=1:colorLevel
    threshold=mindex-1;%设定阈值
    omega1=0;%目标概率
    omega2=0;%背景概率
    for m=1:threshold-1
        omega1=omega1+hist(m);% 目标概率 W0
    end
    omega2=1-omega1; %背景的概率 W1
    miu1=0;%目标的平均灰度值
    miu2=0;%背景的平均灰度值
    for m=1:colorLevel
        if m<threshold
            miu1=miu1+(m-1)*hist(m);%目标 i*pi的累加值[1 threshold]
        else
            miu2=miu2+(m-1)*hist(m);%背景 i*pi的累加值[threshold m]
        end
    end
    miu1=miu1/omega1;%目标的平均灰度值
    miu2=miu2/omega2;%背景的平均灰度值
    xigmaB21=omega1*(miu1-miuT)^2+omega2*(miu2-miuT)^2;%最大方差
    xigma(mindex)=xigmaB21;%先设定一个值 再遍历所有灰度级
    %找到xigmaB21的值最大
    if xigmaB21>xigmaB2
        finalT=threshold;%找到阈值 灰度级
        xigmaB2=xigmaB21;%方差为最大
    end
end
%阈值归一化
fT=finalT/255;
for i=1:wid
     for j=1:len
         if I_double(i,j)>finalT %大于所设定的均值 则为目标
             bin(i,j)=0;
         else
             bin(i,j)=1;
         end
     end
end
axes(handles.axes4);
imshow(bin);title('最大类间方差')


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=handles.I;
f=rgb2gray(f);%转换为灰度图像
f=im2double(f);%数据类型转换
%全剧阈值
T=0.5*(min(f(:))+max(f(:)));
done=false;
while ~done
	g=f>=T;
	Tn=0.5*(mean(f(g))+mean(f(~g)));
	done = abs(T-Tn)<0.1;
	T=Tn;
end
display('Threshold(T)-Iterative');%显示文字
r=im2bw(f,T);
%subplot(221);imshow(f);
axes(handles.axes2);
imhist(f);
xlabel('(a)灰度图像的直方图');
axes(handles.axes3);
imshow(r);
%subplot(222);imshow(r);
title('(b)迭代法全局阈值分割');
Th=graythresh(f);%阈值
display('Global Thresholding- Otsu''s Method');
s=im2bw(f,Th);
axes(handles.axes4);
imshow(s);
title('(c)全局阈值Otsu法阈值分割');
%subplot(223);imshow(s);
%xlabel('(c)全局阈值Otsu法阈值分割');
%se=strel('disk',10);
%ft=imtophat(f,se);
%Thr=graythresh(ft);
%display('Threshold(T) -Local Thresholding');
%lt = im2bw(ft,Thr);
%subplot(224);imshow(lt);
%xlabel('(d)局部阈值分割');


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
    if  isfield(handles,'I')%判断句柄中的变量是否存在
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
        global res;%获取全局的变量，缩放比例
        I=handles.I;%打开的图像的句柄
        axes(handles.axes1);   
        imshow(I);title('原图像');
        axes(handles.axes2);%表示的是将上面的坐标轴做为当前坐标轴,在其上做图.      
        im0 = imresize(I,res);%进行缩放到原来的res倍
        imshow(im0);title({['缩放比例:', num2str(res)]}');
        axis on;                  %显示坐标系
        figure('name','原图像比例'); 
        imshow(I);title('原图像');
        figure('name','缩放后的图像'); 
        imshow(im0);title({['缩放比例:', num2str(res)]}');
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
end



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.text3,'String',res);%在text3里显示数据
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global res1;
        res1=get(handles.slider1,'value')%读取滑动条中的数据
        I=handles.I;%打开的图像的句柄
        disp(size(I));%测试 
        im0 = imresize(I,res1);%进行缩放到原来的res倍
        disp(size(im0));
        axes(handles.axes2);%表示的是将上面的坐标轴做为当前坐标轴,在其上做图.
        imshow(im0);title({['缩放比例:', num2str(res1)]}');
        axis on;     %显示坐标系
    else
        warndlg('没有剪切的图像');
    end
catch
    %warndlg('您得输入一幅图像');
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

%图像锐化的实质：锐化图像 = 原图像 + 加重的边缘
% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
I=rgb2gray(I);
axes(handles.axes2);
imshow(I);title('灰度图像');
fb=tofloat(I);  	%将图像转化为浮点型
%lapmask=[1 1 1;1 -8 1;1 1 1]; 	%拉普拉斯滤波模板
lapmask=[0,1,0;1,-4,1;0,1,0];
fen=imfilter(fb,lapmask,'replicate');%对任意类型数组或多维图像进行滤波
fen1=fb-fen;
axes(handles.axes3);
imshow(fen);title('图像的边缘');
axes(handles.axes4);
imshow(fen1);title('拉普拉斯锐化');
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
    error('不支持的图像类型');
end
out = table{classIndex,2}(inputimage);
revertclass = table{classIndex,3};


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'Visible','on');
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
axes(handles.axes1);
imshow(I);title('原图像');
I_2D=rgb2gray(I);
I1=fft2(I_2D);
I2=uint8(real(ifft2(I1)));
I1=log(1+abs(fftshift(I1)));
axes(handles.axes2);
imshow(I_2D);title('灰度图像');
axes(handles.axes4);
imshow(I1,[]);
title('fft2后的频谱');colorbar;
axes(handles.axes3);
imshow(I2,[]);
title('ifft2后的复原图像');
%三位转换成二维
function image_out=D3_To_D2(image_in)
[m,n]=size(image_in);
 n=n/3;%由于我的灰度图像是185x194x3的，所以除了3，你们如果是PxQ的，就不要加了
 A=zeros(m,n);%构造矩阵
 for i=1:m
     for j=1:n
        A(i,j)= image_in(i,j);%填充图像到A
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
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
        I=handles.I;
        axes(handles.axes1);
        imshow(I);title('原图像');
        I=rgb2gray(I);%转换为灰度图
        axes(handles.axes2);
        imshow(I);title('灰度图像');
        J=imnoise(I,'salt & pepper',0.02);
        axes(handles.axes3);
        imshow(J);title('添加椒盐噪声图像');
        %disp(get(hObject,'value'));%测试打印用的
        switch get(hObject,'value')   %实现下拉列表需要写改语法   %实现下拉列表需要写改语法
            case 1    
            case 2 
                %K1=filter2(fspecial('average',3),J);%进行3*3模板平滑滤波     
                K1=filter2(fspecial('average',3),J)/255;
                axes(handles.axes4);
                imshow(K1);title('3*3模板平滑滤波');
                %guidata(hObject,handles);%储存handles
            case 3 
%                 for i=1:3
%                     K1(:,:,i)=filter2(fspecial('average',5),J(:,:,i))/255;%在RGB图里可以用
%                 end
                K1=filter2(fspecial('average',5),J)/255;
                axes(handles.axes4);
                imshow(K1);title('5*5模板平滑滤波');
                %guidata(hObject,handles);
            case 4
%                 for i=1:3
%                     K1(:,:,i)=filter2(fspecial('average',7),J(:,:,i))/255;
%                 end
                K1=filter2(fspecial('average',7),J)/255;
                axes(handles.axes4);
                imshow(K1);title('7*7模板平滑滤波');;
                %guidata(hObject,handles);
            case 5
%                  for i=1:3
%                     K1(:,:,i)=filter2(fspecial('average',9),J(:,:,i))/255;
%                  end
                 K1=filter2(fspecial('average',9),J)/255;
                axes(handles.axes4);
                imshow(K1);title('9*9模板平滑滤波');
                %guidata(hObject,handles);
        end
    else
        warndlg('没有剪切的图像');
    end
%catch
    %warndlg('您得输入一幅图像');
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
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
axes(handles.axes1);
imshow(I1);title('原图灰度图像');
axes(handles.axes3);
imhist(I1);title('原图的直方图');
I2=histeq(I1);
axes(handles.axes2);
imshow(I2);title('直方图均衡化')
axes(handles.axes4);
imhist(I2);title('修改后的直方图');

%I1=handles.I;
%[M,N,G]=size(I1);
%result=zeros(M,N,3);
%获得每一层每一个点的RGB值，并判断其值等于多少
%for g=1:3
  %  A=zeros(1,256);
    %每处理完一层，参数要重新初始化为0
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
%展示处理效果
%axes(handles.axes3);
%imshow(I1);
%axes(handles.axes2);
%imhist(I1)


% --------------------------------------------------------------------
function Untitled_11_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% h=gcf;
% threshold;
% close(h);

% --------------------------------------------------------------------
function save_1_Callback(hObject, eventdata, handles)
% hObject    handle to save_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    [f,p]=uiputfile({'*.jpg'},'保存文件');
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
    [f,p]=uiputfile({'*.jpg'},'保存文件');
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
    [f,p]=uiputfile({'*.jpg'},'保存文件');
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
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
%         axes(handles.axes1)
%         imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
axes(handles.axes1);
imshow(I1);title('原图像的灰度图像');
axes(handles.axes3);
imhist(I1);title('原图像的直方图');
I2=imadjust(I1,[0.3 0.7],[0.1 0.9],1);
axes(handles.axes2);
imshow(I2);title('灰度变换');
axes(handles.axes4);
imhist(I2);title('灰度变换的直方图');


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
x=handles.I;
axes(handles.axes1);
imshow(x);title('原图像');
x=rgb2gray(x);
axes(handles.axes3);
imshow(uint8(x));title('灰度图像');
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
axes(handles.axes4);
imshow(uint8(b));title('梯度算子');



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
        set(handles.popupmenu6,'string',{2,8,16});
        str=get(handles.popupmenu6,'string');
        val=get(handles.popupmenu6,'value');
        %disp(str(val));
        bRadius=str2double(str(val));
        disp(bRadius);
    case 2
        set(handles.popupmenu6,'string',{4,10,60});
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
%巴特沃斯低通滤波器的传递函数为：h=1/(1+0.414*(d/d0)^(2*level));
%高斯低通滤波器的传递函数为 ：h=exp(-1/2*(d^2/d0^2));
%巴特沃斯高通滤波器的传递函数为：h=1/(1+0.414*(d0/d)^(2*level));
%高斯高通滤波器的传递函数为 ：h=1-exp(-1/2*(d^2/d0^2));
cla(handles.axes2,'reset');
global fil;
%disp(fil);
global filter;
%disp(filter);
global bRadius;
disp(bRadius);
I=handles.I;
set(handles.axes2,'visible','off');
set(handles.axes3,'visible','off');
set(handles.axes4,'visible','off');
axes(handles.axes1);
imshow(I);title('原图像')
I1=rgb2gray(I);
axes(handles.axes3);
imshow(I1);title('灰度图像');
I2=imnoise(I1,'gaussian',0.03);	 %加均值为0，方差为0.03的高斯噪声
%I3=double(I2);
fft_I=fft2(I2); 	% 二维离散傅立叶变换
shift_I=fftshift(fft_I); 	% 直流分量移到频谱中心
[M,N]=size(shift_I);
m=floor(M/2);
n=floor(N/2);
title1='';
level=4;%2级巴特沃斯滤波器 2时接近高斯，5时接近理想，但是数值更大时会有模糊效应
switch fil
    case 1
        switch filter
            case 1
                title1='高斯低通滤波';
                disp('高斯低通');
                for i=1:M
                    for j=1:N
                        d=sqrt((i-m)^2+(j-n)^2);
                        h=exp(-1/2*(d^2/bRadius^2));
                        result(i,j)=h*shift_I(i,j);
                    end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
            case 2
                title1='高斯高通滤波';
                disp('高斯高通');
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
                title1='巴特沃斯低通滤波';
                disp('巴特沃斯低通');
                for i=1:M
                    for j=1:N
                        d=sqrt((i-m)^2+(j-n)^2);
                        h=1/(1+0.414*(d/bRadius)^(2*level));
                        result(i,j)=h*shift_I(i,j);
                    end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
            case 2
                title1='巴特沃斯高通滤波';
                disp('巴特沃斯高通');
                for i=1:M
                     for j=1:N
                         d=sqrt((i-m)^2+(j-n)^2);
                         h=1/(1+0.414*(bRadius/d)^(2*level));
                         result(i,j)=h*shift_I(i,j);
                     end
                end
                result1=uint8(real(ifft2(ifftshift(result))));
        end 
end
axes(handles.axes4);
imshow(result1);title({[title1,'d=',num2str(bRadius)]});

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
%先生成噪声图片，之后再用各种来恢复
% I=handles.I;
% I=rgb2gray(I);
% I=im2double(I);
% axes(handles.axes1);
% imshow(I,[]);
% [m,n]=size(I);
% m=2*m;n=2*n;
% u=-m/2:m/2-1;
% v=-n/2:n/2-1;
% [U,V]=meshgrid(u,v);
% D=sqrt(U.^2+V.^2);
% D0=130;
% H=exp(-(D.^2)./(2*(D0^2)));%系数
% N=0.01*ones(size(I,1),size(I,2));
% N=imnoise(I,'gaussian',0,0.001);
% J=fftfilter(I,H)+N;
% axes(handles.axes2);
% imshow(J,[]);%
% HC=zeros(m,n);
% M1=H>0.1;
% HC(M1)=1./H(M1);
% K=fftfilter(J,HC);
% M2=H>0.01;
% HC(M2)=1./H(M2);
% L=fftfilter(J,HC);
% axes(handles.axes3);
% imshow(K,[]);
% axes(handles.axes4);
% imshow(L,[]);
% function Z=fftfilter(X,H)%输入的是大小跟系数
% F=fft2(X,size(H,1),size(H,2));
% Z=H.*F;
% Z=ifftshift(Z);
% Z=abs(ifft2(Z));
% Z=Z(1:size(X,1),1:size(X,2));
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
image_o = handles.I;
axes(handles.axes1)
imshow(image_o);
title('原图像');
image_o=imcrop(image_o,[0,0,384,448]);
image_o=rgb2gray(image_o);
axes(handles.axes2)
imshow(image_o);
title('灰度图像');
%频率域退化图像，退化函数H(u,v)=exp(-0.0025*( (u-M/2).^2+(v-N/2).^2).^(5/6) )
%傅里叶变换
f=im2double(image_o);
F=fft2(f);
F=fftshift(F);
%执行退化
[M,N]=size(F);
[u,v]=meshgrid(1:M,1:N);%生成二维坐标系
H=exp(-0.0025* ((u-M/2).^2+(v-N/2).^2).^(5/6) );
whos('F')
whos('H')
F=F.*H;
%傅里叶反变换
X=ifftshift(F);
x=ifft2(X);
x=uint8(abs(x)*256);
axes(handles.axes3)
imshow(x);
title('退化图像');
%ff=im2double(image_d);%将图像灰度值归一化到0-1之间
ff=im2double(x);
% 傅里叶变换
f_Id=fft2(ff);
f_Id=fftshift(f_Id);
fH_Id=f_Id;
[M,N]=size(fH_Id);
% 逆滤波
threshold=78;%滤波半径
if threshold>M/2
        %全滤波
        fH_Id=fH_Id./(H+eps);
else
        %对一定半径范围内进行滤波
        for i=1:M
            for j=1:N
                if sqrt((i-M/2).^2+(j-N/2).^2)<threshold
                    fH_Id(i,j)=fH_Id(i,j)./(H(i,j)+eps);
                end
            end
        end
end
% 执行傅立叶逆变换
fH_Id1=ifftshift(fH_Id);
f_new=ifft2(fH_Id1);
f_new=uint8(abs(f_new)*255);
axes(handles.axes4)
% whos('f_new')
imshow(f_new);
title('滤波半径=78的逆滤波复原图像');


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
X=handles.I;
axes(handles.axes1);
imshow(X);title('原图像')%画出增强图像
% cla(handles.axes2,'reset');
% cla(handles.axes4,'reset');
X=rgb2gray(X);
axes(handles.axes3);
imshow(X);title('原灰度图像')%画出增强图像
[c,s]=wavedec2(X,3,'sym4');  %进行二层小波分解
len=length(c);
justdet = prod(s(1,:));%截取细节系数起始位置（不处理近似系数）  
%处理低频分解系数，突出轮廓
for I =1:justdet
    if(c( I )>250)
      c( I )=1.5*c( I );
    end
end
%处理高频分解系数，弱化细节
for I =justdet:len
    if(c( I ) < 150)
      c( I )=0.75*c( I );
    end
end
nx=waverec2(c,s,'sym4');%分解系数重构
axes(handles.axes4);
imshow(uint8(nx));title('增强图像')%画出增强图像

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
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像')
x=rgb2gray(I);
axes(handles.axes3);
imshow(uint8(x));title('灰度图像')
switch get(hObject,'value')
    case 1
    case 2
        disp('Sobel算子');
        [H,W]=size(x);
        M=double(x);
        J=M;
        for i=2:H-1
            for j=2:W-1
                J(i,j)=abs(M(i-1,j+1)-M(i-1,j-1)+2*M(i,j+1)-2*M(i,j-1)+M(i+1,j+1)-M(i+1,j-1))+abs(M(i-1,j-1)-M(i+1,j-1)+2*M(i-1,j)-2*M(i+1,j)+M(i-1,j+1)-M(i+1,j+1));
            end
        end
        axes(handles.axes4);
        imshow(uint8(J));title('Sobel算子')
    case 3
        disp('Prewitt算子');
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
        %        %这儿处理有两种方式，绝对值和统一加一个数,不同的处理会得到不同的效果 
        %        %if b(i+1,j+1)<0 
        %        % b(i+1,j+1)=-b(i+1,j+1); 
        %        %end 
        %    end 
        %end
        axes(handles.axes4);
        imshow(uint8(J));title('Prewitt算子')
    case 4
        disp('Isotropic算子');
%         [m,n]=size(x); 
%         x=double(x); 
%         b=zeros(m,n); 
%         c=zeros(m,n); 
%         for i=1:m-2 
%             for j=1:n-2 
%                 b(i+1,j+1)=-x(i,j)-x(i+1,j)-x(i+2,j+2)+x(i,j+2)+x(i+1,j+2)+x(i+2,j+2); 
%                 c(i+1,j+1)=x(i,j)+x(i,j+1)+x(i,j+2)-x(i+2,j)-x(i+2,j+1)-x(i+2,j+2); 
%                 b(i+1,j+1)=sqrt(b(i+1,j+1)^2+c(i+1,j+1)^2)+100; 
%                 %这儿处理有两种方式，绝对值和统一加一个数,不同的处理会得到不同的效果 
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
        axes(handles.axes4);
        imshow(uint8(J));title('Isotropic算子')
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
%产生含噪图像
init=26;
randn('seed',init);
x=double(X)+38*randn(size(X));
%画出含噪图像
axes(handles.axes2)
imshow(x);
title('含噪声图像');
%下面进行图像的去噪处理
%用小波函数sym4对x进行2层小波分解
[c,s]=wavedec2(x,2,'sym4');
%提取小波分解中第一层的低频图像，即实现了低通滤波去噪
a1=wrcoef2('a',c,s,'sym4');
%画出去噪后的图像
axes(handles.axes3)
imshow(a1);title('第一次去噪图像');
%提取小波分解中第二层的低频图像，即实现了低通滤波去噪
%相当于把第一层的低频图像经过再一次的低频滤波处理
a2=wrcoef2('a',c,s,'sym4',2);
%画出去噪后的图像
axes(handles.axes4);
imshow(a2);title('第二次去噪图像');



% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
Gray=rgb2gray(I);
%以下程序为对原图像进行行程编码，压缩 
Gray_Linear=Gray(:); 
Gray_Length=length(Gray_Linear); 
j=1; 
index(1)=1; 
for z=1:1:(length(Gray_Linear)-1) %行程编码程序段 
    if Gray_Linear(z)==Gray_Linear(z+1); 
        index(j)=index(j)+1; 
    else
        Encode(j)=Gray_Linear(z);
        j=j+1; 
        index(j)=1;
    end 
end
Encode(j)=Gray_Linear(length(Gray_Linear)); %最后一个像素数据
index=uint8(index);
k=1;
for i=1:1:j
    if index(i)==1
        Encode_hex(k)=Encode(i);% 十六进制的次数或者灰度值
        k=k+1;
    else
        Encode_hex(k)=192+index(i);
        k=k+1;
        Encode_hex(k)=Encode(i);
        k=k+1;
    end
end
Encode_hex=dec2hex(Encode_hex);
Encode_hex_Length=size(Encode_hex,1);%计算行程编码后的所占字节数，Encode_hex_Length
index_Lenght=length(index);
CR=Encode_hex_Length/Gray_Length; %比较压缩前与压缩后的大小
%行程编码解码 ?
l=1; 
for m=1:index_Lenght 
    for n=1:1:index(m) 
        Decode_temp(l)=Encode(m);
        l=l+1; 
    end 
end 
Decode=reshape(Decode_temp,384,512); %重建二位图像数组 图像的长跟宽，这边使用的图像库图片长度一样384*512
axes(handles.axes3);
imshow(Gray);title('原始灰度图'); %显示原图的二值图像 
axes(handles.axes4);
imshow(Decode,[]);title('解压后的图像(行程)'); %显示解压缩恢复后的图像 ?
set(handles.text34,'String',CR)
set(handles.text35,'String',Gray_Length)
set(handles.text37,'String',Encode_hex_Length)
set(handles.text39,'String',length(Decode_temp))
e=double(Gray)-double(Decode);
[m, n]=size(e);
erms=sqrt(sum(e(:).^2)/(m*n));
set(handles.text41,'String',erms);
%disp('压缩比：'); 
%disp(CR); 
%disp('原图像数据的长度：'); 
%disp(Gray_Length); 
%disp('压缩后图像数据的长度'); 
%disp(Encode_hex_Length); 
%disp('解压缩后的数据长度'); 
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
%显示预测误差值
%figure(1);
%subplot(121);title('1');
%imshow(I);
%subplot(122);
axes(handles.axes2);
imshow(mat2gray(y));title('预测误差图像')
%计算均方差误差，因为是无损编码，那么erms应该为０
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
%显示原图直方图
%figure(2);
%subplot(121);
axes(handles.axes3);
[h, f]=hist(x(:));    
bar(f,h,'k');title('原图直方图');
%显示预测误差的直方图
%subplot(122);
axes(handles.axes4);
[h, f]=hist(y(:));    
bar(f, h,'k');title('预测误差的直方图');
% x=uint8(x);
% xx=uint8(xx);
% whos('x');
% whos('xx');
%编码器%LPCencode函数用一维无损预测编码压缩图像x,a为预测系数，如果a默认，则默认a=１，就是前值预测。
function y=LPCencode(x, a)
%error(nargchk(1, 2, nargin));
if nargin<2
    a=1;
end
x=double(x);   
[m, n]=size(x);
p=zeros(m, n);  %存放预测值
xs=x;   
zc=zeros(m, 1);
for i=1:length(a)
    xs=[zc  xs(:, 1:end-1)];    
    p=p+a(i)*xs;
end
y=x-round(p);
%解码器
%LPCdecode函数的解码程序，与编码程序用的是同一个预测器
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
global lossyComTrans;
lossyComTrans=get(hObject,'value');
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
global lossyComCR;
lossyComCR=get(hObject,'value');
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


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% cla(handles.axes2,'reset'); 
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
global lossyComCR;%压缩比
global lossyComTrans;
cr=0.5;       %压缩比为2:1
switch lossyComCR
    case 1
        cr=0.5;     %2:1
    case 2
        cr=0.125;   %8:1
end
% cr=1;
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
I1=rgb2gray(I);
%这里的图像是384*512，所以分割方式不同
I1=double(I1)/255;
% cr
% lossyComTrans
axes(handles.axes3);
imshow(I1);title('原图像的灰度图');
switch lossyComTrans
%     case 1 
    case 1
        fftcoe=blkproc(I1,[8 8],'fft2(x)');%将图片分割成8*8的子图像进行fft48*64个
        coevar=im2col(fftcoe,[8 8],'distinct');%将变换系数矩阵重新排列
        coe=coevar;
        [y,ind]=sort(coevar);
        [m,n]=size(coevar);%根据压缩比确定要变0的系数个数
        snum=64-64*cr;
        %舍去不充分的系数
        for i=1:n
            coe(ind(1:snum),i)=0;
        end
        b2=col2im(coe,[8 8],[384 512],'distinct');%重新排列系数矩阵
        %对子图像快进行fft逆变换获得个子图像的复原图像，并显示压缩图像
        I2=blkproc(b2,[8 8],'ifft2(x)');
        axes(handles.axes4);
        imshow(I2);title(['(傅里叶)压缩比为',num2str(1/cr),':1的压缩图像']);
        e=double(I1)-double(I2);
        [m,n]=size(e);
        erms=sqrt(sum(e(:).^2)/(m*n));
        set(handles.text43,'String',erms);
        whos('I1');
        whos('I2');
    case 2
        %对图像进行哈达吗变换
        t=hadamard(8);
        htcoe=blkproc(I1,[8 8],'P1*x*P2',t,t);
        coevar=im2col(htcoe,[8 8],'distinct');
        coe=coevar;
        [y,ind]=sort(coevar);
        [m,n]=size(coevar);%根据压缩比确定要变0的系数个数
        snum=64-64*cr;
        %舍去不充分的系数
        for i=1:n
            coe(ind(1:snum),i)=0;%将最小的snum个数变换系数清0
        end
        b2=col2im(coe,[8 8],[384 512],'distinct');%重新排列系数矩阵
        %对截取后的变换系数进行哈达吗逆变换
        I2=blkproc(b2,[8 8],'P1*x*P2',t,t);
        I2=I2./(8*8);
        axes(handles.axes4);
        imshow(I2);title(['(哈达吗)压缩比为',num2str(1/cr),':1的压缩图像']);
        e=double(I1)-double(I2);
        [m,n]=size(e);
        erms=sqrt(sum(e(:).^2)/(m*n));
        set(handles.text43,'String',erms);
        whos('I1');
        whos('I2');
end
%axes(handles.axes2);
%imshow(result1);title(title1);


% --- Executes during object creation, after setting all properties.
function pushbutton55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%改进的分水岭分割（之前的梯度图中有过多的局部极小点）
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
I=rgb2gray(I);
axes(handles.axes3);
imshow(I);title('灰度图像');
%计算灰度图
I=double(I);
hv=fspecial('prewitt');
hh=hv.';
gv=abs(imfilter(I,hv,'replicate'));
gh=abs(imfilter(I,hh,'replicate'));
g=sqrt(gv.^2+gh.^2);
%计算距离函数
%subplot (232);
df=bwdist(I) ;
%imshow (uint8 (df*8)) ;
%计算外部约束
L=watershed(df) ;
em=L==0;
%subplot(233);
%imshow(em);
%计算内部约束
im=imextendedmax(I,20);
%subplot(234);
%imshow (im);%重构梯度图
g2= imimposemin(g,im|em);
%subplot(235);
%imshow(g2);
%watershed算法分割
L2=watershed(g2);
wr2=L2==0;
%subplot(236);
I(wr2)=255;
axes(handles.axes4);
imshow(uint8(I));title('分割结果');





% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
axes(handles.axes2);
imshow(I);
title('灰度图像');
I=double(I) ;%计算距离函数
hv=fspecial('prewitt');
hh=hv.';
gv=abs(imfilter(I,hv,'replicate'));
gh=abs(imfilter(I,hh,'replicate'));
g=sqrt(gv.^2+gh.^2);
%watershed算法分割
L=watershed(g);
wr=L==0;
axes(handles.axes3)
imshow(wr) ;
title('分水岭');
I(wr)=255;
axes(handles.axes4)
imshow(uint8(I));
title('分割结果');%取出梯度图中局部极小值点



%I=handles.I;
%I=rgb2gray(I);
%filenum=size(I,1);  
%for i=1:filenum   
 %   im=imread(strcat(DIR,sprintf('%d',i),'.jpg'));   
 %   b=im;
 %   [x,y,z]=size(im);
 %   if y>x
%        b(x+1:y,:)=255;
%    else
%        b(:,y+1:x)=255;
%    end
%end
%axes(handles.axes4);
%imshow(b)
%title('四叉树分解');
%S=qtdecomp(I,.27);
%blocks = repmat (uint8(0),size(S));
%for dim=[512 256 128 64 32 16 8 4 2 1 ];
%    numblocks = length(find(S==dim));
%    if (numblocks >0)
%        values=repmat(uint8(1),[dim dim numblocks]);
%        values(2:dim,2:dim,:)=0;
%        blocks=qtsetblk(blocks,S,dim,values);
%    end
%end
%blocks(end,1:end)=1;
%blocks(1:end,end)=1;
%axes(handles.axes2);imshow(I),title('灰度图像'); 
%axes(handles.axes3);
%imshow(blocks,[])
%title('四叉树分解');


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%{
I=handles.I;
% axes(handles.axes1)
% imshow(I);
% title('原图像');
I=rgb2gray(I);
axes(handles.axes1)
imshow(I);
title('灰度图像');
%axis([50,250,50,200]);grid on; %显示网格线axis on; %显示坐标系
[m,n]=size(I); %测量图像尺寸参数
GP=zeros(1,256); %预创建存放灰度出现概率的向量
for k=0:255
    GP(k+1)=length(find(I==k))/(m*n); %计算位置
end
axes(handles.axes2);
bar(0:255,GP,'g') %绘制直方图
title('灰度直方图');
% xlabel('灰度值');
% ylabel('出现概率');
I2=im2bw(I,70/255);
axes(handles.axes3);
imshow(I2);
title('阈值70的分割图像')
%axis([50,250,50,200]);
% grid on; %显示网格线
% axis on, %显示坐标系
I3=im2bw(I,120/255);
axes(handles.axes4);
imshow(I3);
title('阈值120的分割图像');
%axis([50,250,50,200]);
% grid on; %显示网格线
% axis on; %显示坐标系仿直效果如阁
%}
try
    global fenge;
    fenge=1;
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        fenge=handles.I;%打开的图像的句柄
    end
    h=gcf;
    threshold;
    close(h);
catch
    %warndlg('您得输入一幅图像');
end

% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = handles.I;
f_gray = rgb2gray(f);
f_h = imhist(f_gray);
k = length(f_h);
entropy_list = [];
for T = 1: k
    entropy_list(T) = entropy_sum(f_gray,T);
end
[max_entropy_sum, ind] = max(entropy_list);
ind = ind/(k-1);
f_bw = im2bw(f_gray,ind);
imshow(f_bw);
%function entropy = entropy_sum(img, T)
%    [M, N] = size(img);
 %   img_h = imhist(img);
%    k = length(img_h);
%    P0 = sum(img_h(1:T))/(M*N);
%    P1 = 1 - P0;
 %   img_h = img_h/(M*N);
 %   H0 = 0;
 %   H1 = 0;
  %  for i = 1:T
   %     Z = img_h(i)/P0;
   %     H0 = H0 - Z*log2(Z);
   % end

   % for j = T+1: k
    %     Z = img_h(j)/P1;
    %     H1 = H1 - Z*log2(Z);
   % end
   % entropy = H0 + H1;
%end


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%没用到的方法图像复原
% I=handles.I;
% I=rgb2gray(I);
% PSF=fspecial('gaussian',10,4);
% Blurred=imfilter(I,PSF,'conv');
% V=0.3;
% BN=imnoise(Blurred,'gaussian',0,V);
% NP=V*prod(size(I));
% %NP=V*numel(I);
% [reg,LAGRA]=deconvreg(BN,PSF,NP);
% Edged=edgetaper(BN,PSF);
% reg2=deconvreg(Edged,PSF,NP/1.2);
% reg3=deconvreg(Edged,PSF,[],LAGRA);
% axes(handles.axes2);
% imshow(BN);title('加入高斯噪声的图像');
% axes(handles.axes3);
% imshow(reg2);title('恢复后的图像');
% axes(handles.axes4);
% imshow(reg2);title('恢复后的图像');


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
I = im2double(I);
[hei,wid,~] = size(I);
axes(handles.axes2);
imshow(I);title('灰度图像');
%subplot(2,2,1),imshow(I);
%title('原图像');
% 模拟运动模糊.
LEN = 21;
THETA = 11;
PSF = fspecial('motion', LEN, THETA);%产生运动模糊算子，即点扩展函数
blurred = imfilter(I, PSF, 'conv', 'circular');
%subplot(2,2,2), imshow(blurred); title('模糊图像');
Pf = psf2otf(PSF,[hei,wid]);%退化函数的FFT
% 添加加性噪声
noise_mean = 0;
noise_var = 0.00001;
blurred_noisy = imnoise(blurred, 'gaussian',noise_mean, noise_var);
axes(handles.axes3);
imshow(blurred_noisy);title('带运动模糊和噪声图像');
p = [0 -1 0;-1 4 -1;0 -1 0];%拉普拉斯模板
P = psf2otf(p,[hei,wid]);
gama = 0.001;
If = fft2(blurred_noisy);
numerator = conj(Pf);%conj函数，用于求一个复数的复共轭
denominator = Pf.^2 + gama*(P.^2);
deblurred2 = ifft2( numerator.*If./ denominator );%约束最小二乘方滤波在频率域中的表达式
axes(handles.axes4);
imshow(deblurred2);title('约束最小二乘方滤波后图像');


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
axes(handles.axes2);
imshow(I);title('灰度图像')
PSF=fspecial('gaussian',10,10);
Blurred=imfilter(I,PSF,'symmetric','conv');
V=0.003;
BN=imnoise(Blurred,'gaussian',0,V);
luc=deconvlucy(BN,PSF,5);
% axes(handles.axes2);
% imshow(Blurred);title('模糊后的图像')
axes(handles.axes3);
imshow(BN);title('模糊加噪后的图像')
axes(handles.axes4);
imshow(luc);title('恢复后的图像')



% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.I;
I=rgb2gray(I);
PSF=fspecial('motion',10,30);
Blurred=imfilter(I,PSF,'circ','conv');
INITPSF=ones(size(PSF));
[J,P]=deconvblind(Blurred,INITPSF,20);
axes(handles.axes2);
imshow(I);title('灰度图像');
axes(handles.axes3);
imshow(Blurred);title('模糊后的图像');
axes(handles.axes4);
imshow(J);title('初步恢复后的图像');


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);    %显示在axes2框中
imshow(I);title('原图像');
I=rgb2gray(I);
axes(handles.axes3);    %显示在axes2框中
imshow(I);title('灰度图像');
switch get(hObject,'value')
    case 1
    case 2
        BW5=edge(I,'sobel');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('Sobel算子');
    case 3
        BW5=edge(I,'roberts');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('Roberts算子');
    case 4
        BW5=edge(I,'prewitt');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('Prewitt算子');
    case 5
        BW5=edge(I,'log');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('LOG算子');
    case 6
        BW5=edge(I,'canny');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('Canny算子');
    case 7
        BW5=edge(I,'zerocross');%进行canny算子边缘检测，门限值采用默认值
        axes(handles.axes4);    %显示在axes2框中
        imshow(BW5,[]);title('Zerocross算子');
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13


% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% cla(handles.axes2,'reset');
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow(I);title('原图像');
I=rgb2gray(I);
I=im2double(I);
T0=0.01;  %参数TO
T1=(min(I(:))+max(I(:)))/2;
% disp(I(:));
% disp(max(I(:)));
% disp(min(I(:)));
% disp(T1);
r1=find(I>T1) ;
r2=find(I<=T1) ;
T2= (mean(I(r1))+mean(I(r2)))/2;
disp(T2);
while abs(T2-T1)>T0  %迭代求阈值
      T1=T2;
      r1=find(I>T1);
      r2=find(I<=T1) ;
      T2=(mean(I(r1))+mean(I(r2)))/2;
end
disp(T2);
J=im2bw(I,T2) ;  %图像分割
axes(handles.axes3);
imshow(I);title('灰度图像');
axes(handles.axes4);
imshow(J);title('迭代法求阈值分割图像');


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A(:,:,1)=0.9412;
A(:,:,2)=0.9412;
A(:,:,3)=0.9412;
axes(handles.axes1)
imshow(A);
axes(handles.axes2)
imshow(A);
axes(handles.axes3)
imshow(A);
axes(handles.axes4)
imshow(A);
I=handles.I;
axes(handles.axes1);
imshow (I);
title ('原图像')
% cla(handles.axes2,'reset');
I=rgb2gray(I);
b=imcrop(I,[0,0,256,256]);%必须是2的阶层
axes(handles.axes3);
imshow (b,[]);
title ('正方形灰度图')
whos('b')
S=qtdecomp(b,.27);
blocks = repmat(uint8(0),size(S));
for dim=[512 256 128 64 32 16 8 4 2 1];
    numblocks = length(find(S==dim)) ;
    if (numblocks > 0)
        values = repmat (uint8(1), [dim dim numblocks]);
        values(2:dim,2:dim,:) = 0;
        blocks = qtsetblk(blocks,S,dim, values);
    end
end
blocks(end,1:end) = 1;
blocks(1:end,end) = 1;
%subplot (121) ; 
%imshow(I),xlabel(' (a)原始图像')
axes(handles.axes4);
imshow (blocks,[]);
title ('四叉树分解')


% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global variance1;%定义一个x的全局变量
variance1=str2num(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global variance1;
        variance=variance1;
        global matrix1;
        matrix=matrix1;
        if isempty(variance)
            warndlg('请重新输入，必须是输入数字！');
        % elseif isnan(variance)
        %     warndlg('请输入数字')
%         elseif isempty(matrix)
%             warndlg('请重新输入，必须是输入数字！');
%         elseif matrix<=2 || mod(matrix,2)==0
%             warndlg('必须为单数矩阵！');
        elseif variance<0 || variance >1
            warndlg('请重新输入，必须是0-1之间的数值！');
        else
            global pic;
            A(:,:,1)=0.9412;
            A(:,:,2)=0.9412;
            A(:,:,3)=0.9412;
            %         axes(handles.axes1)
            %         imshow(A);
            axes(handles.axes2)
            imshow(A);
            axes(handles.axes3)
            imshow(A);
            axes(handles.axes4)
            imshow(A);
            I=handles.I;
            I=rgb2gray(I);%转化为灰度图像
            J=imnoise(I,'salt & pepper',variance);%对图像增加椒盐噪声，强度为0.04
            pic=J;
            axes(handles.axes3)
            imshow(J);title('椒盐噪声');
        end
    else
        warndlg('请先输入图像！');
    end
catch
    %warndlg('您得输入一幅图像');
end


function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global matrix1;
matrix1=str2num(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global pic;
        global matrix1;
        matrix=matrix1;
        I=handles.I;
        I=rgb2gray(I);%转化为灰度图像
        if isempty(pic)
            pic=I
        end
        if isempty(matrix)
            warndlg('请重新输入，必须是输入数字！');
%         elseif matrix<=2 || mod(matrix,2)==0
%             warndlg('必须为单数矩阵！');
        elseif rem(matrix,1)
             warndlg('必须输入整数！');
        else
            A(:,:,1)=0.9412;
            A(:,:,2)=0.9412;
            A(:,:,3)=0.9412;
            %         axes(handles.axes1)
            %         imshow(A);
            axes(handles.axes2)
            imshow(A);
            axes(handles.axes3)
            imshow(A);
            axes(handles.axes4)
            imshow(A);
            axes(handles.axes2);    %显示在axex2框中
            imshow(I); title('灰度图像');
            axes(handles.axes3);    %显示在axex2框中
            imshow(pic); title('处理前的图像');
            K=medfilt2(pic,[matrix,matrix]);          %二维中值滤波
            axes(handles.axes4);
            imshow(K);title({['中值滤波:矩阵[',num2str(matrix),'*',num2str(matrix),']']});
        end
    else
        warndlg('请先输入图像！');
    end
catch
    %warndlg('您得输入一幅图像');
end


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global pic;
        global matrix1;
        matrix=matrix1;
        I=handles.I;
        I=rgb2gray(I);%转化为灰度图像
        if isempty(pic)
            pic=I
        end
        if isempty(matrix)
            warndlg('请重新输入，必须是输入数字！');
%         elseif matrix<=2 || mod(matrix,2)==0
%             warndlg('必须为单数矩阵！');
        elseif rem(matrix,1)
             warndlg('必须输入整数！');
        else
            A(:,:,1)=0.9412;
            A(:,:,2)=0.9412;
            A(:,:,3)=0.9412;
            %         axes(handles.axes1)
            %         imshow(A);
            axes(handles.axes2)
            imshow(A);
            axes(handles.axes3)
            imshow(A);
            axes(handles.axes4)
            imshow(A);
            axes(handles.axes2);    %显示在axex2框中
            imshow(I); title('灰度图像');
            axes(handles.axes3);    %显示在axex2框中
            imshow(pic); title('处理前的图像');
            K=filter2(fspecial('average',matrix),pic)/255;          %二维中值滤波
            axes(handles.axes4);
            imshow(K);title({['均值滤波:矩阵[',num2str(matrix),'*',num2str(matrix),']']});
        end
    else
        warndlg('请先输入图像！');
    end
catch
    %warndlg('您得输入一幅图像');
end


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global pic;
        global matrix1;
        matrix=matrix1;
        I=handles.I;
        I=rgb2gray(I);%转化为灰度图像
        if isempty(pic)
            pic=I
        end
        if isempty(matrix)
            warndlg('请重新输入，必须是输入数字！');
%         elseif matrix<=2 || mod(matrix,2)==0
%             warndlg('必须为单数矩阵！');
        elseif rem(matrix,1)
             warndlg('必须输入整数！');
        else
            A(:,:,1)=0.9412;
            A(:,:,2)=0.9412;
            A(:,:,3)=0.9412;
            %         axes(handles.axes1)
            %         imshow(A);
            axes(handles.axes2)
            imshow(A);
            axes(handles.axes3)
            imshow(A);
            axes(handles.axes4)
            imshow(A);
            axes(handles.axes2);    %显示在axex2框中
            imshow(I); title('灰度图像');
            axes(handles.axes3);    %显示在axex2框中
            imshow(pic); title('处理前的图像');
            K=wiener2(pic,[matrix1 matrix1]);          %二维中值滤波
            axes(handles.axes4);
            imshow(K);title({['均值滤波:矩阵[',num2str(matrix),'*',num2str(matrix),']']});
        end
    else
        warndlg('请先输入图像！');
    end
catch
    %warndlg('您得输入一幅图像');
end


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    if  isfield(handles,'I')%判断句柄中的变量是否存在
        global variance1;
        variance=variance1;
        global matrix1;
        matrix=matrix1;
        if isempty(variance)
            warndlg('请重新输入，必须是输入数字！');
        % elseif isnan(variance)
        %     warndlg('请输入数字')
%         elseif isempty(matrix)
%             warndlg('请重新输入，必须是输入数字！');
%         elseif matrix<=2 || mod(matrix,2)==0
%             warndlg('必须为单数矩阵！');
        elseif variance<0 || variance >1
            warndlg('请重新输入，必须是0-1之间的数值！');
        else
            global pic;
            A(:,:,1)=0.9412;
            A(:,:,2)=0.9412;
            A(:,:,3)=0.9412;
            %         axes(handles.axes1)
            %         imshow(A);
            axes(handles.axes2)
            imshow(A);
            axes(handles.axes3)
            imshow(A);
            axes(handles.axes4)
            imshow(A);
            I=handles.I;
            I=rgb2gray(I);%转化为灰度图像
            J=imnoise(I,'gaussian',0,variance);%给灰度图像添加高斯白噪声，均值为0.方差为0.025
            pic=J;
            axes(handles.axes3)
            imshow(J);title('椒盐噪声');
        end
    else
        warndlg('请先输入图像！');
    end
catch
    %warndlg('您得输入一幅图像');
end
