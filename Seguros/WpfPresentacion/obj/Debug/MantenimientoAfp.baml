   M S B A M L   `   `   `  ����J  FWpfPresentacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfPresentacionWpfPresentacion  5   	   &     WpfPresentacion.MantenimientoAfp   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfPresentacion     5   	     � Title$  MantenimientoAfp��5   	   $	��500��6"   $	��900��6/    � WindowStartupLocation$ CenterScreen=�6;   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      $	��99* �6   �� 5      $
��198* �6   �� 5      $
��461* �6   �� 5      $
��134* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ AfpsDataGrid��5      $��2��6Q   $
��Left=�6a   $��	10,10,0,0q�6|   $	��Top=�6�   $	��449��6�   $	��575��6�   $��4��6�   $��2��6�   ��6)   �� *afpResgistradas+6�   �� 5   
   -   5         ��Name$ textBox��5      $��1��6I   $
��Left=�6Y   $��20��6t   $��	20,50,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��168��6�   ��6#   �� *nuevaAfp.Descripcion+6�   �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��	23,50,0,0q�6B   $
��Wrap=�6U   $��Descripción��6i   $	��Top=�6|   �� 5   
   -   5         ��Name$ button��5      $��Agregar��6!   $��1��63   $
��Left=�6C   $��19.8,44.8,0,0q�6^   $��2��6u   $	��Top=�6�   $	��168��6�   $��43��6�   6�   �� 5   
   -   5        $ btnSalir��5      $��Salir��6#   $��1��63   $
��Left=�6C   $��19.8,29.2,0,0q�6^   $��3��6u   $	��Top=�6�   $	��168��6�   $��43��6�   6�   5      5      