using APICurso.Application.IServices;
using APICurso.Domain.DTO;
using APICurso.Domain.Entities;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;



namespace APICurso.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LimiteClienteController : ControllerBase
    {
       
        private readonly ILimiteClienteService clienteService;
        public LimiteClienteController(ILimiteClienteService service)
        {
            clienteService = service;        }

        
        [HttpGet]
        [Route("ListarClientes")]
        public IActionResult ListarCliente(string usuario)
        {
            try //tratamento de erro
            {
                List<LimiteCliente> clienteList = new List<LimiteCliente>();
                if (usuario.Contains("Administrador")) 
                {
                    clienteList = clienteService.Get().ToList();
                }
                else
                {
                  
                    clienteList = clienteService.Get(r => r.IsActive != false).ToList();
                }

                List<RetornaListarClientes> model = clienteList.Select(r => new RetornaListarClientes
                {
                    Nome = r.Nome,
                    Codigo = r.Codigo,
                    IsActive = r.IsActive
                    
                }).ToList();
                return Ok(model);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("CadastrarCliente")]
        public IActionResult CadastrarNovoCliente([FromBody] RecebeCadastrarCliente model)
        {
            try
            {
               
                if (model.Usuario.Contains("Administrador") || model.Usuario.Contains("Financeiro"))
                {
                    clienteService.SalvarNovoCliente(model);
                    return Ok(); 
                }
                else
                {
                  
                    return Unauthorized();
                }

            }
            catch (Exception ex)
            {
               
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("AlterarLimiteCliente")]
        public IActionResult AlterarLimiteCliente([FromBody] RecebeClienteAlterarValor model)
        {
            try
            {
               
                if (model.Subtrair)
                {
                    clienteService.AlterarLimiteCliente(model);
                    return Ok();
                }
                else
                {
                   
                    if (model.Usuario.Contains("Administrador") || model.Usuario.Contains("Financeiro"))
                    {
                        clienteService.AlterarLimiteCliente(model);
                        return Ok();
                    }
                    else
                    {
                        return Unauthorized();
                    }
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost]
        [Route("AlterarNomeCliente")]
        public IActionResult AlterarNomeCliente([FromBody] RecebeClienteAlterarNome model)
        {
          
            try
            {
                if (model.Usuario.Contains("Administrador"))
                {
                    clienteService.AlterarNomeCliente(model);
                    return Ok();
                }
                else
                {
                    return Unauthorized();
                }
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
 
        }

        [HttpGet]
        [Route("AlterarStatusCliente")]
        public IActionResult AlterarStatusCliente(int codigo, string usuario)
        {
            try
            {
                clienteService.AlterarStatusCliente(codigo,usuario);
                return Ok();
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet]
        [Route("ObterLimiteCliente")]
        public IActionResult ObterLimiteCliente(int id)
        {
            var cliente = clienteService.Find(r => r.Codigo == id);
            if (cliente != null)
            {
                return Ok(cliente);
            }
            else
            {
                return BadRequest();
            }
        }
    }
}
