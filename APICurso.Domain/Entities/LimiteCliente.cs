namespace APICurso.Domain.Entities
{
    public class LimiteCliente
    {
        
        public int Codigo { get; private set; } 
        public decimal LimiteCredito { get; private set; }
        public string Nome { get; private set; }
        public bool IsActive { get; private set; }

        public LimiteCliente()
        {

        }
        #region Metodos Clientes
        public void AlterarLimiteDeCredito(decimal valor, bool subtrair)
        {
            if (subtrair)
            {
                this.LimiteCredito -= valor;   
            }
            else
            {
                this.LimiteCredito += valor;
            }
        }       
        public void CadastrarNovoCliente(string nome, decimal limite, int codigo)
        {
            this.Codigo = codigo;
            this.Nome = nome;
            this.LimiteCredito = limite;
            this.IsActive = true;
        }      
        public void AlterarNomeCliente(string nome )
        {
            this.Nome = nome;
        }
        public void AlterarStatusCliente()
        {
            this.IsActive = !this.IsActive; 
        }
        #endregion
    }
}
