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
    /// Lógica de interacción para MantenimientoAfp.xaml
    /// </summary>
    public partial class MantenimientoAfp : Window
    {
        private MantenimientoDeAfpVM mantenimientoDeAfpVm = new MantenimientoDeAfpVM();
        public MantenimientoAfp()
        {
            InitializeComponent();
            mantenimientoDeAfpVm.CargarAfps();
            this.DataContext = mantenimientoDeAfpVm;

        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.mantenimientoDeAfpVm.GrabarAfp();
        }

        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
