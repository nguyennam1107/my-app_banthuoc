   M S B A M L   `   `   `  ���� A  =Nhom_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Nhom_1.ViewNhom_1.View  3clr-namespace:Nhom_1.ViewModelNhom_1.ViewModel  =#clr-namespace:Nhom_1.CustomControlsNhom_1.CustomControls      Nhom_1.View.view_login   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:Nhom_1.View     4	ViewModelclr-namespace:Nhom_1.ViewModel     >customcontrols#clr-namespace:Nhom_1.CustomControls     -     � Title$  	LoginView��$	��550��$	��800�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�
������  � AllowsTransparency .  � DataContext %   Nhom_1.ViewModel.LoginViewModel   � 	Resources    BooleanToVisibility��%   &	        �� y���  �� Path$ IsViewVisible� �� Mode$ TwoWay=�	 �� 	Converter#	 [  .���� 
 �� CornerRadius$
 12������  �� ImageSource$ /img/backgroud_login.jpg�� j� Stretch$
 None=�._��� $
 10��$��2q� J� Opacity$
 0.95Q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #462AD8�� � Offset$ 0Q�� $ #DA34AE��$
 0.75Q�� $ #8A16C1��$ 1Q����� $	 0,1&�$	 1,0&�.��� $ #060531��$ 0Q�� $ #1B1448��$ 1Q�._��  � RowDefinitions �� $��30 ��� .+�� $��0�� � ColumnDefinitions �� �� $��25 ��� $��25 ��� $��5 �.+��� $��LOG IN��
�������$��10(�$��
Montserrat)�$��0��$��Center=�$��10,0,0,0q��� -    ��Name$ btnMinimize��$��0q�$��-��
�������$��16(�$��
Montserrat)� � Cursor$
 Hand��$��1������  �� 
TargetType" ��.���  �� Property � �� �� Value �#28AEED �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#278BEF����  �� 
TargetType" ��.R��� $��18��$��18��$
 9��#��z��._��� $��Center=�$��Center=��� -   $ btnClose��$��0q�$��X��
�������$��12(�$��
Montserrat)�$
 Hand��$��2������ " ��.���  � �� �#DA34AE P�  �@J�IsMouseOver . . ���  � �� �#C62DAE���� " ��.R��� $��18��$��18��$
 9��#��z��._��� $��Center=�$��Center=��� $	��220��$��1�� �� Orientation$ Vertical=�$��0,35,0,0q�.+��� $��/img/Logo.png��$	��100��$	��100���� $��Đăng Nhập��
�������$��25(�$��Medium"�$��
Montserrat)�$��Center=��� $��
2NG store.��
�������$��12(�$��Medium"�$��
Montserrat)�$
��Wrap=� �� TextAlignment$ Center=�$��0,5,0,0q��� $��Username��
�������$��12(�$��Medium"�$��
Montserrat)�$��0,35,0,0q��� -    ��Name$ txtUser��$��13(�$��Medium"�$��
Montserrat)�
�������  �� 
CaretBrush
  �����
�������$��0,0,0,2q�$��28��$��Center=�$��0,5,0,0q�$��20,0,0,0q����� *
Username+! �� UpdateSourceTrigger$! PropertyChanged=�.������ $ /img/user-icon.png��$
 None=�" j� 
AlignmentX$
" Left=�.���� $��Password��
�������$��12(�$��Medium"�$��
Montserrat)�$��0,15,0,0q�/   )Nhom_1.CustomControls.BindablePasswordBox  $��28��$��0,5,0,0q�#   Password# �� *
Password+$ TwoWay=�$! PropertyChanged=��� ���#D7596D$��12(�$��Medium"�$��
Montserrat)�$��0,10,0,0q�$
��Wrap=����� *ErrorMessage+�� -   $ btnLogin��$��0q�$��LOG IN��
�������$��12(�$��
Montserrat)�$
 Hand��$��0,50,0,0q����� *LoginCommand+���� " ��.���  � �� �#462AD8 P�  �@J�IsMouseOver . . ���  � �� �#28AEED���� " ��.R��� $	��150��$��40��$
 20��#��z��._��� $��Center=�$��Center=��� $ 
Horizontal=�$��Center=�$��0,15,0,0q�.+��� $��Forgot Password?��
�������$��12(�$��Medium"�$��
Montserrat)��� $��Reset��
�������$��12(�$��Medium"�$��
Montserrat)�$
 Hand��$��8,0,0,0q�]� $	��100����.  