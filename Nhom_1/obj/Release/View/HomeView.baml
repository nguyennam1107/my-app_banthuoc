   M S B A M L   `   `   `  ���� A  =Nhom_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Nhom_1.ViewModelNhom_1.ViewModel  )clr-namespace:Nhom_1.ViewNhom_1.View  X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fP:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.SharpFontAwesome.Sharp U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf     Nhom_1.View.HomeView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4	ViewModelclr-namespace:Nhom_1.ViewModel     +localclr-namespace:Nhom_1.View     Ifa:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.Sharp     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     ���#210F55  � DataContext  $  Nhom_1.ViewModel.HomeViewModel  .����  �� CornerRadius$ 10��$��1q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���    winBorderColor1 � Color# [   � Offset$ 0Q��   winBorderColor2# [ $	 0.5Q��   winBorderColor3# [ $ 1Q�._�� -    �Name$ rootElement�� � RowDefinitions �� $��25 ��� $��* ��� $
��Auto �.+�� $��1��.+��� $��Hidden=�.���� .+��� $ 10��$��1q����� $	 0,0&�$	 1,1&�.��� # [  $ 0Q�� # [ $	 0.5Q�� # [ $ 1Q�._��� .+��� $!��/img/dashboard-template.png��$��UniformToFill=�$
��1000��$
��Auto���� $ 10��$��1q����� $	 0,0&�$	 1,1&�.��� # [  $ 0Q�� # [ $	 0.5Q�� # [ $ 1Q�._��� $
��Auto��$
��1030��.+��� $��Tất cả sản phẩm��$��10q�  titleColor2#��[ $��13(�$��
Montserrat)�$��Medium"��� -    ��Name$ listview��$��Disabled=�$
��Left=�$
��Auto��$
��1010�����	#FF112356���� *ListProducts+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� SelectedItem
 �� *SelectedProduct+���� .R��� $��5q�$��1q����� $	 0,0&�$	 1,1&�.��� # [  $ 0Q�� # [ $	 0.5Q�� # [ $ 1Q�._��� $
��Left=�$	��110��$	��100��$��5q�.+��� $��UniformToFill=�$	��100��$��60������ *Image+�� $��12(�  plainTextColor2#��[ $
��Bold"�$��0,5,0,0q����� *
TenThuoc+�� #��[ $��Center=�$��10(�$��0,0,0,5q����� *GiaBan+ �� StringFormat$ {0:C}������ .R�� $
��1030��� $��3��$��Center=�.+�� $��Center=�$	��525��$	��250��$��Center=�$��Center=����� *IsPopupVisible+ � PlacementTarget ��  �� ElementName$ rootElement��.���� $��1q�$��5q����� $	 0,0&�$	 1,1&�.��� # [  $ 0Q�� # [ $	 0.5Q�� # [ $ 1Q�._�� .+�� $��10q����#F0F0F0 � ColumnDefinitions �� $��* ��� $
��Auto �.+��� $��Thông Tin Thuốc��$
��Bold"�$��18(�$��Center=����#333333�� $��1��$��X��$��20��$��20��
������ ���#666666
������ ���� *ClosePopupCommand+����  �� 
TargetType" ��.���  �� Property � �� �� Value ��  �� 
TargetType" ��.R��� 
������ ._���  �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � �� �#FF0000� $��10q� �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��Uniform=�$	��150��$
��Auto��$��0,0,10,0q����� *SelectedProduct.Image+���� " ��.���  �@J�Opacity$ 1Q� P�  �@J�IsMouseOver . . ���  �@J�Opacity$	 0.8Q��� $��0��$��1��$��0,0,0,10q�.+��� $
��Bold"�$��16(����#333333���� *SelectedProduct.TenThuoc+�� $��12(����#666666$��0,5,0,0q����� *SelectedProduct.HanSuDung+�� $��12(����#666666$��0,5,0,0q����� *SelectedProduct.SoLuong+�� $��12(����#666666$��0,5,0,0q����� *SelectedProduct.GiaBan+$ {0:C}���� $��1��$��2�� �� Orientation$ 
Horizontal=�$��Right=�$��Bottom=�$��	0,10,10,0q�.+��� $��	Mua Hàng��$	��100��$��0,0,5,0q����#4CAF50���#FFFFFF���� *
BuyCommand+���� " ��.���  � �� �� " ��.R��� 
������ ._���  P�  �@J�IsMouseOver . . ���  � �� �#388E3C�� $��Thêm vào Giỏ Hàng��$	��140��$��0,0,5,0q����#2196F3���#FFFFFF���� *AddToCartCommand+���� " ��.���  � �� �� " ��.R��� 
������ ._���  P�  �@J�IsMouseOver . . ���  � �� �#1976D2d� -    d�Name$ btnAddToFavorites��$��30��$��30��
������ 
������ ���� *AddToFavoritesCommand+���� " d�.���  � �� �� " d�.R�!  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Heart=�$
��Auto��$
��Auto��   
Foreground
 ����� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �� " d�.R�  $ Heart=�$
��Auto��$
��Auto��
 �  ��