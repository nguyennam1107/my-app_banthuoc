   M S B A M L   `   `   `  ����A  =Nhom_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Nhom_1.ViewModelNhom_1.ViewModel  5   	   )clr-namespace:Nhom_1.ViewNhom_1.View  5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fP:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.SharpFontAwesome.Sharp 5   	       Nhom_1.View.Main   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4	ViewModelclr-namespace:Nhom_1.ViewModel     5   	   +localclr-namespace:Nhom_1.View     5   	   Ifa:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.Sharp     5   	     � Title$  MainWindowView��5	   	   $	��700��6    $
��1300��6-    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency .  � DataContext 5      $   Nhom_1.ViewModel.MainViewModel  5   
    � 	Resources 5       �� DataType$  Nhom_1.ViewModel.HomeViewModel   Nhom_1.View.HomeView(  "Nhom_1.ViewModel.CustomerViewModel   Nhom_1.View.CustomerView)  #Nhom_1.ViewModel.DashBoardViewModel   Nhom_1.View.Dashboard$  Nhom_1.ViewModel.OderViewModel	   Nhom_1.View.Oder#
  Nhom_1.ViewModel.BuyViewModel   Nhom_1.View.BuyView��%w  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)(�� �     5      *,
 +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5      	  5      �� 5   
   " 
 6   .R�5         5!      5"      .��5#      ��  �� CornerRadius$ 10��6   $��1q�5$   	   ��5&   
   �� 5'       �� 
StartPoint$	 0,0&�6"   	 �� EndPoint$		 1,1&�63   .��5(      �    winBorderColor1
 � Color#
 [  6    � Offset$ 0Q�6H   � 5)        winBorderColor2#
 [ 6   $	 0.5Q�6H   � 5*        winBorderColor3#
 [ 6   $ 1Q�6H   5+      ._�5.   
   �  � ColumnDefinitions 5/      �� 51      $	��250 �6#   �� 53      $��* �6#   .+�57      �� $ 	10,0,0,10��6   $��0��58      ��5:      �� 5;      $	 0,0&�6*   $	 1,0.7&�6;   .��5<      �   secondaryBackColor1#
 [ 6'   $ 0Q�6T   � 5=        secondaryBackColor2#
 [ 6'   $ 1Q�6T   5>      ._�5A      �� .+�5D      ��  �� Orientation$ 
Horizontal=�6!   $��35��5E      $��
15,25,0,40q�5F      .+�5G      �� $��/img/Logo.png��6    $��30��67   �� 5H      $��Hiệu thuốc��6$     titleColor2#��[ 5I       $��20(�5J       $��
Montserrat)�5K       $��Medium"�5L       $��Center=�5M       $��10,0,0,0q�5N       5O      	� 5Q        
menuButton#��[ 6"    
 color1
 � Tag# [ 5R      ��5S      �� *ShowDashBoardViewCommand+.��5T      �� $ 
Horizontal=�6%   .+�5U      !  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ 	ChartLine=�6+     menuButtonIcon#��[ 6<   �� 5V      $��	Dashboard��6(    	 menuButtonText#��[	 69   5W      5X      	� 5Y      #��[ 6"   # [ 5Z       d� 	IsChecked$
 TrueY�5[      ��5\      �� *ShowHomeViewCommand+.��5]      �� $ 
Horizontal=�6%   .+�5^        $
 Home=�6+   #��[ 67   �� 5_      $��Trang Chủ��6(   #��[	 69   5`      5a      	� 5b      #��[ 6"    

 color2# [
 5c      ��5d      �� *ShowCustomerViewCommand+.��5e      �� $ 
Horizontal=�6%   .+�5f        $ Search=�6+   #��[ 69   �� 5g      $��Tìm Kiếm��6(   #��[	 68   5h      5i      	� 5j      #��[ 6"    
 color4# [ 5k      ��5l      �� *ShowOderViewCommand+.��5m      �� $ 
Horizontal=�6%   .+�5n        $ BagShopping=�6+   #��[ 6>   �� 5o      $��Giỏ Hàng��6(   #��[	 68   5p      5q      	� 5r      #��[ 6"    
 color6# [ 5s      ��5t      �� *ShowHomeViewCommand+.��5u      �� $ 
Horizontal=�6%   .+�5v        $
 Gear=�6+   #��[ 67   �� 5w      $��Cài Đặt��6(   #��[	 67   5x      5y      5z      5{      �� 5}      $ 	0,10,10,0��6   $��1��5~      ��5�      �� 5�      $	 1,1&�6*   $		 0,0&�6;   .��5�      �   primaryBackColor1#
 [ 6'   $ 0Q�6R   � 5�        primaryBackColor2#
 [ 6'   $ 1Q�6R   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6(   �� 5�      $��* �6(   .+�5�      �� -   5         ��Name$ pnlControlBar��5�   !   $��0��5�      $ 
Horizontal=�5�      $��RightToLeft=�5�      
������ $��0,0,5,0q�5�      .+�5�      �� -   5         ��Name$ btnClose��5�   !     controlButton#��[ 5�      # [ 5�      .��5�        $ Xmark=�6+     controlButtonIcon#��[ 68   5�      �� 5�      -   5        $ btnMaximize��5�   !   #��[ 5�      # [ 5�      .��5�        $ Square=�6+   #��[ 69   5�      �� 5�      -   5        $ btnMinimize��5�   !   #��[ 5�       
 color8# [ 5�      .��5�        $ WindowMinimize=�6+   $��12��6A   5�      5�      � 5�      $��1��6    5�      �� 5�      �� 5�      .+�5�      �� $��0��6%   $ 
Horizontal=�5�   !   $��Center=�5�   !   .+�5�        $��20��5�   '   $��20��5�   '      
Foreground# [ 5�   '   $��	35,0,10,0q�5�   '    5�   +   �� *Icon+5�   '   �� 5�      #��[ 5�   $   $��16(�5�   $   $��
Montserrat)�5�   $   $��Medium"�5�   $   $��Center=�5�   $   ��5�   (   �� *	Caption+5�   $   5�      �� 5�      $��1��6%   $ 
Horizontal=�5�   !   $��RightToLeft=�5�   !   $��Center=�5�   !   $��0,0,10,0q�5�   !   .+�5�      ��   
iconButton#��[ 6%   # [ 5�   !   .��5�   "     $ 	AngleDown=�6/   $��12��5�   +   $��12��67     iconButtonIcon#��[ 5�   +   5�      �� 5�        titleColor3#��[ 5�   $   $��
Montserrat)�5�   $   $��12(�5�   $   $��Center=�5�   $   ��5�   (   �� *CurrentUserAccount.TenHienThi+5�   $   A� 5�      $��35��6&   $��35��62   #��[
 5�   "   $��2��5�   "   $��	10,0,10,0q�5�   "   ��5�   "   �� 5�   &    �� ImageSource$ /img/Profile.jpg��61   5�      �� 5�      #��[ 6%    
 color3# [ 5�   !   .��5�   "     $ Clock=�6/   #��[ 6<   5�      �� 5�      #��[ 6%   # [ 5�   !   .��5�   "     $ Envelope=�6/   #��[ 6?   5�      �� 5�      #��[ 6%    
 color5# [ 5�   !   .��5�   "     $
 Bell=�6/   #��[ 6;   5�      5�      5�      �� 5�      $��2��5�   !   $��25q�5�   !   ��5�   %   �� *CurrentChildView+5�   !   5�      5�      5�      5�      5�      