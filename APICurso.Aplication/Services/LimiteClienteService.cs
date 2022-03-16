using APICurso.Application.IServices;
using APICurso.Domain.DTO;
using APICurso.Domain.Entities;
using APICurso.Infra.IRepositories;
using System;

namespace APICurso.Application.Services
{
    public class LimiteClienteService : BaseService<LimiteCliente>, ILimiteClienteService
    {
        private readonly ILimiteClienteRepository repository;
        private readonly ILogService logService;
        public LimiteClienteService(ILimiteClienteRepository clienteRepository, ILogService _logService) : base(clienteRepository)
        {
            repository = clienteRepository;
            logService = _logService;
        }

       

        public void AlterarLimiteCliente(RecebeClienteAlterarValor recebeClienteAlterarValor)
        {
            LimiteCliente cliente = repository.Find(r => r.Codigo == recebeClienteAlterarValor.Codigo);
            if (cliente == null) throw new Exception("Cliente não encontrado"); 
            cliente.AlterarLimiteDeCredito(recebeClienteAlterarValor.Valor, recebeClienteAlterarValor.Subtrair);
            repository.Save(cliente);          
            string nomeEntidade = "Cliente";
            string observacao;           
            if (recebeClienteAlterarValor.Subtrair)
            {
                observacao = "Foi Subtraido R$"+recebeClienteAlterarValor.Valor+" em: " + DateTime.Now.ToString("f");
            }
            else
            {
                observacao = observacao = "Foi Adicionado R$" + recebeClienteAlterarValor.Valor + " em: " + DateTime.Now.ToString("f");
            }             
            logService.SalvarNovoLog(cliente.Codigo, nomeEntidade, observacao, recebeClienteAlterarValor.Usuario);
            
            
        }

        public void AlterarNomeCliente(RecebeClienteAlterarNome recebeClienteAlterarNome)
        {
            LimiteCliente cliente = repository.Find(r => r.Codigo == recebeClienteAlterarNome.Codigo);
            if (cliente == null) throw new Exception("Cliente não encontrado");             
            var nomeAntigo = cliente.Nome;            
            cliente.AlterarNomeCliente(recebeClienteAlterarNome.Nome);
            repository.Save(cliente); 
            string nomeEntidade = "Cliente";
            string observacao = "Nome do Cliente "+ nomeAntigo + " foi alterado para " + cliente.Nome + " em: " + DateTime.Now.ToString("f");
            logService.SalvarNovoLog(cliente.Codigo, nomeEntidade, observacao, recebeClienteAlterarNome.Usuario);

        }

        public void AlterarStatusCliente(int codigo, string usuario)
        {
            LimiteCliente cliente = repository.Find(r => r.Codigo == codigo);            
            if (cliente == null) throw new Exception("Cliente não encontrado");             
            cliente.AlterarStatusCliente();
            repository.Save(cliente);           
            string nomeEntidade = "Cliente";
            string observacao = "O Cliente "+ cliente.Nome +" Foi inativado em: " + DateTime.Now.ToString("f");
            logService.SalvarNovoLog(cliente.Codigo, nomeEntidade, observacao, usuario);

        }

        public void SalvarNovoCliente(RecebeCadastrarCliente recebeCadastrarCliente)
        {
          
            LimiteCliente cliente = new LimiteCliente();
            try
            {
                cliente.CadastrarNovoCliente(recebeCadastrarCliente.Nome, recebeCadastrarCliente.Limite, recebeCadastrarCliente.Codigo);
                repository.Save(cliente);
            }
            catch 
            {
                throw;
            }         

            string nomeEntidade = "Cliente";
            string observacao = "Foi Criado um novo Cliente em: " + DateTime.Now.ToString("f");
            observacao +=" Como nome: "+ cliente.Nome + " Limite de R$"+recebeCadastrarCliente.Limite ;
            logService.SalvarNovoLog(cliente.Codigo, nomeEntidade, observacao, recebeCadastrarCliente.Usuario);

        }
        
    }
}
