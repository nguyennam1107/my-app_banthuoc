   M S B A M L   `   `   `  ���� A  =Nhom_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Nhom_1.ViewModelNhom_1.ViewModel  )clr-namespace:Nhom_1.ViewNhom_1.View  X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fP:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.SharpFontAwesome.Sharp     Nhom_1.View.Main   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4	ViewModelclr-namespace:Nhom_1.ViewModel     +localclr-namespace:Nhom_1.View     Ifa:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.Sharp       � Title$  MainWindowView��$	��700��$
��1300�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�
������  � AllowsTransparency .  � DataContext $   Nhom_1.ViewModel.MainViewModel   � 	Resources  �� DataType$  Nhom_1.ViewModel.HomeViewModel   Nhom_1.View.HomeView(  "Nhom_1.ViewModel.CustomerViewModel   Nhom_1.View.CustomerView)  #Nhom_1.ViewModel.DashBoardViewModel   Nhom_1.View.Dashboard$  Nhom_1.ViewModel.OderViewModel	   Nhom_1.View.Oder#
  Nhom_1.ViewModel.BuyViewModel   Nhom_1.View.BuyView'  !Nhom_1.ViewModel.SettingViewModel    Nhom_1.View.SettingsWindow��%�   (��       *, +)(��      *, +)(�� $     *, +)(�� 6     *, +)(�� H     *,
 +)(�� Z     *, +)�� "  .R�  �� "  .R�  �� "  .R�  �� "  .R�	  �� " 
 .R�  �� "  .R�  .����  �� CornerRadius$ 10��$��1q�����  �� 
StartPoint$	 0,0&�	 �� EndPoint$		 1,1&�.���    winBorderColor1
 � Color#
 [   � Offset$ 0Q��   winBorderColor2#
 [ $	 0.5Q��   winBorderColor3#
 [ $ 1Q�._��  � ColumnDefinitions �� $	��250 ��� $��* �.+��� $ 	10,0,0,10��$��0������ $	 0,0&�$	 1,0.7&�.���   secondaryBackColor1#
 [ $ 0Q��   secondaryBackColor2#
 [ $ 1Q�._��� .+���  �� Orientation$ 
Horizontal=�$��35��$��
15,25,0,40q�.+��� $��/img/Logo.png��$��30���� $��Hiệu thuốc��  titleColor2#��[ $��20(�$��
Montserrat)�$��Medium"�$��Center=�$��10,0,0,0q�	�   
menuButton#��[  
 color1
 � Tag# [ ���� *ShowDashBoardViewCommand+.���� $ 
Horizontal=�.+�!  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ 	ChartLine=�  menuButtonIcon#��[ �� $��	Dashboard�� 	 menuButtonText#��[	 	� #��[ # [  d� 	IsChecked$
 TrueY����� *ShowHomeViewCommand+.���� $ 
Horizontal=�.+�  $
 Home=�#��[ �� $��Trang Chủ��#��[	 	� #��[  

 color2# [
 ���� *ShowCustomerViewCommand+.���� $ 
Horizontal=�.+�  $ Search=�#��[ �� $��Tìm Kiếm��#��[	 	� #��[  
 color4# [ ���� *ShowOderViewCommand+.���� $ 
Horizontal=�.+�  $ BagShopping=�#��[ �� $��Giỏ Hàng��#��[	 	� #��[  
 color6# [ ���� *ShowSettingViewCommand+.���� $ 
Horizontal=�.+�  $
 Gear=�#��[ �� $��Cài Đặt��#��[	 �� $ 	0,10,10,0��$��1������ $	 1,1&�$		 0,0&�.���   primaryBackColor1#
 [ $ 0Q��   primaryBackColor2#
 [ $ 1Q�._��  � RowDefinitions �� $��25 ��� $��35 ��� $��* �.+��� -    ��Name$ pnlControlBar��$��0��$ 
Horizontal=�$��RightToLeft=�
������ $��0,0,5,0q�.+��� -    ��Name$ btnClose��  controlButton#��[ # [ .��  $ Xmark=�  controlButtonIcon#��[ �� -   $ btnMaximize��#��[ # [ .��  $ Square=�#��[ �� -   $ btnMinimize��#��[  
 color8# [ .��  $ WindowMinimize=�$��12��� $��1�� �� �� .+��� $��0��$ 
Horizontal=�$��Center=�.+�  $��20��$��20��   
Foreground# [ $��	35,0,10,0q� �� *Icon+�� #��[ $��16(�$��
Montserrat)�$��Medium"�$��Center=����� *	Caption+�� $��1��$ 
Horizontal=�$��RightToLeft=�$��Center=�$��0,0,10,0q�.+���   
iconButton#��[ # [ .��  $ 	AngleDown=�$��12��$��12��  iconButtonIcon#��[ ��   titleColor3#��[ $��
Montserrat)�$��12(�$��Center=����� *CurrentUserAccount.TenHienThi+A� $��35��$��35��#��[
 $��2��$��	10,0,10,0q�����  �� ImageSource$ /img/Profile.jpg���� #��[  
 color3# [ .��  $ Clock=�#��[ �� #��[ # [ .��  $ Envelope=�#��[ �� #��[  
 color5# [ .��  $
 Bell=�#��[ �� $��2��$��25q����� *CurrentChildView+