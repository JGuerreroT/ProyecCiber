using Interfaces.Afps;
using Interfaces.Afps.Peticiones;
using Interfaces.Afps.Respuestas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfPresentacion.ViewModels;

namespace WpfPresentacion
{
    /// <summary>
    /// Lógica de interacción para ModificarAfp.xaml
    /// </summary>
    public partial class ModificarAfp : Window
    {
        public ModificarAfp()
        {
            InitializeComponent();
            mantenimientoDeAfpVm.CargarAfps2();
            this.DataContext = mantenimientoDeAfpVm;
        }

        private MantenimientoDeAfpVM mantenimientoDeAfpVm = new MantenimientoDeAfpVM();


        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.mantenimientoDeAfpVm.ModificarAfp();
        }

        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void AfpsDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
          /*  if (AfpsDataGrid.SelectedIndex != -1)
            {
                AfpActualizada afpActualizada = AfpsDataGrid.SelectedItem as afpActualizada;

            }*/

        }
    }
}
