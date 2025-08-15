# BDD – Login & Cadastro no *Automation Practice*

Bem-vindo(a)! Este repositório reúne cenários **BDD em Gherkin** para dois fluxos fundamentais de e-commerce: **Login** e **Cadastro de Usuário**.  
A ideia é simples: **documentar o comportamento esperado do sistema de maneira clara, humana e executável** – servindo tanto para estudo quanto para futuros testes automatizados.

> Projeto criado como parte do meu estudo na **Masterclass QAzando**. 😉

---

## O que você encontra aqui
- Cenários **Gherkin** prontos e organizados;
- Texto amigável, em **português**, focado na leitura pelo time de negócio, QA e dev;
- Base perfeita para evoluir para **automação BDD** (Cucumber/Behave/SpecFlow).

---

## 📁 Arquivos
```
.
├── login_cadastro.feature   # Cenários de Login e Cadastro (Gherkin)
└── README.md                # Este arquivo
```

---

## Como usar

### 1) Uso imediato (leitura/estudo)
- Abra o arquivo `login_cadastro.feature` e leia os cenários.
- Use como referência para **roteiros de teste manuais** e conversas com o time.

### 2) Rodar com **Cucumber (JavaScript/TypeScript)**
> Pré-requisitos: Node.js >= 18 e npm.

```bash
# 1. Inicializar o projeto (se quiser evoluir para automação)
npm init -y

# 2. Instalar o Cucumber
npm i -D @cucumber/cucumber

# 3. Estruturar pastas (o Cucumber procura o diretório "features/")
mkdir -p features/steps

# 4. Mover o .feature para a pasta padrão
mv login_cadastro.feature features/

# 5. Criar um arquivo de steps de exemplo
cat > features/steps/steps.js << 'EOF'
const { Given, When, Then } = require('@cucumber/cucumber');

Given('que estou na página de login', function () { /* TODO: implementar */ });
When('clico no botão {string}', function (botao) { /* TODO */ });
Then('devo ver a mensagem {string}', function (mensagem) { /* TODO */ });

// Dica: integre com Playwright, Cypress ou Selenium aqui.
EOF

# 6. Executar
npx cucumber-js


```

> **Dicas:**  
> - Comece implementando **apenas 1 cenário feliz** (login válido), depois evolua para os alternativos.  
> - Padronize mensagens.  
> - Selecione uma ferramenta de automação (Playwright, Cypress, Selenium) e integre nos steps.

---

## Boas práticas BDD
- Escreva cenários **do ponto de vista do usuário** (foco no "por quê").  
- **Mantenha os passos curtos** e com linguagem natural.  
- **Evite detalhes técnicos** nos .feature (deixe a parte técnica nos steps).  
- Use nomes consistentes para botões/labels/mensagens.  
- Documente **pré-condições** e **dados de teste** relevantes.

---

## Autor
**Paulo Bastos** — QA em evolução, curioso e focado em qualidade desde o começo.  
Se este repo te ajudou, deixe uma ⭐ no GitHub!

---

## Licença
Este projeto está sob a licença **MIT**. Sinta-se à vontade para usar e adaptar.
