# Sistema_de_Gerenciamento_de_Hospedagens-BD

Você foi contratado para criar um sistema de gerenciamento de hospedagens hoteleiras. O sistema deve ser capaz de armazenar informações sobre hotéis, quartos, clientes e hospedagens. Os clientes podem se hospedar em quartos de hotéis diferentes, e é importante manter um registro das reservas/hospedagens.

𝐎 𝐬𝐢𝐬𝐭𝐞𝐦𝐚 𝐝𝐞𝐯𝐞 𝐜𝐨𝐧𝐭𝐞𝐫 𝐚𝐬 𝐬𝐞𝐠𝐮𝐢𝐧𝐭𝐞𝐬 𝐭𝐚𝐛𝐞𝐥𝐚𝐬:
𝐓𝐚𝐛𝐞𝐥𝐚 "𝐇𝐨𝐭𝐞𝐥":
hotel_id (Chave primária, INT): Identificador único do hotel.
nome (VARCHAR, não nulo): Nome do hotel.
cidade (VARCHAR, não nulo): Cidade onde o hotel está localizado.
uf (VARCHAR, não nulo): Estado onde o hotel está localizado, com dois dígitos.
classificacao (INT, não nulo): Classificação do hotel em estrelas (1 até 5).

𝐓𝐚𝐛𝐞𝐥𝐚 "𝐐𝐮𝐚𝐫𝐭𝐨":
quarto_id (Chave primária, INT): Identificador único do quarto.
hotel_id (Chave estrangeira não nula para "Hotel"): Identificador do hotel ao qual o quarto pertence.
número (INT, não nulo): Número do quarto.
tipo (VARCHAR, não nulo): Tipo de quarto (por exemplo, "Standard", "Deluxe", "Suíte").
preco_diaria (DECIMAL, não nulo): Preço da diária do quarto.

𝐓𝐚𝐛𝐞𝐥𝐚 "𝐂𝐥𝐢𝐞𝐧𝐭𝐞":
cliente_id (Chave primária, INT): Identificador único do cliente.
nome (VARCHAR, não nulo): Nome do cliente.
email (VARCHAR, não nulo e único): Endereço de e-mail do cliente.
telefone (VARCHAR, não nulo): Número de telefone do cliente.
cpf (VARCHAR, não nulo e único): Número de CPF do cliente.

𝐓𝐚𝐛𝐞𝐥𝐚 "𝐇𝐨𝐬𝐩𝐞𝐝𝐚𝐠𝐞𝐦":
hospedagem_id (Chave primária, INT): Identificador único da hospedagem.
cliente_id (Chave estrangeira não nula para "Cliente"): Identificador do cliente que fez a reserva.
quarto_id (Chave estrangeira não nula para "Quarto"): Identificador do quarto reservado.
dt_checkin (DATE): Data de check-in da hospedagem (não nula).
dt_checkout (DATE): Data de check-out da hospedagem (não nula).
Valor_total_hosp(FLOAT, não nulo): Custo total da hospedagem, calculado quando a hospedagem é finalizada.
status_hosp (VARCHAR, não nulo): status_hosp da hospedagem, podendo receber os seguintes valores: “reserva”, reservado pelo cliente; “finalizada”, hospedagem concluida; “hospedado”, o cliente está atualmente hospedado no hotel; “cancelada”, a hospedagem (reserva) foi cancelada.

𝐏𝐚𝐫𝐚 𝐞𝐬𝐭𝐚 𝐚𝐭𝐢𝐯𝐢𝐝𝐚𝐝𝐞 𝐦𝐚𝐩𝐚 𝐯𝐨𝐜𝐞̂ 𝐝𝐞𝐯𝐞 𝐜𝐫𝐢𝐚𝐫 𝐜𝐨́𝐝𝐢𝐠𝐨 𝐒𝐐𝐋, 𝐮𝐬𝐚𝐧𝐝𝐨 𝐌𝐲𝐒𝐐𝐋 𝐨𝐮 𝐏𝐨𝐬𝐭𝐠𝐫𝐞𝐒𝐐𝐋:
𝟏. Crie o esquema de banco de dados para o sistema de gerenciamento e hospedagens hoteleiras nomeado “hospedar_db”.

𝟐. Crie as tabelas "Hotel", "Quarto", "Cliente" e "Hospedagem" com as colunas especificadas anteriormente.

𝟑. Insira dados artificiais nas tabelas "Hotel" (2 hotéis), "Quarto"(5 para cada hotel), "Cliente"(3 clientes) e "Hospedagem" (20 hospedagens, 5 para cada um dos “Status_hosp”) para simular hotéis, quartos, clientes e hospedagens.

𝟒. 𝐄𝐬𝐜𝐫𝐞𝐯𝐚 𝐚𝐬 𝐬𝐞𝐠𝐮𝐢𝐧𝐭𝐞𝐬 𝐜𝐨𝐧𝐬𝐮𝐥𝐭𝐚𝐬 𝐞 𝐜𝐨𝐦𝐚𝐧𝐝𝐨𝐬 𝐒𝐐𝐋:
a. Listar todos os hotéis e seus respectivos quartos, apresentando os seguintes campos: para hotel, nome e cidade; para quarto, tipo e preco_diaria;

