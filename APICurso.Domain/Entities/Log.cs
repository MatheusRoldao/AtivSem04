namespace APICurso.Domain.Entities
{
    public class Log
    {
        
        public int Id { get; set; }
        public string Observacao { get; set; }
        public string NomeEntidade { get; set; }
        public int IdEntitade { get; set; }
        public string Usuario { get; set; }
    }
}
