   M S B A M L   `   `   `  ���� A  =Nhom_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Nhom_1.ViewNhom_1.View  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fP:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.SharpFontAwesome.Sharp 3clr-namespace:Nhom_1.ViewModelNhom_1.ViewModel      Nhom_1.View.Dashboard   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     +localclr-namespace:Nhom_1.View     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     Ifa:clr-namespace:FontAwesome.Sharp;assembly=FontAwesome.Sharp     4	ViewModelclr-namespace:Nhom_1.ViewModel     $
��1000��  � DataContext  )  #Nhom_1.ViewModel.DashBoardViewModel  .����  �� CornerRadius$ 10��$��3q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���  � Color$ #4C3575�� � Offset$ 0Q�� $ #5B4B8A��$
 0.75Q�� $ #0E8388��$ 1Q����� $	 0,0&�$	 1,1&�.��� $ #ebedf3��$	 0.9Q�� $ #ebedf3��$	 0.1Q�._��  � ColumnDefinitions �� $	��970 ��� $��* �.+�� $��0�� � RowDefinitions �� $
��Auto ��� $��* �.+��� $ 10,10,10,10��$��
0,20,20,20q�$��1������  �� ImageSource$ /img/background.png��	 j� Stretch$
	 None=�._��� $ 10��$��0q�
 J� Opacity$

 0.95Q����� $	 0,0&�$	 1,1&�.��� $ #4C3575��$ 0Q�� $ #5B4B8A��$
 0.75Q�� $ #0E8388��$ 1Q����� $	 1,0&�$	 0,1&�.��� $ #ededef��$	 0.9Q�� $ #fefefe��$	 0.1Q�._��  �� $��* �.+��� .���  �� $	��300 ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+�� $��0�� �� $	��450 ��� $��* �.+��� $��0��$ 10��$��20q����#7163ba$��0q����� $	 0,0&�$	 1,1&�.��� $ #4C3575��$ 0Q�� $ #5B4B8A��$
 0.75Q�� $ #160040��$	 0.5Q�._��  �� $��* ��� $
��auto �.+��� $��Revenue�����#F0eff6$��10(�$��SemiBold"�$��10,5,0,0q��� $��Month�����#F0eff6$��10(�$��SemiBold"�$��0,5,10,0q�$��Right=�#  LiveCharts.Wpf.CartesianChart  &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$
 None=�$��10q� � ToolTip #  LiveCharts.Wpf.DefaultTooltip  ���#5a5080���#f4f3f6   
BulletSize$ 0Q�   AxisX   LiveCharts.Wpf.Axis     
Foreground �#a79fd1   FontSize$ 14Q�   
ShowLabels .    Labels9  3LiveCharts.Wpf.Converters.StringCollectionConverter$5 /Jan,Feb,Mar,Apr,May,Jun,Jul,Agu,Sep,Oct,Nov,Dec    	Separator   LiveCharts.Wpf.Separator     StrokeThickness$ 0Q�   Step$ 1Q�   AxisY    .    MinValue$ 0Q�   MaxValue$	 170Q�   $ 0Q�   Series   LiveCharts.Wpf.LineSeries  	  LiveCharts.Wpf.Series 	  Fill �#7164b2 	  StrokeThickness$ 4Q�   PointGeometrySize$ 0Q� 	  Values;
  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$* $10,5,70,170,90,30,150,60,80,20,15,15
  	  Stroke �� .���    primaryBackColor1# [  $ 0Q�� $ #f782ab��$
 0.23Q��   primaryBackColor2# [ $	 2.5Q��� $��1��$ 10��$��10,20,20,20q����#7163ba$��1q����� $	 0,0&�$	 1,1&�.��� $ #4C3575��$	 0.4Q�� $ #5B4B8A��$
 0.75Q�� $ #160040��$	 0.5Q�._��  �� $��50 ���  �� $	��200 ��� $��* �.+���  �� Orientation$ 
Horizontal=�$��0��.+�!  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]    Icon$
  User=�$
��Left=�$��Center=�$��30��$��	60,10,0,0q�!   
Foreground
! ������� $!��Thông tin người dùng :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� $��1��$ Vertical=�.+��� -   $��_MaNV��$��Mã nhân viên :��$��14(�
�������$��Century Gothic)�$��20,0,0,0q�$��Center=��� -   $��_Hoten��$��Họ tên :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $��	_Ngaysinh��$��Ngày sinh :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $��_Diachi��$��Địa chỉ :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $
��_SDT��$��Số diện thoại :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $��_Chucvu��$��Chức vụ:��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $��
_Trangthai��$��Trạng thái :��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� -   $��_Ghichu��$��Ghi chú : ��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q��� $��1��$��1��$ Vertical=�.+��� $��14(�
�������$��Century Gothic)�$��20,0,0,0q�$��Center=����� *TaiKhoan.IdTaiKhoan+�� $��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=����� *TaiKhoan.TenHienThi+�� $��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=����� *
TaiKhoan+�� $��Hoa Kỳ��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� $��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=����� *TaiKhoan.SoDienThoai+�� $��Admin��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� $��Online��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�$��Center=��� $/��)Code giỏi nhưng deo có người yêu ��$��14(�
�������$��Century Gothic)�$��	20,10,0,0q�� $��1�� �� $	��500 ��� .+��� $��1q�$��
20,0,10,20q�$ 10�����#7163ba$��0������ $	 0,0&�$	 1,1&�.��� $ #4C3575��$ 0Q�� $ #5B4B8A��$
 0.75Q�� $ #160040��$ 1Q�._�� .+��� .+��� $��/img/chart.png��$��UniformToFill=�$	��225���� $��1q�$��
20,0,20,20q�$ 10�����#cfd5e5$��1������ $	 0,0&�$	 1,1&�.��� $ #4C3575��$ 0Q�� $ #5B4B8A��$
 0.75Q�� $ #160040��$ 1Q�._�� .+�  LiveCharts.Wpf.PieChart  $ Bottom=�   LiveCharts.Wpf.PieSeries  " 	  Title$ " Thực Phẩm Chức Năng��$ 10
 # 	  
DataLabels# .   $" Thuốc Bổ��$ 20
 # .   $" Kháng Sinh��$ 30
 # .   $" Dụng cụ Y Tế��$ 40
 # . � $��2��$��10q�.+��� $ 10�����#7163ba
�������$��1q�$ �� Padding$$ 20q�._��  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $	��200 ��� $��* �.+��� $��0��$��0��$��Tên Thuốc:��
�������$��Center=�$��0,0,10,0q��� $��0��$��1��$	��0,5q����� *
TenThuoc+�� $��1��$��0��$��Hạn Sử Dụng:��
�������$��Center=�$��0,0,10,0q�(  "System.Windows.Controls.DatePicker  $��1��$��1��$	��0,5q�%   SelectedDate% �� *	HanSuDung+�� $��2��$��0��$��Số Lượng:��
�������$��Center=�$��0,0,10,0q��� $��2��$��1��$	��0,5q����� *	SoLuong+�� $��3��$��0��$��Đơn Vị:��
�������$��Center=�$��0,0,10,0q��� $��3��$��1��$	��0,5q����� *	DonViList+& �� SelectedIndex& �� *	IdDonVi+�� $��4��$��0��$��Giá Nhập:��
�������$��Center=�$��0,0,10,0q��� $��4��$��1��$	��0,5q����� *	GiaNhap+�� $��5��$��0��$��
Giá Bán:��
�������$��Center=�$��0,0,10,0q��� $��5��$��1��$	��0,5q����� *GiaBan+�� $��6��$��0��$��Hình Ảnh:��
�������$��Center=�$��0,0,10,0q��� $��6��$��1��$	��0,5q����� *Image+�� $��7��$��0��$��	Ghi Chú:��
�������$��Center=�$��0,0,10,0q��� $��7��$��1��$	��0,5q����� *GhiChu+�� $��8��$��2��$
��Lưu��$��0,20,0,0q�$��Center=�$
��10,5q����#4C3575
����������� *SaveCommand+� $��4��.+��  �� $
��Auto ��� $��50 �.+��� $��0��$��20,20,20,54q����� *
AllItems+' �� UpdateSourceTrigger$' PropertyChanged=�( �� SelectedItem( �� *SelectedProduct+) �� View) �� .P��� $��Tên Thuốc��* �� DisplayMemberBinding* �� *
TenThuoc+�� $��Hạn Sử Dụng��* �� *	HanSuDung+�� $��Số Lượng��* �� *	SoLuong+�� $��
Đơn Vị��* �� *	IdDonVi+�� $��	Giá Bán��* �� *GiaBan++ �� StringFormat$+ {0:C}���� $��Ảnh��, �� Width$	, 100��- �� CellTemplate- �� .R��� $��80��$��80������ *Image+�� $��Ghi Chú��$	, 250��* �� *GhiChu+�� $��1��$
��Xóa��$��5q����� *RemoveItemCommand+