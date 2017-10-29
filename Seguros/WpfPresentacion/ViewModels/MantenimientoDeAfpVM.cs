using GestionDeSeguros;
using Interfaces.Afps;
using Interfaces.Afps.Peticiones;
using Interfaces.Afps.Respuestas;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfPresentacion.ViewModels
{
    public class MantenimientoDeAfpVM : INotifyPropertyChanged
    {
        private NuevaAfp _nuevaAfp = new NuevaAfp();
        private AfpActualizada _afpActualizada = new AfpActualizada();
        private IGestorDeAfps _gestorDeAfp = new GestorDeAfp();
        public NuevaAfp nuevaAfp
        {
            get { return _nuevaAfp; }
            set
            {
                this._nuevaAfp = value;
                this.OnPropertyChanged("nuevaAfp");
                  
            }
        }
        public AfpActualizada afpActualizada
        {
            get { return _afpActualizada; }
            set
            {                
                this._afpActualizada = value;
                this.OnPropertyChanged("afpActualizada");

            }
        }
        
        public void GrabarAfp()
        {
            AfpRegistrada nuevaAfpRegistrada = this._gestorDeAfp.CrearAfp(this.nuevaAfp);
            this.afpResgistradas.Add(nuevaAfpRegistrada );
            this.nuevaAfp = new NuevaAfp();
        }

        public void ModificarAfp()
        {
            AfpActualizada nuevaAfpActualizada = this._gestorDeAfp.ActualizarAfp(this.afpActualizada);
            this.CargarAfps2();
            this.afpActualizada = new AfpActualizada();
        }

        public ObservableCollection<AfpRegistrada> afpResgistradas { get; set; }
        public ObservableCollection<AfpActualizada> afpActualizadas { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string name)
        {
            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }

        public void CargarAfps()
        {
            this.afpResgistradas = new ObservableCollection<AfpRegistrada>();
            _gestorDeAfp.ListarTodasLasAfp().ForEach(x => this.afpResgistradas.Add(x));
        }

        public void CargarAfps2()
        {
            this.afpActualizadas = new ObservableCollection<AfpActualizada>();
            _gestorDeAfp.ListarTodasLasAfp2().ForEach(x => this.afpActualizadas.Add(x));
        }

    }
}
