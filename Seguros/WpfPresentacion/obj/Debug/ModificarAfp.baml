   M S B A M L   `   `   `  ����J  FWpfPresentacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfPresentacionWpfPresentacion  5   	   "    WpfPresentacion.ModificarAfp   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfPresentacion     5   	     � Title$  ModificarAfp��5   	   $	��500��6   $	��900��6+    � WindowStartupLocation$ CenterScreen=�67   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      $	��99* �6   �� 5      $
��198* �6   �� 5      $
��461* �6   �� 5      $
��134* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ AfpsDataGrid��5      $��2��6Q   $
��Left=�6a   $��	10,10,0,0q�6|   $	��Top=�6�   $	��449��6�   $	��575��6�   $��4��6�   $��2��6�   ��6)   �� *afpActualizadas+6�   �� 5   
   -   5         ��Name$ textBox2��5      $��1��6G   $
��Left=�6W   $��20��6r   $��16.8,47,0,0q�6~    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��168��6�   ��6$   �� *afpActualizada.Id+6�   �� 5   
   -   5         ��Name$ 
textBlock2��5      $
��Left=�6(   $��	20,47,0,0q�6C   $
��Wrap=�6V   $��Código��6j   $	��Top=�6x   �� 5   
   -   5        $ textBox��5      $��1��6O   $
��Left=�6_   $��20��6z   $��16.8,33.4,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��168��6�   $��1��6�   ��6#   �� *afpActualizada.Descripcion+6�   �� 5   
   -   5        $ 	textBlock��5      $
��Left=�6'   $��20,33.4,0,0q�6B   $
��Wrap=�6W   $��Descripción��6k   $	��Top=�6~   $��1��6�   �� 5   
   -   5         ��Name$ button��5      $��	Modificar��6!   $��1��65   $
��Left=�6E   $��19.8,44.8,0,0q�6`   $��2��6w   $	��Top=�6�   $	��168��6�   $��43��6�   6�   �� 5   
   -   5        $ btnSalir��5      $��Salir��6#   $��1��63   $
��Left=�6C   $��19.8,29.2,0,0q�6^   $��3��6u   $	��Top=�6�   $	��168��6�   $��43��6�   6�   5      5       