b. ​Listar todos os clientes que já realizaram hospedagens (status_hosp igual á “finalizada”), e os respectivos quartos e hotéis;

c. ​Mostrar o histórico de hospedagens em ordem cronológica de um determinado cliente;

d. ​Apresentar o cliente com maior número de hospedagens (não importando o tempo em que ficou hospedado);

e. ​Apresentar clientes que tiveram hospedagem “cancelada”, os respectivos quartos e hotéis.

f. ​Calcular a receita de todos os hotéis (hospedagem com status_hosp igual a “finalizada”), ordenado de forma decrescente;

g. ​Listar todos os clientes que já fizeram uma reserva em um hotel específico;

h. ​Listar o quanto cada cliente que gastou em hospedagens (status_hosp igual a “finalizada”), em ordem decrescente por valor gasto.

i. ​Listar todos os quartos que ainda não receberam hóspedes.

j. ​Apresentar a média de preços de diárias em todos os hotéis, por tipos de quarto.

l. ​Criar a coluna checkin_realizado do tipo booleano na tabela Hospedagem (via código). E atribuir verdadeiro para as Hospedagens com status_hosp “finalizada” e “hospedado”, e como falso para Hospedagens com status_hosp “reserva” e “cancelada”.

m. ​Mudar o nome da coluna “classificacao” da tabela Hotel para “ratting” (via código).

𝟓. 𝐄𝐟𝐞𝐭𝐮𝐞 𝐚 𝐜𝐫𝐢𝐚𝐜̧𝐚̃𝐨 𝐝𝐨𝐬 𝐬𝐞𝐠𝐮𝐢𝐧𝐭𝐞𝐬 𝐩𝐫𝐨𝐜𝐞𝐝𝐢𝐦𝐞𝐧𝐭𝐨𝐬 𝐮𝐬𝐚𝐧𝐝𝐨 𝐏𝐋/𝐌𝐲𝐒𝐐𝐋:
a. Criar uma procedure chamada "RegistrarCheckIn" que aceita hospedagem_id e data_checkin como parâmetros. A procedure deve atualizar a data de check-in na tabela "Hospedagem" e mudar o status_hosp para "hospedado".​

b. Criar uma procedure chamada "CalcularTotalHospedagem" que aceita hospedagem_id como parâmetro. A procedure deve calcular o valor total da hospedagem com base na diferença de dias entre check-in e check-out e o preço da diária do quarto reservado. O valor deve ser atualizado na coluna valor_total_hosp.​

c. Criar uma procedure chamada "RegistrarCheckout" que aceita hospedagem_id e data_checkout como parâmetros. A procedure deve atualizar a data de check-out na tabela "Hospedagem" e mudar o status_hosp para "finalizada".​

𝟔. 𝐄𝐟𝐞𝐭𝐮𝐞 𝐚 𝐜𝐫𝐢𝐚𝐜̧𝐚̃𝐨 𝐝𝐚𝐬 𝐬𝐞𝐠𝐮𝐢𝐧𝐭𝐞𝐬 𝐟𝐮𝐧𝐜̧𝐨̃𝐞𝐬 𝐮𝐭𝐢𝐥𝐢𝐳𝐚𝐧𝐝𝐨 𝐏𝐋/𝐌𝐲𝐒𝐐𝐋:
a. Criar uma function chamada "TotalHospedagensHotel" que aceita hotel_id como parâmetro. A função deve retornar o número total de hospedagens realizadas em um determinado hotel.​

b. Criar uma function chamada "ValorMedioDiariasHotel" que aceita hotel_id como parâmetro. A função deve calcular e retornar o valor médio das diárias dos quartos deste hotel.

c. Criar uma function chamada "VerificarDisponibilidadeQuarto" que aceita quarto_id e data como parâmetros. A função deve retornar um valor booleano indicando se o quarto está disponível ou não para reserva na data especificada.​

𝟕. 𝐄𝐟𝐞𝐭𝐮𝐞 𝐚 𝐜𝐫𝐢𝐚𝐜̧𝐚̃𝐨 𝐝𝐚𝐬 𝐬𝐞𝐠𝐮𝐢𝐧𝐭𝐞𝐬 𝐭𝐫𝐢𝐠𝐠𝐞𝐫𝐬 𝐮𝐭𝐢𝐥𝐢𝐳𝐚𝐧𝐝𝐨 𝐏𝐋/𝐌𝐲𝐒𝐐𝐋:
a. Criar um trigger chamado "AntesDeInserirHospedagem" que é acionado antes de uma inserção na tabela "Hospedagem". O trigger deve verificar se o quarto está disponível na data de check-in. Se não estiver, a inserção deve ser cancelada.

b.Cria um trigger chamado "AposDeletarCliente" que é acionado após a exclusão de um cliente na tabela "Cliente". O trigger deve registrar a exclusão em uma tabela de log.​

𝐎𝐛𝐬𝐞𝐫𝐯𝐚𝐜̧𝐨̃𝐞𝐬: 
1. Apresentar os códigos SQL utilizados para a resolução de todas as questões em ordem cronológica.
2. 
3. Todas os items dever ser feitos utilizando instruções SQL, sem a modificação dos dados diretamente nas tabelas.
