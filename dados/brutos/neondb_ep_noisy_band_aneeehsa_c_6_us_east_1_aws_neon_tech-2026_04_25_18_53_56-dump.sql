--
-- PostgreSQL database dump
--

\restrict MeH3NohOrq4hc05Y7T7LAPBTkIPnMwtTarIZrIMblAZObFbgChyAnAk24yvykmH

-- Dumped from database version 17.8 (130b160)
-- Dumped by pg_dump version 17.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE projeto_rh.funcionarios;
DROP TABLE projeto_rh.filiais;
DROP SCHEMA projeto_rh;
--
-- Name: projeto_rh; Type: SCHEMA; Schema: -; Owner: neondb_owner
--

CREATE SCHEMA projeto_rh;


ALTER SCHEMA projeto_rh OWNER TO neondb_owner;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: filiais; Type: TABLE; Schema: projeto_rh; Owner: neondb_owner
--

CREATE TABLE projeto_rh.filiais (
    id_filial character varying(10),
    nome_filial character varying(100),
    cidade character varying(100),
    estado character varying(2),
    regiao character varying(50),
    tamanho_filial character varying(20)
);


ALTER TABLE projeto_rh.filiais OWNER TO neondb_owner;

--
-- Name: funcionarios; Type: TABLE; Schema: projeto_rh; Owner: neondb_owner
--

CREATE TABLE projeto_rh.funcionarios (
    id_unico character varying(10),
    nome_funcionario character varying(150),
    salario numeric(12,2),
    cargo character varying(100),
    idade smallint,
    faixa_idade character varying(20),
    genero character varying(20),
    data_contratacao date,
    status_funcionario character varying(20),
    departamento character varying(100),
    id_filial character varying(10)
);


ALTER TABLE projeto_rh.funcionarios OWNER TO neondb_owner;

--
-- Data for Name: filiais; Type: TABLE DATA; Schema: projeto_rh; Owner: neondb_owner
--

COPY projeto_rh.filiais (id_filial, nome_filial, cidade, estado, regiao, tamanho_filial) FROM stdin;
FL01	Sede São Paulo	São Paulo	SP	Sudeste	Grande
FL02	Filial Rio de Janeiro	Rio de Janeiro	RJ	Sudeste	Grande
FL03	Filial Belo Horizonte	Belo Horizonte	MG	Sudeste	Média
FL04	Filial Curitiba	Curitiba	PR	Sul	Média
FL05	Filial Porto Alegre	Porto Alegre	RS	Sul	Média
FL06	Filial Brasília	Brasília	DF	Centro-Oeste	Média
FL07	Filial Recife	Recife	PE	Nordeste	Pequena
FL08	Filial Salvador	Salvador	BA	Nordeste	Pequena
FL09	Filial Fortaleza	Fortaleza	CE	Nordeste	Pequena
FL10	Filial Manaus	Manaus	AM	Norte	Pequena
\.


--
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: projeto_rh; Owner: neondb_owner
--

COPY projeto_rh.funcionarios (id_unico, nome_funcionario, salario, cargo, idade, faixa_idade, genero, data_contratacao, status_funcionario, departamento, id_filial) FROM stdin;
DT87832	Aline Mendes	13163.20	Engenheiro Cloud Sênior	36	35-44	Feminino	2016-05-05	Ativo	Infraestrutura e Cloud	FL05
DT40595	Carlos Rodrigues	8987.99	Analista de Dados Pleno	52	45-54	Masculino	2015-01-16	Ativo	Análise de Dados	FL03
DT28643	Cristina Fernandes	5997.77	Engenheiro de Dados Júnior	37	35-44	Feminino	2023-05-07	Ativo	Engenharia de Dados	FL07
DT67560	Isabela Vieira	24976.41	Lead de Ciência de Dados	62	55+	Feminino	2019-01-11	Inativo	Ciência de Dados	FL08
DT74722	Daniel Monteiro	5495.09	Analista de BI Júnior	45	45-54	Masculino	2017-03-25	Ativo	Business Intelligence	FL01
DT40005	Lucas Ferreira	6498.93	Analista Financeiro Júnior	61	55+	Masculino	2016-01-17	Ativo	Financeiro	FL02
DT71669	Leandro Ribeiro	25412.51	Arquiteto Cloud	29	25-34	Masculino	2023-02-17	Ativo	Infraestrutura e Cloud	FL01
DT21959	Luana Ramos	15041.74	Engenheiro Cloud Sênior	38	35-44	Feminino	2025-01-11	Ativo	Infraestrutura e Cloud	FL05
DT63955	Bruno Dias	17729.31	Gerente Financeiro	43	35-44	Masculino	2022-05-04	Ativo	Financeiro	FL02
DT43082	Matheus Rocha	9910.55	Engenheiro de ML Júnior	43	35-44	Masculino	2021-07-17	Inativo	Machine Learning	FL03
DT70552	Lucas Monteiro	4468.96	Analista de BI Júnior	41	35-44	Masculino	2023-12-19	Ativo	Business Intelligence	FL01
DT16764	Bruna Mendes	17520.71	Cientista de Dados Sênior	36	35-44	Feminino	2019-10-30	Inativo	Ciência de Dados	FL06
DT13783	Pedro Pereira	8129.35	Analista de RH Pleno	37	35-44	Masculino	2022-05-10	Ativo	Recursos Humanos	FL02
DT39451	Aline Ferreira	26655.89	Lead de Ciência de Dados	59	55+	Feminino	2013-06-15	Ativo	Ciência de Dados	FL04
DT76698	Cláudia Vieira	12661.96	Analista Financeiro Sênior	48	45-54	Feminino	2020-08-04	Ativo	Financeiro	FL04
DT60277	Alexandre Gomes	13388.12	Cientista de Dados Pleno	35	35-44	Masculino	2019-04-23	Ativo	Ciência de Dados	FL03
DT45018	Vitória Gonçalves	16767.23	Engenheiro de Dados Sênior	55	55+	Feminino	2023-01-03	Inativo	Engenharia de Dados	FL05
DT68529	Pedro Gomes	21415.87	Arquiteto Cloud	53	45-54	Masculino	2022-03-10	Ativo	Infraestrutura e Cloud	FL01
DT34727	Cristina Rocha	9001.29	Analista Financeiro Pleno	32	25-34	Feminino	2019-03-20	Ativo	Financeiro	FL05
DT59968	Renato Cardoso	12728.98	Engenheiro de ML Pleno	20	18-24	Masculino	2012-10-31	Ativo	Machine Learning	FL02
DT23154	Fernando Dias	5314.88	Analista de BI Júnior	47	45-54	Masculino	2010-05-06	Ativo	Business Intelligence	FL02
DT19807	Aline Gomes	14692.81	Engenheiro Cloud Sênior	62	55+	Feminino	2018-12-01	Ativo	Infraestrutura e Cloud	FL06
DT98389	Julio Dias	25678.98	Arquiteto Cloud	58	55+	Masculino	2020-12-11	Inativo	Infraestrutura e Cloud	FL02
DT40771	Gabriel Rodrigues	12990.99	Analista de RH Sênior	23	18-24	Masculino	2019-09-26	Inativo	Recursos Humanos	FL02
DT68153	Sabrina Alves	19468.83	Cientista de Dados Sênior	20	18-24	Feminino	2017-04-11	Ativo	Ciência de Dados	FL04
DT59131	Anderson Nascimento	7854.69	Analista de BI Pleno	44	35-44	Masculino	2022-09-11	Ativo	Business Intelligence	FL02
DT32946	Beatriz Costa	22528.12	Arquiteto de Dados	33	25-34	Feminino	2021-02-28	Inativo	Engenharia de Dados	FL04
DT70443	Felipe Almeida	11108.50	Analista de RH Sênior	60	55+	Masculino	2010-03-18	Inativo	Recursos Humanos	FL03
DT98815	Carlos Vieira	8795.45	Engenheiro Cloud Pleno	40	35-44	Masculino	2023-03-07	Ativo	Infraestrutura e Cloud	FL02
DT69878	Aline Sousa	10997.81	Analista de Dados Pleno	48	45-54	Feminino	2012-05-23	Ativo	Análise de Dados	FL05
DT85341	Isabela Nascimento	11598.73	Analista de Dados Sênior	60	55+	Feminino	2018-11-17	Ativo	Análise de Dados	FL04
DT89482	Isabela Souza	22662.71	Diretor Comercial	36	35-44	Feminino	2015-03-01	Ativo	Vendas e Parcerias	FL08
DT93442	Vanessa Almeida	18227.70	Cientista de Dados Sênior	60	55+	Feminino	2013-01-25	Ativo	Ciência de Dados	FL06
DT50492	André Oliveira	5448.93	Analista de BI Júnior	26	25-34	Masculino	2012-01-09	Inativo	Business Intelligence	FL02
DT33021	Tatiana Marques	13039.31	Cientista de Dados Pleno	41	35-44	Feminino	2021-11-27	Ativo	Ciência de Dados	FL08
DT43681	Rodrigo Costa	16732.80	Engenheiro Cloud Sênior	39	35-44	Masculino	2012-08-01	Ativo	Infraestrutura e Cloud	FL02
DT39571	Juliana Gomes	21803.62	Gerente Financeiro	53	45-54	Feminino	2018-03-16	Ativo	Financeiro	FL03
DT44663	Patrícia Silva	6364.36	Engenheiro Cloud Júnior	61	55+	Feminino	2025-01-29	Ativo	Infraestrutura e Cloud	FL05
DT24201	Henrique Andrade	8650.17	Analista Financeiro Pleno	57	55+	Masculino	2022-08-05	Ativo	Financeiro	FL01
DT94889	Marcelo Almeida	24411.02	Arquiteto de Dados	37	35-44	Masculino	2024-07-24	Ativo	Engenharia de Dados	FL02
DT14877	Felipe Oliveira	17696.72	Gerente de Análise de Dados	33	25-34	Masculino	2022-01-21	Ativo	Análise de Dados	FL01
DT97881	Carlos Andrade	20698.72	Diretor Comercial	27	25-34	Masculino	2019-04-22	Ativo	Vendas e Parcerias	FL01
DT90694	Luana Ramos	11147.22	Analista de BI Sênior	41	35-44	Feminino	2014-11-15	Ativo	Business Intelligence	FL05
DT23022	Thiago Andrade	13177.86	Analista Financeiro Sênior	59	55+	Masculino	2018-01-17	Ativo	Financeiro	FL01
DT26011	Rodrigo Martins	5656.92	Analista de BI Júnior	59	55+	Masculino	2024-05-05	Ativo	Business Intelligence	FL02
DT53713	Ana Souza	10254.42	Analista de Dados Pleno	31	25-34	Feminino	2011-07-17	Inativo	Análise de Dados	FL05
DT86858	Alexandre Carvalho	8649.96	Analista de Dados Pleno	27	25-34	Masculino	2023-05-15	Ativo	Análise de Dados	FL01
DT27038	Julio Gomes	16992.57	Engenheiro Cloud Sênior	25	25-34	Masculino	2024-10-29	Ativo	Infraestrutura e Cloud	FL01
DT56955	Mariana Silva	11571.01	Analista de Dados Sênior	34	25-34	Feminino	2011-03-06	Ativo	Análise de Dados	FL05
DT24896	Eduardo Araújo	4847.74	Analista Comercial Júnior	41	35-44	Masculino	2021-07-06	Ativo	Vendas e Parcerias	FL01
DT39038	Carlos Gonçalves	4954.49	Analista de RH Júnior	60	55+	Masculino	2021-09-11	Ativo	Recursos Humanos	FL02
DT17972	Bruna Santos	21983.92	Arquiteto Cloud	24	18-24	Feminino	2020-12-30	Ativo	Infraestrutura e Cloud	FL09
DT20589	Carlos Rodrigues	10795.57	Engenheiro de ML Pleno	35	35-44	Masculino	2024-01-02	Ativo	Machine Learning	FL01
DT59925	Alexandre Rocha	16995.43	Product Manager Sênior	56	55+	Masculino	2019-08-26	Ativo	Produto	FL01
DT95814	Ricardo Pereira	7290.21	Analista de RH Pleno	32	25-34	Masculino	2019-04-13	Ativo	Recursos Humanos	FL02
DT64524	Renata Nunes	4487.61	Analista Comercial Júnior	38	35-44	Feminino	2024-12-01	Ativo	Vendas e Parcerias	FL03
DT18799	Mariana Cardoso	5779.69	Engenheiro de Dados Júnior	24	18-24	Feminino	2018-05-11	Ativo	Engenharia de Dados	FL04
DT86869	Lívia Souza	18185.07	Product Manager Sênior	44	35-44	Feminino	2017-12-06	Inativo	Produto	FL05
DT16743	Leandro Machado	13082.41	Analista de Dados Sênior	54	45-54	Masculino	2021-05-19	Ativo	Análise de Dados	FL01
DT39392	Daniela Cardoso	17304.18	Engenheiro de Dados Sênior	41	35-44	Feminino	2012-07-30	Ativo	Engenharia de Dados	FL03
DT66244	Isabela Almeida	7826.98	Product Manager Júnior	60	55+	Feminino	2015-12-31	Ativo	Produto	FL03
DT54541	Rodrigo Barbosa	7544.22	Engenheiro de ML Júnior	27	25-34	Masculino	2022-09-14	Ativo	Machine Learning	FL01
DT92991	Juliana Gomes	7738.34	Engenheiro de Dados Júnior	31	25-34	Feminino	2018-06-09	Ativo	Engenharia de Dados	FL04
DT58503	Gustavo Costa	19772.60	Engenheiro de ML Sênior	54	45-54	Masculino	2023-05-17	Ativo	Machine Learning	FL02
DT30632	Gabriel Gomes	5282.73	Analista Comercial Júnior	35	35-44	Masculino	2019-12-09	Ativo	Vendas e Parcerias	FL02
DT64287	Carla Mendes	10142.30	Analista de Dados Pleno	25	25-34	Feminino	2017-09-28	Ativo	Análise de Dados	FL07
DT79066	Anderson Ramos	11181.67	Analista Financeiro Sênior	43	35-44	Masculino	2023-06-11	Ativo	Financeiro	FL02
DT37686	Diego Barbosa	9174.56	Analista Comercial Pleno	36	35-44	Masculino	2017-05-11	Ativo	Vendas e Parcerias	FL01
DT33028	Pedro Machado	23961.79	Lead de Ciência de Dados	32	25-34	Masculino	2021-03-22	Ativo	Ciência de Dados	FL01
DT19447	Vitor Nascimento	5090.55	Analista de BI Júnior	47	45-54	Masculino	2011-09-30	Inativo	Business Intelligence	FL01
DT85156	Fernando Machado	17737.09	Gerente de BI	43	35-44	Masculino	2010-06-20	Inativo	Business Intelligence	FL01
DT57428	Bruno Freitas	23989.15	Arquiteto de Dados	33	25-34	Masculino	2019-10-10	Ativo	Engenharia de Dados	FL01
DT61873	Daniel Ferreira	16718.65	Engenheiro de ML Sênior	28	25-34	Masculino	2011-09-18	Ativo	Machine Learning	FL02
DT76840	Rafael Araújo	16431.05	Cientista de Dados Sênior	59	55+	Masculino	2013-04-24	Ativo	Ciência de Dados	FL01
DT35856	Felipe Sousa	12920.97	Cientista de Dados Pleno	59	55+	Masculino	2011-09-10	Ativo	Ciência de Dados	FL03
DT70811	Sabrina Ramos	21449.07	Diretor Comercial	54	45-54	Feminino	2024-06-03	Ativo	Vendas e Parcerias	FL07
DT92210	Natália Rocha	12478.93	Engenheiro de ML Pleno	48	45-54	Feminino	2019-12-02	Ativo	Machine Learning	FL05
DT87518	Vitória Fernandes	15783.02	Engenheiro de Dados Sênior	37	35-44	Feminino	2020-05-10	Ativo	Engenharia de Dados	FL07
DT47627	Gabriel Andrade	7345.03	Engenheiro de Dados Júnior	50	45-54	Masculino	2018-08-16	Ativo	Engenharia de Dados	FL01
DT68947	Lívia Oliveira	10946.87	Product Manager Pleno	48	45-54	Feminino	2021-03-31	Ativo	Produto	FL08
DT23566	Fernanda Mendes	8513.65	Engenheiro de ML Júnior	29	25-34	Feminino	2010-11-17	Ativo	Machine Learning	FL06
DT78690	Carlos Mendes	9955.59	Engenheiro Cloud Pleno	36	35-44	Masculino	2018-09-09	Ativo	Infraestrutura e Cloud	FL03
DT92691	Gustavo Souza	9730.69	Analista de RH Sênior	24	18-24	Masculino	2022-07-07	Ativo	Recursos Humanos	FL01
DT96057	Gabriela Sousa	11000.13	Product Manager Pleno	55	55+	Feminino	2024-11-19	Ativo	Produto	FL06
DT95990	Leonardo Barbosa	16773.71	Gerente Financeiro	23	18-24	Masculino	2016-12-11	Ativo	Financeiro	FL01
DT26750	Bruna Dias	5615.06	Analista Financeiro Júnior	45	45-54	Feminino	2021-05-28	Ativo	Financeiro	FL05
DT33627	Vanessa Barbosa	15764.51	Analista de Dados Sênior	49	45-54	Feminino	2014-04-22	Ativo	Análise de Dados	FL08
DT20114	Felipe Gomes	5769.22	Analista de Dados Júnior	52	45-54	Masculino	2021-10-23	Ativo	Análise de Dados	FL01
DT88282	Gustavo Lima	11230.11	Engenheiro de ML Pleno	62	55+	Masculino	2024-01-05	Ativo	Machine Learning	FL03
DT15726	Bruno Mendes	14043.63	Analista de BI Sênior	33	25-34	Masculino	2019-12-18	Ativo	Business Intelligence	FL01
DT40671	Sabrina Mendes	9737.87	Engenheiro Cloud Pleno	48	45-54	Feminino	2014-05-09	Ativo	Infraestrutura e Cloud	FL04
DT70513	Fernando Mendes	14001.56	Gerente de Contas	50	45-54	Masculino	2021-10-30	Ativo	Vendas e Parcerias	FL01
DT89254	Bruno Martins	14786.99	Cientista de Dados Sênior	48	45-54	Masculino	2018-04-29	Ativo	Ciência de Dados	FL02
DT26341	Rafael Araújo	6407.79	Analista de Dados Júnior	35	35-44	Masculino	2020-01-29	Inativo	Análise de Dados	FL03
DT22021	Felipe Machado	22307.78	Gerente de Análise de Dados	19	18-24	Masculino	2019-04-22	Ativo	Análise de Dados	FL01
DT40903	Priscila Andrade	8124.74	Engenheiro de ML Júnior	19	18-24	Feminino	2017-02-23	Inativo	Machine Learning	FL08
DT29142	Caio Dias	6860.64	Cientista de Dados Júnior	48	45-54	Masculino	2013-02-10	Ativo	Ciência de Dados	FL02
DT90654	Carla Mendes	5557.01	Engenheiro de Dados Júnior	31	25-34	Feminino	2013-05-09	Ativo	Engenharia de Dados	FL03
DT65476	Renato Araújo	15807.02	Cientista de Dados Sênior	25	25-34	Masculino	2011-01-27	Ativo	Ciência de Dados	FL01
DT18232	Bruna Freitas	24378.80	Lead de Ciência de Dados	19	18-24	Feminino	2024-03-04	Ativo	Ciência de Dados	FL06
DT48177	Amanda Gomes	5537.02	Analista de BI Júnior	33	25-34	Feminino	2022-10-19	Ativo	Business Intelligence	FL04
DT78614	Vitor Ferreira	9860.21	Engenheiro de ML Júnior	52	45-54	Masculino	2021-05-19	Ativo	Machine Learning	FL01
DT61177	Priscila Santos	6907.01	Engenheiro Cloud Júnior	41	35-44	Feminino	2015-09-09	Ativo	Infraestrutura e Cloud	FL08
DT55193	Vanessa Rodrigues	6428.75	Analista de Dados Júnior	39	35-44	Feminino	2012-12-28	Ativo	Análise de Dados	FL08
DT94252	Lívia Dias	26875.32	Lead de Ciência de Dados	48	45-54	Feminino	2024-03-03	Ativo	Ciência de Dados	FL03
DT69988	Mariana Rodrigues	14407.16	Engenheiro de Dados Sênior	30	25-34	Feminino	2010-12-10	Ativo	Engenharia de Dados	FL09
DT62196	Gabriela Gonçalves	20773.20	Arquiteto Cloud	59	55+	Feminino	2014-04-15	Ativo	Infraestrutura e Cloud	FL08
DT95948	Monique Souza	16184.61	Engenheiro de ML Sênior	41	35-44	Feminino	2019-10-20	Inativo	Machine Learning	FL05
DT60678	Renato Mendes	12732.91	Engenheiro de ML Pleno	49	45-54	Masculino	2018-03-29	Inativo	Machine Learning	FL01
DT20828	Daniel Fernandes	16631.42	Diretor Comercial	56	55+	Masculino	2014-01-18	Ativo	Vendas e Parcerias	FL03
DT20494	Tatiana Alves	17185.73	Engenheiro de ML Sênior	56	55+	Feminino	2019-07-23	Ativo	Machine Learning	FL06
DT68606	Carlos Nascimento	16266.83	Engenheiro de Dados Sênior	45	45-54	Masculino	2016-02-28	Ativo	Engenharia de Dados	FL01
DT19835	Fábio Souza	18179.87	Gerente Financeiro	61	55+	Masculino	2013-08-03	Inativo	Financeiro	FL02
DT14561	Felipe Mendes	6707.99	Cientista de Dados Júnior	59	55+	Masculino	2018-03-20	Ativo	Ciência de Dados	FL01
DT89310	Fernando Oliveira	26667.35	Lead de Ciência de Dados	41	35-44	Masculino	2019-12-16	Ativo	Ciência de Dados	FL02
DT79397	Isabela Lima	24515.08	Especialista em IA	35	35-44	Feminino	2015-08-07	Inativo	Machine Learning	FL06
DT75410	Lucas Ribeiro	25394.80	Arquiteto Cloud	25	25-34	Masculino	2015-11-15	Ativo	Infraestrutura e Cloud	FL02
DT38124	Cláudia Mendes	11928.93	Analista de RH Sênior	49	45-54	Feminino	2014-06-28	Ativo	Recursos Humanos	FL03
DT69250	Julio Rodrigues	26982.21	Lead de Ciência de Dados	61	55+	Masculino	2017-03-03	Ativo	Ciência de Dados	FL01
DT82089	Ricardo Rodrigues	17456.66	Engenheiro Cloud Sênior	28	25-34	Masculino	2024-04-21	Ativo	Infraestrutura e Cloud	FL01
DT39391	Leonardo Gonçalves	13064.30	Cientista de Dados Pleno	33	25-34	Masculino	2021-01-30	Ativo	Ciência de Dados	FL03
DT71263	Alexandre Andrade	12253.77	Product Manager Pleno	23	18-24	Masculino	2011-06-23	Ativo	Produto	FL02
DT78903	Cláudia Cardoso	20940.04	Gerente de BI	22	18-24	Feminino	2012-10-23	Inativo	Business Intelligence	FL04
DT68979	Paulo Rodrigues	11577.51	Analista de BI Sênior	53	45-54	Masculino	2024-05-08	Ativo	Business Intelligence	FL01
DT66704	Sabrina Lima	7494.17	Engenheiro Cloud Júnior	51	45-54	Feminino	2013-06-07	Ativo	Infraestrutura e Cloud	FL03
DT39552	Bruno Rocha	20152.64	Engenheiro de ML Sênior	34	25-34	Masculino	2014-05-28	Ativo	Machine Learning	FL02
DT26406	Lívia Fernandes	11650.50	Analista de RH Sênior	23	18-24	Feminino	2021-04-10	Ativo	Recursos Humanos	FL06
DT32439	Isabela Gomes	12448.86	Analista de RH Sênior	54	45-54	Feminino	2010-12-04	Inativo	Recursos Humanos	FL04
DT15958	Ana Ferreira	11778.95	Analista de RH Sênior	54	45-54	Feminino	2019-05-06	Ativo	Recursos Humanos	FL09
DT92203	Lucas Ramos	16209.54	Engenheiro Cloud Sênior	37	35-44	Masculino	2020-10-31	Ativo	Infraestrutura e Cloud	FL03
DT48985	Vitória Nunes	5721.53	Analista de BI Júnior	28	25-34	Feminino	2019-11-11	Ativo	Business Intelligence	FL07
DT54589	Renata Carvalho	10906.62	Product Manager Pleno	38	35-44	Feminino	2017-09-30	Inativo	Produto	FL06
DT77499	Mariana Andrade	6957.35	Product Manager Júnior	47	45-54	Feminino	2012-09-30	Ativo	Produto	FL07
DT22689	Thiago Gomes	17754.23	Engenheiro de Dados Sênior	57	55+	Masculino	2019-05-19	Ativo	Engenharia de Dados	FL02
DT52917	Monique Costa	15544.09	Product Manager Sênior	28	25-34	Feminino	2021-03-05	Inativo	Produto	FL03
DT50441	Renata Ramos	5270.15	Engenheiro Cloud Júnior	43	35-44	Feminino	2021-05-03	Ativo	Infraestrutura e Cloud	FL05
DT86460	Thiago Carvalho	7151.62	Engenheiro de ML Júnior	49	45-54	Masculino	2023-05-27	Inativo	Machine Learning	FL01
DT47453	Paulo Cardoso	7541.52	Engenheiro Cloud Júnior	45	45-54	Masculino	2013-01-02	Inativo	Infraestrutura e Cloud	FL01
DT62855	Renato Andrade	8201.74	Engenheiro de ML Júnior	54	45-54	Masculino	2022-08-08	Ativo	Machine Learning	FL02
DT19637	Lívia Vieira	28115.23	Especialista em IA	35	35-44	Feminino	2023-12-24	Ativo	Machine Learning	FL06
DT22672	Camila Lima	14577.04	Analista de BI Sênior	39	35-44	Feminino	2022-07-06	Inativo	Business Intelligence	FL08
DT36090	Sabrina Gomes	24500.55	Head de Produto	20	18-24	Feminino	2010-11-15	Ativo	Produto	FL08
DT78069	Tatiana Cardoso	9121.91	Analista de BI Pleno	50	45-54	Feminino	2013-02-19	Ativo	Business Intelligence	FL08
DT31299	Marcelo Rocha	13671.76	Analista de BI Sênior	50	45-54	Masculino	2021-06-07	Ativo	Business Intelligence	FL02
DT72245	Cláudia Barbosa	14990.58	Engenheiro de Dados Sênior	25	25-34	Feminino	2019-05-06	Ativo	Engenharia de Dados	FL05
DT88238	Fábio Santos	17835.35	Engenheiro Cloud Sênior	55	55+	Masculino	2022-12-15	Ativo	Infraestrutura e Cloud	FL02
DT32349	Gabriel Cardoso	20034.43	Arquiteto Cloud	61	55+	Masculino	2015-06-08	Ativo	Infraestrutura e Cloud	FL02
DT35006	Ricardo Pereira	20539.00	Arquiteto de Dados	27	25-34	Masculino	2019-04-06	Ativo	Engenharia de Dados	FL02
DT90147	Eduardo Gonçalves	7117.33	Engenheiro Cloud Júnior	51	45-54	Masculino	2014-08-26	Ativo	Infraestrutura e Cloud	FL02
DT78875	Daniela Cardoso	20761.77	Engenheiro de ML Sênior	47	45-54	Feminino	2021-12-16	Ativo	Machine Learning	FL04
DT89963	Vanessa Sousa	12329.35	Engenheiro Cloud Pleno	35	35-44	Feminino	2022-07-08	Ativo	Infraestrutura e Cloud	FL05
DT37168	Gabriela Vieira	17902.24	Gerente Financeiro	40	35-44	Feminino	2022-07-28	Inativo	Financeiro	FL08
DT47721	Fábio Fernandes	26322.44	Lead de Ciência de Dados	43	35-44	Masculino	2017-09-28	Inativo	Ciência de Dados	FL02
DT48070	Fábio Gomes	17798.91	Engenheiro de Dados Sênior	23	18-24	Masculino	2017-10-08	Inativo	Engenharia de Dados	FL03
DT72793	Bruna Sousa	10397.83	Analista de Dados Pleno	35	35-44	Feminino	2022-08-10	Ativo	Análise de Dados	FL04
DT90698	Felipe Alves	7348.60	Analista Comercial Pleno	60	55+	Masculino	2021-11-29	Ativo	Vendas e Parcerias	FL02
DT23133	Thiago Souza	14228.11	Analista de BI Sênior	24	18-24	Masculino	2013-01-31	Ativo	Business Intelligence	FL01
DT63334	Alexandre Costa	16387.24	Gerente de RH	30	25-34	Masculino	2016-06-11	Ativo	Recursos Humanos	FL01
DT21725	Bruna Souza	7605.46	Analista de RH Pleno	20	18-24	Feminino	2013-12-05	Ativo	Recursos Humanos	FL04
DT14763	Luana Ribeiro	17117.87	Gerente de BI	36	35-44	Feminino	2010-11-03	Ativo	Business Intelligence	FL05
DT53914	Isabela Alves	22934.60	Gerente de Análise de Dados	52	45-54	Feminino	2021-10-05	Ativo	Análise de Dados	FL03
DT71344	Felipe Gonçalves	10330.85	Analista de Dados Pleno	39	35-44	Masculino	2013-08-24	Ativo	Análise de Dados	FL01
DT34405	Bruna Sousa	17058.45	Engenheiro de Dados Sênior	54	45-54	Feminino	2025-02-15	Ativo	Engenharia de Dados	FL04
DT66059	Bruno Nunes	13433.69	Engenheiro Cloud Sênior	60	55+	Masculino	2012-02-21	Ativo	Infraestrutura e Cloud	FL02
DT52415	Mariana Cardoso	5151.96	Analista de Dados Júnior	33	25-34	Feminino	2020-01-08	Ativo	Análise de Dados	FL09
DT86344	Tatiana Barbosa	4653.88	Analista Financeiro Júnior	41	35-44	Feminino	2015-04-20	Ativo	Financeiro	FL04
DT50213	Rafael Freitas	24959.48	Lead de Ciência de Dados	37	35-44	Masculino	2012-08-19	Ativo	Ciência de Dados	FL02
DT90560	Gabriela Andrade	10850.76	Analista de Dados Pleno	48	45-54	Feminino	2013-06-08	Ativo	Análise de Dados	FL06
DT64505	Marcelo Andrade	20544.10	Gerente Financeiro	60	55+	Masculino	2014-11-25	Ativo	Financeiro	FL02
DT78879	Vitor Ferreira	11351.46	Analista de BI Sênior	54	45-54	Masculino	2012-07-08	Ativo	Business Intelligence	FL01
DT36497	Lívia Gonçalves	10240.42	Product Manager Pleno	51	45-54	Feminino	2019-11-29	Ativo	Produto	FL08
DT21919	Diego Ramos	24660.84	Arquiteto Cloud	47	45-54	Masculino	2012-12-16	Ativo	Infraestrutura e Cloud	FL02
DT83242	Carlos Souza	14254.76	Analista de BI Sênior	43	35-44	Masculino	2015-09-16	Ativo	Business Intelligence	FL02
DT85800	Renato Carvalho	6771.09	Engenheiro de Dados Júnior	62	55+	Masculino	2011-06-07	Ativo	Engenharia de Dados	FL01
DT71875	Fernanda Rodrigues	15339.90	Engenheiro de Dados Sênior	26	25-34	Feminino	2024-05-22	Inativo	Engenharia de Dados	FL04
DT59081	Bruna Marques	28956.96	Especialista em IA	42	35-44	Feminino	2018-06-05	Ativo	Machine Learning	FL05
DT27431	Daniela Monteiro	9915.22	Analista de RH Sênior	52	45-54	Feminino	2018-10-25	Ativo	Recursos Humanos	FL04
DT10455	Renato Almeida	5952.68	Analista Comercial Júnior	47	45-54	Masculino	2025-02-08	Ativo	Vendas e Parcerias	FL01
DT59712	Aline Monteiro	9112.19	Analista de Dados Pleno	27	25-34	Feminino	2016-03-08	Ativo	Análise de Dados	FL04
DT14222	Roberta Pereira	17074.62	Gerente de RH	19	18-24	Feminino	2015-05-26	Ativo	Recursos Humanos	FL10
DT68515	Rafael Oliveira	6734.20	Product Manager Júnior	20	18-24	Masculino	2019-01-09	Ativo	Produto	FL02
DT17398	Alexandre Carvalho	15787.89	Cientista de Dados Sênior	54	45-54	Masculino	2017-02-25	Ativo	Ciência de Dados	FL02
DT41051	Leandro Rocha	10949.93	Analista de Dados Pleno	51	45-54	Masculino	2014-12-16	Ativo	Análise de Dados	FL01
DT82970	Rodrigo Souza	12316.97	Product Manager Pleno	45	45-54	Masculino	2022-06-20	Ativo	Produto	FL01
DT78742	Leonardo Moreira	25266.07	Especialista em IA	37	35-44	Masculino	2018-06-11	Ativo	Machine Learning	FL02
DT41584	Alexandre Cardoso	15358.94	Analista de Dados Sênior	27	25-34	Masculino	2020-05-21	Inativo	Análise de Dados	FL02
DT64592	Lívia Marques	11247.89	Product Manager Pleno	34	25-34	Feminino	2014-07-24	Ativo	Produto	FL10
DT58637	Juliana Mendes	9206.15	Engenheiro de Dados Pleno	42	35-44	Feminino	2025-02-09	Ativo	Engenharia de Dados	FL07
DT34662	Fernanda Rodrigues	8177.88	Analista Comercial Pleno	39	35-44	Feminino	2016-10-19	Inativo	Vendas e Parcerias	FL07
DT34906	Lucas Carvalho	5443.13	Analista Comercial Júnior	48	45-54	Masculino	2015-06-11	Ativo	Vendas e Parcerias	FL02
DT61987	Ricardo Carvalho	14989.81	Analista de Dados Sênior	42	35-44	Masculino	2020-06-16	Ativo	Análise de Dados	FL01
DT44283	Leonardo Barbosa	25728.03	Especialista em IA	48	45-54	Masculino	2017-03-08	Inativo	Machine Learning	FL01
DT64254	Leonardo Rocha	11965.01	Engenheiro de Dados Pleno	19	18-24	Masculino	2015-11-07	Ativo	Engenharia de Dados	FL02
DT48691	Fernando Marques	10984.39	Cientista de Dados Pleno	42	35-44	Masculino	2022-10-12	Inativo	Ciência de Dados	FL02
DT43728	Pedro Dias	23732.07	Diretor Comercial	59	55+	Masculino	2021-01-01	Ativo	Vendas e Parcerias	FL02
DT32185	Elisa Nascimento	21696.31	Lead de Ciência de Dados	52	45-54	Feminino	2024-05-24	Ativo	Ciência de Dados	FL04
DT19742	Priscila Oliveira	5910.85	Analista Financeiro Júnior	44	35-44	Feminino	2013-01-31	Inativo	Financeiro	FL04
DT29795	Thiago Rodrigues	11022.93	Engenheiro de Dados Pleno	41	35-44	Masculino	2011-05-11	Ativo	Engenharia de Dados	FL01
DT96413	Vitor Cardoso	5019.84	Engenheiro Cloud Júnior	53	45-54	Masculino	2019-03-24	Ativo	Infraestrutura e Cloud	FL01
DT80220	Daniel Fernandes	5755.54	Analista de Dados Júnior	62	55+	Masculino	2025-02-12	Ativo	Análise de Dados	FL02
DT24026	Cristina Ribeiro	9963.88	Engenheiro de Dados Pleno	57	55+	Feminino	2021-10-22	Ativo	Engenharia de Dados	FL07
DT62022	Leonardo Fernandes	17816.84	Engenheiro de Dados Sênior	47	45-54	Masculino	2022-09-03	Ativo	Engenharia de Dados	FL01
DT49318	Ricardo Almeida	5634.34	Analista Financeiro Júnior	59	55+	Masculino	2010-09-17	Ativo	Financeiro	FL01
DT82443	Henrique Moreira	6910.24	Engenheiro Cloud Júnior	62	55+	Masculino	2013-11-04	Ativo	Infraestrutura e Cloud	FL02
DT94529	Monique Machado	9684.37	Engenheiro de ML Júnior	20	18-24	Feminino	2015-02-26	Ativo	Machine Learning	FL09
DT45532	Julio Cardoso	7553.29	Engenheiro de Dados Júnior	35	35-44	Masculino	2022-03-07	Ativo	Engenharia de Dados	FL01
DT51220	Fernanda Ribeiro	11348.14	Engenheiro de Dados Pleno	43	35-44	Feminino	2011-09-23	Ativo	Engenharia de Dados	FL09
DT84277	Fernando Lopes	17611.15	Engenheiro de ML Sênior	26	25-34	Masculino	2011-10-05	Ativo	Machine Learning	FL01
DT22803	Vanessa Souza	9935.36	Analista de BI Pleno	39	35-44	Feminino	2023-07-29	Ativo	Business Intelligence	FL05
DT52778	Marcelo Nunes	17025.97	Engenheiro de Dados Sênior	46	45-54	Masculino	2021-01-02	Ativo	Engenharia de Dados	FL02
DT66603	Lívia Moreira	21057.01	Lead de Ciência de Dados	57	55+	Feminino	2016-08-16	Ativo	Ciência de Dados	FL10
DT20752	Ricardo Rodrigues	8830.00	Analista de Dados Pleno	58	55+	Masculino	2013-06-17	Ativo	Análise de Dados	FL03
DT23965	Tatiana Andrade	8328.88	Engenheiro de Dados Júnior	46	45-54	Feminino	2018-01-27	Ativo	Engenharia de Dados	FL05
DT21442	Rafael Lima	23417.48	Lead de Ciência de Dados	53	45-54	Masculino	2021-06-29	Ativo	Ciência de Dados	FL01
DT56388	Ana Ferreira	7790.77	Product Manager Júnior	38	35-44	Feminino	2018-08-22	Ativo	Produto	FL04
DT21101	Aline Moreira	9001.86	Analista Financeiro Pleno	28	25-34	Feminino	2018-07-16	Ativo	Financeiro	FL06
DT45180	Letícia Barbosa	8753.07	Engenheiro Cloud Pleno	45	45-54	Feminino	2016-03-10	Ativo	Infraestrutura e Cloud	FL03
DT57333	Pedro Rodrigues	10023.15	Analista de Dados Pleno	49	45-54	Masculino	2023-04-27	Ativo	Análise de Dados	FL03
DT27758	Renata Alves	6872.06	Analista de Dados Júnior	39	35-44	Feminino	2023-11-29	Ativo	Análise de Dados	FL06
DT67700	Julio Dias	28523.80	Especialista em IA	59	55+	Masculino	2023-05-02	Ativo	Machine Learning	FL02
DT72784	Gustavo Martins	14840.59	Engenheiro de ML Pleno	38	35-44	Masculino	2016-07-15	Ativo	Machine Learning	FL01
DT85481	Paulo Ramos	13192.25	Analista de Dados Sênior	43	35-44	Masculino	2018-03-10	Ativo	Análise de Dados	FL02
DT87624	Fernando Martins	11226.85	Engenheiro Cloud Pleno	53	45-54	Masculino	2010-08-09	Inativo	Infraestrutura e Cloud	FL01
DT67469	Carlos Carvalho	6547.41	Analista de Dados Júnior	44	35-44	Masculino	2025-02-04	Ativo	Análise de Dados	FL01
DT41722	Bruna Barbosa	10003.33	Analista de Dados Pleno	42	35-44	Feminino	2011-08-29	Ativo	Análise de Dados	FL08
DT86315	Marcelo Cardoso	19261.87	Gerente de BI	41	35-44	Masculino	2022-01-16	Ativo	Business Intelligence	FL01
DT24335	Cristina Ferreira	8801.61	Analista Comercial Pleno	40	35-44	Feminino	2013-09-24	Ativo	Vendas e Parcerias	FL03
DT53463	Gabriel Nunes	4026.37	Analista de BI Júnior	34	25-34	Masculino	2014-12-24	Ativo	Business Intelligence	FL01
DT68429	Priscila Almeida	25704.51	Especialista em IA	61	55+	Feminino	2023-03-15	Ativo	Machine Learning	FL07
DT13219	Mariana Nascimento	5886.30	Engenheiro Cloud Júnior	23	18-24	Feminino	2012-08-08	Inativo	Infraestrutura e Cloud	FL03
DT55656	Renato Gomes	18004.33	Engenheiro de ML Sênior	31	25-34	Masculino	2021-09-08	Ativo	Machine Learning	FL01
DT67431	Carla Alves	17913.46	Gerente Financeiro	37	35-44	Feminino	2011-01-02	Ativo	Financeiro	FL08
DT54967	Camila Santos	4854.28	Analista de RH Júnior	28	25-34	Feminino	2015-06-22	Ativo	Recursos Humanos	FL04
DT53383	Alexandre Costa	27709.24	Head de Produto	32	25-34	Masculino	2019-02-01	Ativo	Produto	FL02
DT61849	Beatriz Machado	10798.30	Engenheiro de Dados Pleno	45	45-54	Feminino	2018-09-21	Ativo	Engenharia de Dados	FL05
DT46483	Diego Carvalho	5070.17	Analista Comercial Júnior	52	45-54	Masculino	2014-03-12	Ativo	Vendas e Parcerias	FL01
DT24936	Larissa Freitas	20166.29	Gerente de Análise de Dados	58	55+	Feminino	2017-01-11	Ativo	Análise de Dados	FL05
DT86939	Natália Nunes	16435.92	Cientista de Dados Sênior	47	45-54	Feminino	2023-11-06	Ativo	Ciência de Dados	FL04
DT90541	Daniela Barbosa	8016.33	Product Manager Júnior	38	35-44	Feminino	2012-08-23	Ativo	Produto	FL03
DT58929	Rafael Ribeiro	8787.89	Analista Financeiro Pleno	44	35-44	Masculino	2023-05-18	Ativo	Financeiro	FL01
DT34347	Patrícia Machado	10719.65	Engenheiro Cloud Pleno	49	45-54	Feminino	2016-06-24	Ativo	Infraestrutura e Cloud	FL05
DT91187	Tatiana Mendes	17783.29	Engenheiro de Dados Sênior	49	45-54	Feminino	2013-01-23	Ativo	Engenharia de Dados	FL08
DT95599	Henrique Gonçalves	23792.88	Arquiteto Cloud	44	35-44	Masculino	2019-12-16	Ativo	Infraestrutura e Cloud	FL03
DT38905	Juliana Santos	5187.13	Analista de Dados Júnior	52	45-54	Feminino	2016-06-22	Ativo	Análise de Dados	FL03
DT82053	Carlos Ramos	6718.14	Engenheiro Cloud Júnior	35	35-44	Masculino	2022-03-08	Inativo	Infraestrutura e Cloud	FL01
DT15453	Leonardo Monteiro	20370.83	Diretor Comercial	45	45-54	Masculino	2012-04-18	Ativo	Vendas e Parcerias	FL01
DT49021	Paulo Lopes	20208.30	Arquiteto de Dados	23	18-24	Masculino	2019-11-06	Inativo	Engenharia de Dados	FL01
DT37509	Rafael Lopes	14374.72	Gerente de Contas	57	55+	Masculino	2024-03-11	Ativo	Vendas e Parcerias	FL02
DT37082	Marcelo Lima	7710.22	Cientista de Dados Júnior	52	45-54	Masculino	2016-04-21	Ativo	Ciência de Dados	FL01
DT48356	Bruno Rocha	15785.79	Analista de Dados Sênior	50	45-54	Masculino	2025-03-27	Ativo	Análise de Dados	FL01
DT17770	Felipe Marques	9954.99	Analista de Dados Pleno	26	25-34	Masculino	2015-08-08	Ativo	Análise de Dados	FL01
DT98635	Gustavo Lopes	16853.03	Gerente de BI	58	55+	Masculino	2016-01-11	Ativo	Business Intelligence	FL02
DT19898	Henrique Mendes	4305.70	Analista de RH Júnior	35	35-44	Masculino	2018-04-12	Ativo	Recursos Humanos	FL02
DT86278	Pedro Rocha	7692.80	Engenheiro de Dados Júnior	47	45-54	Masculino	2024-03-28	Ativo	Engenharia de Dados	FL02
DT80048	Leonardo Rodrigues	10388.45	Analista de BI Pleno	31	25-34	Masculino	2021-02-04	Ativo	Business Intelligence	FL01
DT54270	Luana Vieira	12047.64	Product Manager Pleno	49	45-54	Feminino	2017-09-16	Inativo	Produto	FL04
DT16021	Leandro Souza	18605.83	Arquiteto de Dados	28	25-34	Masculino	2019-11-25	Ativo	Engenharia de Dados	FL01
DT27290	Aline Martins	10056.42	Analista de RH Sênior	35	35-44	Feminino	2012-02-04	Ativo	Recursos Humanos	FL04
DT58738	Letícia Ferreira	7181.26	Analista Financeiro Pleno	58	55+	Feminino	2016-11-07	Ativo	Financeiro	FL06
DT66260	Leandro Almeida	4907.40	Analista de RH Júnior	18	18-24	Masculino	2014-10-15	Ativo	Recursos Humanos	FL01
DT78084	Mariana Almeida	16055.72	Gerente Financeiro	62	55+	Feminino	2017-09-15	Ativo	Financeiro	FL06
DT27324	Monique Machado	5686.84	Engenheiro Cloud Júnior	23	18-24	Feminino	2012-04-19	Ativo	Infraestrutura e Cloud	FL04
DT27973	Vanessa Barbosa	13387.09	Engenheiro de ML Pleno	61	55+	Feminino	2013-03-16	Ativo	Machine Learning	FL06
DT89995	Fernando Silva	7320.30	Analista de RH Pleno	31	25-34	Masculino	2024-02-02	Ativo	Recursos Humanos	FL02
DT90750	Marcos Marques	21159.78	Gerente Financeiro	23	18-24	Masculino	2012-04-03	Ativo	Financeiro	FL02
DT56076	Camila Moreira	14559.84	Analista de BI Sênior	33	25-34	Feminino	2016-03-18	Ativo	Business Intelligence	FL06
DT13515	Thiago Vieira	10219.06	Analista de RH Sênior	56	55+	Masculino	2021-06-06	Ativo	Recursos Humanos	FL01
DT94694	Patrícia Vieira	10979.55	Engenheiro de Dados Pleno	25	25-34	Feminino	2015-05-29	Ativo	Engenharia de Dados	FL04
DT79243	Natália Rodrigues	17702.66	Engenheiro de Dados Sênior	26	25-34	Feminino	2018-09-04	Inativo	Engenharia de Dados	FL09
DT57895	Isabela Marques	11550.90	Engenheiro Cloud Pleno	22	18-24	Feminino	2010-05-17	Ativo	Infraestrutura e Cloud	FL03
DT38277	Lucas Sousa	8346.04	Engenheiro de Dados Júnior	43	35-44	Masculino	2021-05-13	Ativo	Engenharia de Dados	FL01
DT64451	Ricardo Gonçalves	16494.57	Gerente de BI	52	45-54	Masculino	2022-01-22	Ativo	Business Intelligence	FL01
DT50620	Rodrigo Ferreira	12897.25	Engenheiro de Dados Pleno	27	25-34	Masculino	2022-01-12	Ativo	Engenharia de Dados	FL01
DT50654	Fernando Rodrigues	20379.75	Gerente Financeiro	33	25-34	Masculino	2011-04-20	Ativo	Financeiro	FL02
DT25202	Marcos Machado	4773.23	Analista de BI Júnior	60	55+	Masculino	2013-12-09	Ativo	Business Intelligence	FL01
DT11487	Ricardo Lima	26694.61	Lead de Ciência de Dados	51	45-54	Masculino	2021-08-08	Ativo	Ciência de Dados	FL01
DT31884	Renato Sousa	13873.99	Engenheiro de ML Pleno	35	35-44	Masculino	2012-08-25	Ativo	Machine Learning	FL03
DT66272	Lucas Dias	5157.37	Analista de Dados Júnior	54	45-54	Masculino	2024-01-28	Ativo	Análise de Dados	FL01
DT57202	Carlos Gonçalves	24085.84	Arquiteto de Dados	28	25-34	Masculino	2018-04-01	Ativo	Engenharia de Dados	FL01
DT85223	Leandro Alves	4571.01	Analista Financeiro Júnior	50	45-54	Masculino	2010-01-22	Ativo	Financeiro	FL02
DT42053	Julio Silva	20865.85	Arquiteto de Dados	27	25-34	Masculino	2014-01-06	Inativo	Engenharia de Dados	FL02
DT82465	Monique Oliveira	17347.09	Gerente Financeiro	33	25-34	Feminino	2019-05-03	Inativo	Financeiro	FL04
DT20208	Gustavo Fernandes	15156.71	Product Manager Sênior	61	55+	Masculino	2011-03-08	Ativo	Produto	FL02
DT16019	Fábio Araújo	6192.48	Analista de BI Júnior	36	35-44	Masculino	2016-12-20	Ativo	Business Intelligence	FL02
DT11044	Alexandre Freitas	11812.18	Engenheiro de ML Pleno	37	35-44	Masculino	2023-12-20	Ativo	Machine Learning	FL01
DT35614	Vanessa Ramos	7026.98	Analista Comercial Pleno	44	35-44	Feminino	2010-07-15	Ativo	Vendas e Parcerias	FL06
DT53911	Leonardo Silva	24018.54	Arquiteto de Dados	37	35-44	Masculino	2012-05-01	Ativo	Engenharia de Dados	FL01
DT74491	Thiago Marques	11846.61	Engenheiro de Dados Pleno	23	18-24	Masculino	2010-12-26	Inativo	Engenharia de Dados	FL02
DT64140	Roberta Araújo	12833.83	Analista Financeiro Sênior	23	18-24	Feminino	2023-01-10	Ativo	Financeiro	FL08
DT19808	Mariana Nunes	7304.95	Product Manager Júnior	26	25-34	Feminino	2015-04-24	Ativo	Produto	FL05
DT61505	Julio Rocha	12272.23	Analista Financeiro Sênior	35	35-44	Masculino	2015-03-29	Ativo	Financeiro	FL03
DT86638	Diego Lima	9422.63	Engenheiro de Dados Pleno	46	45-54	Masculino	2020-06-14	Ativo	Engenharia de Dados	FL01
DT56961	Rafael Monteiro	8081.71	Analista Comercial Pleno	47	45-54	Masculino	2015-12-11	Inativo	Vendas e Parcerias	FL03
DT99922	Juliana Costa	5037.55	Analista de Dados Júnior	38	35-44	Feminino	2013-04-30	Ativo	Análise de Dados	FL04
DT61936	Thiago Nascimento	7031.55	Engenheiro Cloud Júnior	34	25-34	Masculino	2013-11-25	Ativo	Infraestrutura e Cloud	FL02
DT82869	Patrícia Mendes	6831.54	Analista Comercial Pleno	24	18-24	Feminino	2013-02-19	Ativo	Vendas e Parcerias	FL06
DT27133	Gabriel Almeida	22919.56	Lead de Ciência de Dados	58	55+	Masculino	2024-06-17	Ativo	Ciência de Dados	FL01
DT19828	Fernando Sousa	6093.25	Engenheiro de Dados Júnior	59	55+	Masculino	2019-12-12	Ativo	Engenharia de Dados	FL01
DT26059	Matheus Dias	18829.15	Arquiteto de Dados	54	45-54	Masculino	2019-09-19	Inativo	Engenharia de Dados	FL02
DT13864	Henrique Ramos	23382.46	Especialista em IA	31	25-34	Masculino	2014-03-14	Ativo	Machine Learning	FL03
DT14541	Carlos Gomes	7941.84	Analista de RH Pleno	49	45-54	Masculino	2019-03-30	Inativo	Recursos Humanos	FL01
DT21497	Carla Souza	17823.42	Gerente de Análise de Dados	30	25-34	Feminino	2024-05-31	Ativo	Análise de Dados	FL03
DT92674	Daniel Lopes	7968.21	Engenheiro Cloud Júnior	40	35-44	Masculino	2020-10-04	Ativo	Infraestrutura e Cloud	FL02
DT84141	Pedro Nascimento	14941.91	Engenheiro Cloud Sênior	29	25-34	Masculino	2010-08-02	Ativo	Infraestrutura e Cloud	FL01
DT46822	Thiago Santos	21941.31	Arquiteto de Dados	55	55+	Masculino	2015-03-22	Inativo	Engenharia de Dados	FL02
DT96096	Camila Lopes	13901.60	Analista de Dados Sênior	21	18-24	Feminino	2014-12-03	Ativo	Análise de Dados	FL05
DT56504	Fábio Moreira	10564.48	Cientista de Dados Pleno	38	35-44	Masculino	2018-01-18	Inativo	Ciência de Dados	FL02
DT84403	Ana Nascimento	12033.99	Product Manager Pleno	30	25-34	Feminino	2021-01-15	Ativo	Produto	FL05
DT14975	Bruno Ramos	6197.87	Engenheiro de Dados Júnior	32	25-34	Masculino	2010-06-13	Ativo	Engenharia de Dados	FL02
DT90495	Lucas Dias	11033.42	Cientista de Dados Pleno	29	25-34	Masculino	2017-04-04	Ativo	Ciência de Dados	FL01
DT24538	Felipe Gomes	17802.79	Engenheiro Cloud Sênior	41	35-44	Masculino	2024-11-07	Ativo	Infraestrutura e Cloud	FL03
DT49552	Camila Dias	14891.37	Engenheiro de ML Pleno	45	45-54	Feminino	2024-05-03	Ativo	Machine Learning	FL03
DT32833	Paulo Rocha	11892.95	Analista Financeiro Sênior	55	55+	Masculino	2013-12-07	Ativo	Financeiro	FL03
DT26691	Elisa Vieira	8846.36	Cientista de Dados Júnior	54	45-54	Feminino	2018-10-13	Inativo	Ciência de Dados	FL05
DT33865	Leandro Oliveira	19565.71	Product Manager Sênior	57	55+	Masculino	2014-12-15	Ativo	Produto	FL01
DT28434	Camila Ramos	7713.99	Engenheiro de ML Júnior	38	35-44	Feminino	2013-10-07	Ativo	Machine Learning	FL07
DT68540	Juliana Dias	14443.58	Engenheiro de Dados Sênior	62	55+	Feminino	2011-07-10	Ativo	Engenharia de Dados	FL04
DT10167	Vitória Alves	21348.43	Arquiteto de Dados	44	35-44	Feminino	2013-09-24	Inativo	Engenharia de Dados	FL07
DT56036	Pedro Moreira	19710.00	Arquiteto Cloud	48	45-54	Masculino	2022-12-19	Ativo	Infraestrutura e Cloud	FL01
DT31319	Vitor Almeida	5997.99	Analista de BI Júnior	20	18-24	Masculino	2016-08-12	Ativo	Business Intelligence	FL02
DT19725	Rodrigo Alves	14495.69	Engenheiro de ML Pleno	28	25-34	Masculino	2011-09-07	Ativo	Machine Learning	FL02
DT54295	Roberta Ferreira	25931.53	Head de Produto	45	45-54	Feminino	2024-08-29	Ativo	Produto	FL08
DT30591	Roberta Machado	6493.28	Engenheiro de Dados Júnior	30	25-34	Feminino	2019-03-07	Ativo	Engenharia de Dados	FL06
DT44768	Renato Monteiro	10540.90	Analista de RH Sênior	24	18-24	Masculino	2011-02-11	Ativo	Recursos Humanos	FL01
DT30131	Lívia Ramos	13517.17	Engenheiro de Dados Sênior	23	18-24	Feminino	2016-08-09	Inativo	Engenharia de Dados	FL04
DT36171	Paulo Cardoso	6120.86	Engenheiro de Dados Júnior	58	55+	Masculino	2016-07-18	Inativo	Engenharia de Dados	FL02
DT50416	Carla Pereira	18934.58	Gerente de BI	60	55+	Feminino	2015-12-11	Ativo	Business Intelligence	FL04
DT34232	Alexandre Moreira	24955.21	Especialista em IA	46	45-54	Masculino	2011-01-01	Ativo	Machine Learning	FL02
DT39654	Renata Sousa	4877.83	Analista de Dados Júnior	62	55+	Feminino	2024-12-20	Ativo	Análise de Dados	FL07
DT80968	Vitor Nascimento	8937.61	Analista de BI Pleno	42	35-44	Masculino	2021-09-20	Ativo	Business Intelligence	FL02
DT85066	Alexandre Cardoso	18793.11	Gerente de Análise de Dados	43	35-44	Masculino	2010-10-12	Ativo	Análise de Dados	FL01
DT84905	André Araújo	7420.99	Analista Financeiro Pleno	46	45-54	Masculino	2013-11-17	Inativo	Financeiro	FL01
DT35260	Beatriz Carvalho	7270.12	Cientista de Dados Júnior	61	55+	Feminino	2019-10-07	Ativo	Ciência de Dados	FL06
DT87994	Caio Gomes	15598.62	Analista de Dados Sênior	22	18-24	Masculino	2011-12-14	Ativo	Análise de Dados	FL02
DT46202	Patrícia Rocha	25420.13	Arquiteto Cloud	18	18-24	Feminino	2023-12-23	Ativo	Infraestrutura e Cloud	FL08
DT24748	Vitória Marques	7518.70	Analista de BI Pleno	55	55+	Feminino	2023-01-26	Ativo	Business Intelligence	FL10
DT83752	Rafael Alves	5528.64	Analista Comercial Júnior	52	45-54	Masculino	2017-09-17	Inativo	Vendas e Parcerias	FL02
DT95824	Letícia Moreira	19262.26	Arquiteto Cloud	35	35-44	Feminino	2019-01-15	Ativo	Infraestrutura e Cloud	FL03
DT15083	Marcelo Nunes	14107.31	Analista de BI Sênior	21	18-24	Masculino	2020-08-28	Inativo	Business Intelligence	FL01
DT12651	André Andrade	17210.22	Engenheiro de ML Sênior	49	45-54	Masculino	2012-03-15	Inativo	Machine Learning	FL02
DT49384	Thiago Lima	22192.25	Diretor Comercial	38	35-44	Masculino	2016-01-17	Ativo	Vendas e Parcerias	FL02
DT34633	Marcelo Ferreira	10197.01	Analista de BI Pleno	44	35-44	Masculino	2020-11-12	Ativo	Business Intelligence	FL01
DT17367	Julio Andrade	8762.47	Engenheiro Cloud Pleno	50	45-54	Masculino	2019-01-18	Ativo	Infraestrutura e Cloud	FL02
DT84537	Julio Araújo	9771.05	Engenheiro de Dados Pleno	30	25-34	Masculino	2011-04-18	Ativo	Engenharia de Dados	FL01
DT57235	Renata Souza	7958.92	Analista Financeiro Pleno	47	45-54	Feminino	2021-04-30	Ativo	Financeiro	FL04
DT99282	Cristina Pereira	10489.87	Engenheiro de Dados Pleno	56	55+	Feminino	2020-01-03	Ativo	Engenharia de Dados	FL04
DT86923	Julio Cardoso	16393.37	Product Manager Sênior	34	25-34	Masculino	2012-01-11	Ativo	Produto	FL02
DT31352	Henrique Souza	13357.00	Product Manager Pleno	59	55+	Masculino	2015-01-19	Ativo	Produto	FL01
DT77276	Letícia Marques	6922.29	Engenheiro de Dados Júnior	26	25-34	Feminino	2024-07-09	Ativo	Engenharia de Dados	FL04
DT39329	Vitória Silva	14707.33	Analista de Dados Sênior	59	55+	Feminino	2016-03-05	Ativo	Análise de Dados	FL06
DT70161	Patrícia Nascimento	9133.44	Analista de Dados Pleno	61	55+	Feminino	2021-09-05	Inativo	Análise de Dados	FL08
DT10963	Patrícia Alves	15807.29	Engenheiro Cloud Sênior	56	55+	Feminino	2023-08-30	Ativo	Infraestrutura e Cloud	FL04
DT73142	Daniela Alves	17947.62	Engenheiro de Dados Sênior	58	55+	Feminino	2017-04-17	Inativo	Engenharia de Dados	FL05
DT34688	Rodrigo Barbosa	13548.59	Cientista de Dados Pleno	56	55+	Masculino	2019-01-24	Ativo	Ciência de Dados	FL01
DT13336	Vitor Lima	18987.35	Gerente de RH	34	25-34	Masculino	2019-05-22	Ativo	Recursos Humanos	FL01
DT86418	Renato Oliveira	8201.08	Analista Financeiro Pleno	32	25-34	Masculino	2021-12-28	Ativo	Financeiro	FL01
DT76494	Carla Nascimento	10442.24	Analista de Dados Pleno	53	45-54	Feminino	2014-01-23	Ativo	Análise de Dados	FL06
DT43902	Carla Lima	10314.23	Analista Financeiro Pleno	39	35-44	Feminino	2024-09-05	Ativo	Financeiro	FL07
DT50250	Leonardo Almeida	12672.57	Analista de BI Sênior	55	55+	Masculino	2016-08-05	Ativo	Business Intelligence	FL01
DT17035	Camila Cardoso	4444.44	Analista de RH Júnior	30	25-34	Feminino	2021-03-23	Ativo	Recursos Humanos	FL04
DT79446	Daniela Moreira	17324.37	Gerente de Análise de Dados	27	25-34	Feminino	2013-01-30	Inativo	Análise de Dados	FL08
DT84632	Gustavo Marques	8107.34	Analista de BI Pleno	29	25-34	Masculino	2011-10-25	Ativo	Business Intelligence	FL02
DT51079	Paulo Ribeiro	3509.43	Analista de RH Júnior	35	35-44	Masculino	2014-09-12	Ativo	Recursos Humanos	FL02
DT74169	Bruno Costa	4084.69	Analista Comercial Júnior	45	45-54	Masculino	2024-03-17	Ativo	Vendas e Parcerias	FL01
DT60242	Eduardo Cardoso	7101.35	Engenheiro de Dados Júnior	41	35-44	Masculino	2010-04-26	Inativo	Engenharia de Dados	FL02
DT34979	Sabrina Araújo	7380.06	Engenheiro de Dados Júnior	33	25-34	Feminino	2015-01-28	Ativo	Engenharia de Dados	FL06
DT26899	Vanessa Barbosa	21771.69	Arquiteto de Dados	37	35-44	Feminino	2013-09-30	Ativo	Engenharia de Dados	FL08
DT48119	Gabriel Barbosa	12951.49	Analista de BI Sênior	61	55+	Masculino	2013-01-01	Ativo	Business Intelligence	FL02
DT57087	Roberta Ramos	7077.09	Analista Comercial Pleno	43	35-44	Feminino	2010-06-06	Ativo	Vendas e Parcerias	FL09
DT37681	Elisa Lima	5097.32	Analista Comercial Júnior	28	25-34	Feminino	2012-10-05	Ativo	Vendas e Parcerias	FL04
DT59177	Paulo Oliveira	12199.37	Analista de RH Sênior	57	55+	Masculino	2011-02-03	Ativo	Recursos Humanos	FL01
DT95664	Fernanda Alves	7569.25	Engenheiro de Dados Júnior	44	35-44	Feminino	2019-12-19	Ativo	Engenharia de Dados	FL07
DT72180	Alexandre Sousa	7719.23	Analista Financeiro Pleno	61	55+	Masculino	2024-02-20	Ativo	Financeiro	FL01
DT96832	Aline Alves	16113.99	Engenheiro Cloud Sênior	62	55+	Feminino	2013-01-28	Ativo	Infraestrutura e Cloud	FL08
DT77054	André Alves	4706.77	Analista Financeiro Júnior	24	18-24	Masculino	2021-03-01	Ativo	Financeiro	FL01
DT78569	Larissa Sousa	18368.90	Cientista de Dados Sênior	36	35-44	Feminino	2013-08-06	Ativo	Ciência de Dados	FL07
DT73001	Carla Carvalho	10512.32	Engenheiro de ML Pleno	60	55+	Feminino	2011-12-31	Inativo	Machine Learning	FL07
DT29548	Caio Ramos	7670.69	Engenheiro de Dados Júnior	24	18-24	Masculino	2015-09-28	Ativo	Engenharia de Dados	FL01
DT44619	Carlos Vieira	4249.52	Analista de BI Júnior	29	25-34	Masculino	2010-11-20	Inativo	Business Intelligence	FL01
DT65836	Vanessa Rocha	4009.00	Analista Comercial Júnior	20	18-24	Feminino	2010-03-21	Inativo	Vendas e Parcerias	FL06
DT53078	Daniela Costa	29640.71	Especialista em IA	35	35-44	Feminino	2012-02-01	Ativo	Machine Learning	FL09
DT24920	Gustavo Ribeiro	21773.86	Gerente de BI	35	35-44	Masculino	2018-08-26	Ativo	Business Intelligence	FL01
DT95045	Pedro Marques	6397.53	Cientista de Dados Júnior	21	18-24	Masculino	2013-07-29	Ativo	Ciência de Dados	FL01
DT84572	Marcos Cardoso	17087.56	Gerente Financeiro	42	35-44	Masculino	2018-01-16	Ativo	Financeiro	FL02
DT73318	Monique Lima	7662.78	Engenheiro Cloud Júnior	46	45-54	Feminino	2011-01-12	Ativo	Infraestrutura e Cloud	FL09
DT11620	Paulo Rocha	10422.63	Analista Financeiro Pleno	60	55+	Masculino	2017-08-03	Ativo	Financeiro	FL01
DT66734	Ricardo Alves	7445.79	Analista de RH Pleno	60	55+	Masculino	2025-03-03	Ativo	Recursos Humanos	FL02
DT11526	Felipe Souza	7516.70	Analista de RH Pleno	48	45-54	Masculino	2021-02-13	Inativo	Recursos Humanos	FL01
DT52026	Matheus Ramos	15865.65	Analista de Dados Sênior	21	18-24	Masculino	2021-05-15	Ativo	Análise de Dados	FL01
DT62858	Paulo Moreira	5647.74	Analista de Dados Júnior	54	45-54	Masculino	2020-01-19	Ativo	Análise de Dados	FL02
DT51426	Pedro Mendes	25344.05	Lead de Ciência de Dados	19	18-24	Masculino	2012-04-20	Ativo	Ciência de Dados	FL02
DT21913	Fernanda Silva	19395.61	Product Manager Sênior	53	45-54	Feminino	2014-08-22	Ativo	Produto	FL07
DT57624	Carlos Dias	12377.27	Engenheiro de Dados Pleno	39	35-44	Masculino	2022-07-25	Ativo	Engenharia de Dados	FL01
DT96136	Marcelo Cardoso	22912.19	Especialista em IA	60	55+	Masculino	2014-12-22	Ativo	Machine Learning	FL01
DT81786	Leonardo Vieira	16510.48	Engenheiro Cloud Sênior	20	18-24	Masculino	2013-09-06	Ativo	Infraestrutura e Cloud	FL01
DT24019	Caio Marques	8156.40	Analista de Dados Pleno	43	35-44	Masculino	2014-11-02	Ativo	Análise de Dados	FL03
DT54293	Fábio Martins	18802.25	Arquiteto de Dados	58	55+	Masculino	2025-01-28	Ativo	Engenharia de Dados	FL01
DT69950	Leandro Mendes	8891.56	Analista de RH Pleno	18	18-24	Masculino	2021-11-23	Ativo	Recursos Humanos	FL02
DT86692	Alexandre Machado	11267.27	Engenheiro Cloud Pleno	29	25-34	Masculino	2012-11-17	Ativo	Infraestrutura e Cloud	FL03
DT76074	Daniela Rocha	29836.01	Especialista em IA	62	55+	Feminino	2015-07-27	Ativo	Machine Learning	FL10
DT69355	Tatiana Vieira	11357.35	Cientista de Dados Pleno	62	55+	Feminino	2021-06-28	Ativo	Ciência de Dados	FL07
DT82559	Ricardo Rocha	6602.67	Analista de RH Pleno	57	55+	Masculino	2016-07-08	Ativo	Recursos Humanos	FL02
DT95208	Marcos Lima	18406.94	Cientista de Dados Sênior	40	35-44	Masculino	2022-08-12	Ativo	Ciência de Dados	FL02
DT98374	Fernando Marques	14448.65	Gerente de Contas	45	45-54	Masculino	2010-04-15	Ativo	Vendas e Parcerias	FL01
DT29048	Ana Moreira	6099.71	Engenheiro de Dados Júnior	28	25-34	Feminino	2016-06-05	Ativo	Engenharia de Dados	FL10
DT48684	Felipe Souza	7076.05	Cientista de Dados Júnior	46	45-54	Masculino	2012-04-19	Ativo	Ciência de Dados	FL01
DT94819	Vitor Almeida	22663.17	Head de Produto	62	55+	Masculino	2016-06-14	Ativo	Produto	FL02
DT60797	Fernanda Moreira	15346.25	Analista de BI Sênior	21	18-24	Feminino	2010-04-17	Ativo	Business Intelligence	FL03
DT39563	Larissa Mendes	12142.88	Analista de RH Sênior	52	45-54	Feminino	2023-07-14	Ativo	Recursos Humanos	FL08
DT48558	Renato Martins	10442.09	Analista de BI Pleno	22	18-24	Masculino	2014-03-12	Inativo	Business Intelligence	FL02
DT25643	Renato Gonçalves	8285.52	Engenheiro de ML Júnior	53	45-54	Masculino	2015-12-05	Ativo	Machine Learning	FL02
DT10739	Fernando Sousa	27677.51	Especialista em IA	27	25-34	Masculino	2010-11-24	Ativo	Machine Learning	FL01
DT91968	Tatiana Souza	11216.93	Analista de RH Sênior	54	45-54	Feminino	2022-05-04	Ativo	Recursos Humanos	FL07
DT78864	Fábio Rocha	9322.12	Analista de Dados Pleno	50	45-54	Masculino	2013-07-29	Ativo	Análise de Dados	FL01
DT22051	Alexandre Nunes	14475.29	Engenheiro de ML Pleno	60	55+	Masculino	2017-06-11	Ativo	Machine Learning	FL02
DT91039	Anderson Carvalho	25976.42	Arquiteto Cloud	59	55+	Masculino	2010-03-14	Ativo	Infraestrutura e Cloud	FL01
DT41502	Leonardo Mendes	8876.69	Analista de RH Pleno	61	55+	Masculino	2017-03-14	Ativo	Recursos Humanos	FL01
DT60577	Fábio Pereira	11611.18	Analista de Dados Sênior	51	45-54	Masculino	2018-05-30	Ativo	Análise de Dados	FL01
DT73806	Priscila Mendes	17542.27	Engenheiro de Dados Sênior	30	25-34	Feminino	2017-03-09	Ativo	Engenharia de Dados	FL03
DT80513	Camila Costa	6880.80	Engenheiro Cloud Júnior	31	25-34	Feminino	2025-01-13	Ativo	Infraestrutura e Cloud	FL05
DT23621	Larissa Machado	24702.65	Lead de Ciência de Dados	22	18-24	Feminino	2013-06-13	Ativo	Ciência de Dados	FL10
DT14965	Ricardo Dias	5662.80	Engenheiro de Dados Júnior	34	25-34	Masculino	2022-07-08	Ativo	Engenharia de Dados	FL02
DT43901	Luana Almeida	18706.75	Gerente de BI	43	35-44	Feminino	2019-09-18	Ativo	Business Intelligence	FL06
DT80101	Patrícia Pereira	7767.88	Engenheiro de Dados Júnior	55	55+	Feminino	2011-01-08	Ativo	Engenharia de Dados	FL04
DT75907	Juliana Nascimento	17041.01	Engenheiro de Dados Sênior	37	35-44	Feminino	2023-08-09	Ativo	Engenharia de Dados	FL06
DT59992	Leandro Mendes	5184.97	Analista de BI Júnior	52	45-54	Masculino	2014-12-07	Ativo	Business Intelligence	FL03
DT48663	Henrique Monteiro	6894.17	Analista de RH Pleno	59	55+	Masculino	2018-05-15	Inativo	Recursos Humanos	FL03
DT26152	Ana Gomes	7218.16	Engenheiro de Dados Júnior	43	35-44	Feminino	2022-01-18	Ativo	Engenharia de Dados	FL05
DT37532	Matheus Barbosa	11452.82	Gerente de Contas	59	55+	Masculino	2021-06-30	Ativo	Vendas e Parcerias	FL03
DT90856	Bruno Almeida	7901.18	Analista de Dados Pleno	60	55+	Masculino	2022-09-22	Inativo	Análise de Dados	FL03
DT94498	Julio Freitas	6871.96	Product Manager Júnior	22	18-24	Masculino	2015-08-16	Ativo	Produto	FL02
DT53365	Renato Ramos	13520.83	Engenheiro de ML Pleno	33	25-34	Masculino	2012-03-30	Ativo	Machine Learning	FL01
DT51652	Juliana Martins	21298.42	Arquiteto Cloud	60	55+	Feminino	2016-11-09	Ativo	Infraestrutura e Cloud	FL07
DT51462	Mariana Andrade	7016.91	Analista de BI Pleno	33	25-34	Feminino	2014-12-20	Ativo	Business Intelligence	FL04
DT46264	Bruna Machado	13558.11	Engenheiro de ML Pleno	39	35-44	Feminino	2020-10-06	Ativo	Machine Learning	FL05
DT73828	Leonardo Barbosa	6527.31	Product Manager Júnior	56	55+	Masculino	2011-11-03	Inativo	Produto	FL03
DT80597	Julio Lima	18534.50	Cientista de Dados Sênior	58	55+	Masculino	2011-09-19	Ativo	Ciência de Dados	FL01
DT76476	André Santos	5125.28	Analista de RH Júnior	55	55+	Masculino	2019-02-01	Ativo	Recursos Humanos	FL01
DT82298	Larissa Oliveira	20923.45	Gerente de Análise de Dados	27	25-34	Feminino	2018-03-16	Ativo	Análise de Dados	FL07
DT27548	André Vieira	4991.96	Analista de BI Júnior	50	45-54	Masculino	2010-03-28	Ativo	Business Intelligence	FL01
DT77388	Julio Costa	21534.95	Lead de Ciência de Dados	54	45-54	Masculino	2022-09-10	Ativo	Ciência de Dados	FL02
DT57028	Felipe Cardoso	12045.89	Engenheiro de Dados Pleno	32	25-34	Masculino	2011-05-30	Ativo	Engenharia de Dados	FL02
DT97632	Thiago Oliveira	16634.51	Cientista de Dados Sênior	47	45-54	Masculino	2011-01-16	Ativo	Ciência de Dados	FL03
DT23529	Bruna Rocha	14339.49	Analista Financeiro Sênior	34	25-34	Feminino	2022-12-24	Ativo	Financeiro	FL05
DT95678	Bruno Moreira	18732.23	Engenheiro de ML Sênior	22	18-24	Masculino	2021-08-03	Ativo	Machine Learning	FL02
DT77681	Marcos Almeida	14677.57	Analista de BI Sênior	40	35-44	Masculino	2020-12-02	Ativo	Business Intelligence	FL03
DT75776	Roberta Silva	21576.44	Lead de Ciência de Dados	22	18-24	Feminino	2021-07-17	Ativo	Ciência de Dados	FL07
DT34498	Larissa Gomes	17811.11	Cientista de Dados Sênior	25	25-34	Feminino	2024-10-29	Ativo	Ciência de Dados	FL09
DT24855	Fábio Dias	22353.15	Arquiteto Cloud	55	55+	Masculino	2013-08-13	Ativo	Infraestrutura e Cloud	FL01
DT41938	Aline Santos	11293.95	Engenheiro de Dados Pleno	28	25-34	Feminino	2013-01-08	Ativo	Engenharia de Dados	FL04
DT17328	Gabriel Gomes	19573.46	Cientista de Dados Sênior	51	45-54	Masculino	2019-02-04	Ativo	Ciência de Dados	FL02
DT96736	Fernando Santos	5041.48	Analista de Dados Júnior	56	55+	Masculino	2020-07-28	Inativo	Análise de Dados	FL02
DT63840	Beatriz Almeida	13075.77	Product Manager Pleno	29	25-34	Feminino	2023-12-24	Ativo	Produto	FL08
DT99861	Rodrigo Costa	26772.27	Especialista em IA	22	18-24	Masculino	2015-02-26	Ativo	Machine Learning	FL02
DT12170	Mariana Alves	25872.34	Lead de Ciência de Dados	56	55+	Feminino	2012-02-28	Ativo	Ciência de Dados	FL03
DT79655	André Oliveira	5279.57	Engenheiro Cloud Júnior	60	55+	Masculino	2012-12-03	Inativo	Infraestrutura e Cloud	FL01
DT98940	Lívia Silva	16610.22	Gerente de RH	41	35-44	Feminino	2010-12-22	Ativo	Recursos Humanos	FL04
DT73192	Eduardo Almeida	18804.14	Diretor Comercial	62	55+	Masculino	2022-12-03	Ativo	Vendas e Parcerias	FL01
DT72539	Mariana Sousa	9685.30	Analista Comercial Pleno	23	18-24	Feminino	2016-05-09	Ativo	Vendas e Parcerias	FL05
DT43791	Lívia Marques	8127.45	Cientista de Dados Júnior	18	18-24	Feminino	2022-12-18	Ativo	Ciência de Dados	FL08
DT59155	Daniel Silva	8063.30	Analista de RH Pleno	38	35-44	Masculino	2019-03-04	Ativo	Recursos Humanos	FL03
DT95403	Felipe Machado	15937.17	Product Manager Sênior	52	45-54	Masculino	2019-07-02	Ativo	Produto	FL01
DT99208	Marcelo Fernandes	8446.30	Analista de BI Pleno	53	45-54	Masculino	2020-10-27	Ativo	Business Intelligence	FL03
DT43263	Alexandre Cardoso	19758.07	Engenheiro de ML Sênior	43	35-44	Masculino	2013-02-05	Inativo	Machine Learning	FL01
DT40116	Vitor Pereira	7350.98	Analista de BI Pleno	50	45-54	Masculino	2018-12-26	Ativo	Business Intelligence	FL01
DT31068	Fábio Souza	9413.11	Engenheiro de ML Júnior	27	25-34	Masculino	2020-07-30	Inativo	Machine Learning	FL02
DT18399	Eduardo Ferreira	8797.92	Analista de Dados Pleno	56	55+	Masculino	2010-11-06	Ativo	Análise de Dados	FL01
DT90473	Cristina Nunes	11990.62	Analista de RH Sênior	56	55+	Feminino	2011-04-16	Inativo	Recursos Humanos	FL04
DT93924	Caio Ribeiro	19074.97	Arquiteto Cloud	60	55+	Masculino	2021-08-15	Ativo	Infraestrutura e Cloud	FL01
DT77608	Gabriel Gonçalves	9153.16	Analista Financeiro Pleno	61	55+	Masculino	2010-10-23	Ativo	Financeiro	FL02
DT30636	Bruna Silva	17008.53	Engenheiro de Dados Sênior	40	35-44	Feminino	2025-01-07	Ativo	Engenharia de Dados	FL09
DT77861	Fernando Martins	8257.53	Engenheiro de Dados Júnior	53	45-54	Masculino	2016-05-19	Ativo	Engenharia de Dados	FL01
DT55544	Alexandre Nascimento	9622.27	Analista de Dados Pleno	30	25-34	Masculino	2020-03-14	Inativo	Análise de Dados	FL02
DT44223	Fernando Silva	23790.55	Lead de Ciência de Dados	53	45-54	Masculino	2011-08-16	Ativo	Ciência de Dados	FL03
DT77277	Gustavo Pereira	14623.86	Analista de Dados Sênior	42	35-44	Masculino	2022-08-19	Ativo	Análise de Dados	FL01
DT70142	Amanda Dias	21379.14	Gerente Financeiro	19	18-24	Feminino	2020-10-23	Ativo	Financeiro	FL05
DT93055	Juliana Moreira	10300.56	Analista de Dados Pleno	44	35-44	Feminino	2017-12-02	Ativo	Análise de Dados	FL06
DT42539	Ana Sousa	5497.33	Analista de Dados Júnior	39	35-44	Feminino	2011-09-15	Ativo	Análise de Dados	FL06
DT51139	Beatriz Cardoso	14524.42	Engenheiro de ML Pleno	35	35-44	Feminino	2014-02-06	Inativo	Machine Learning	FL05
DT75404	Daniela Martins	7322.01	Analista Comercial Pleno	33	25-34	Feminino	2015-12-15	Ativo	Vendas e Parcerias	FL05
DT91080	Diego Lopes	14005.22	Engenheiro de ML Pleno	25	25-34	Masculino	2011-10-05	Ativo	Machine Learning	FL01
DT90455	Vitor Ramos	8044.03	Engenheiro de Dados Júnior	41	35-44	Masculino	2023-12-03	Ativo	Engenharia de Dados	FL01
DT74330	Roberta Fernandes	16688.34	Cientista de Dados Sênior	54	45-54	Feminino	2012-11-16	Ativo	Ciência de Dados	FL08
DT72694	Fábio Machado	6507.43	Engenheiro Cloud Júnior	43	35-44	Masculino	2013-12-02	Ativo	Infraestrutura e Cloud	FL02
DT70302	Camila Araújo	7035.46	Engenheiro de ML Júnior	31	25-34	Feminino	2018-07-06	Ativo	Machine Learning	FL04
DT90318	Gustavo Andrade	9419.97	Analista de Dados Pleno	33	25-34	Masculino	2016-01-16	Ativo	Análise de Dados	FL01
DT57962	Marcelo Dias	23255.63	Lead de Ciência de Dados	44	35-44	Masculino	2018-05-08	Ativo	Ciência de Dados	FL02
DT69077	Patrícia Fernandes	13906.73	Cientista de Dados Pleno	61	55+	Feminino	2015-02-16	Ativo	Ciência de Dados	FL10
DT40907	Elisa Fernandes	26994.16	Head de Produto	30	25-34	Feminino	2013-04-09	Ativo	Produto	FL07
DT71995	Renato Gomes	10686.08	Engenheiro de Dados Pleno	26	25-34	Masculino	2024-02-23	Ativo	Engenharia de Dados	FL02
DT73782	Elisa Rocha	14029.62	Analista de Dados Sênior	54	45-54	Feminino	2011-01-26	Ativo	Análise de Dados	FL04
DT17869	Ricardo Costa	13644.43	Analista de Dados Sênior	58	55+	Masculino	2012-02-28	Ativo	Análise de Dados	FL03
DT57312	Gustavo Sousa	17392.77	Engenheiro de ML Sênior	44	35-44	Masculino	2012-09-20	Ativo	Machine Learning	FL01
DT85609	Vitor Martins	13907.18	Product Manager Pleno	36	35-44	Masculino	2017-12-19	Ativo	Produto	FL02
DT68580	Daniel Ramos	22488.81	Arquiteto de Dados	47	45-54	Masculino	2024-03-02	Inativo	Engenharia de Dados	FL01
DT93962	Monique Costa	27050.19	Especialista em IA	54	45-54	Feminino	2019-01-29	Inativo	Machine Learning	FL03
DT31233	Matheus Ferreira	11910.67	Engenheiro de ML Pleno	59	55+	Masculino	2016-07-14	Ativo	Machine Learning	FL02
DT45553	Marcelo Nunes	14365.53	Analista de BI Sênior	51	45-54	Masculino	2020-02-06	Ativo	Business Intelligence	FL02
DT26389	Bruno Santos	8817.08	Analista Comercial Pleno	62	55+	Masculino	2011-10-18	Ativo	Vendas e Parcerias	FL01
DT22524	Henrique Alves	22064.82	Arquiteto de Dados	19	18-24	Masculino	2018-11-27	Ativo	Engenharia de Dados	FL02
DT44400	Juliana Alves	6252.93	Analista de RH Pleno	42	35-44	Feminino	2016-12-09	Ativo	Recursos Humanos	FL08
DT68085	Elisa Vieira	6393.83	Analista de RH Pleno	28	25-34	Feminino	2010-08-23	Ativo	Recursos Humanos	FL04
DT72410	Vanessa Rocha	13468.45	Analista de BI Sênior	26	25-34	Feminino	2022-02-04	Ativo	Business Intelligence	FL04
DT92712	Marcelo Freitas	20187.68	Diretor Comercial	58	55+	Masculino	2021-12-21	Ativo	Vendas e Parcerias	FL01
DT80735	Leonardo Cardoso	5604.65	Analista de Dados Júnior	41	35-44	Masculino	2019-03-31	Ativo	Análise de Dados	FL02
DT10012	Anderson Silva	9875.54	Engenheiro Cloud Pleno	48	45-54	Masculino	2022-01-01	Ativo	Infraestrutura e Cloud	FL01
DT72530	Cristina Ramos	6414.67	Analista de Dados Júnior	36	35-44	Feminino	2023-05-23	Ativo	Análise de Dados	FL04
DT34716	Lucas Andrade	18368.51	Gerente de BI	28	25-34	Masculino	2024-06-27	Ativo	Business Intelligence	FL01
DT44469	Henrique Almeida	22564.60	Arquiteto de Dados	51	45-54	Masculino	2023-10-03	Ativo	Engenharia de Dados	FL02
DT47313	Vitor Fernandes	10945.16	Analista de RH Sênior	22	18-24	Masculino	2014-02-03	Ativo	Recursos Humanos	FL02
DT90967	Camila Freitas	14152.13	Analista de BI Sênior	49	45-54	Feminino	2014-03-19	Ativo	Business Intelligence	FL06
DT80119	Felipe Souza	12889.33	Engenheiro de Dados Pleno	36	35-44	Masculino	2016-01-15	Ativo	Engenharia de Dados	FL02
DT40514	Carlos Silva	9058.90	Engenheiro de Dados Pleno	31	25-34	Masculino	2017-09-01	Ativo	Engenharia de Dados	FL02
DT58679	Fábio Ramos	4825.62	Analista de BI Júnior	27	25-34	Masculino	2011-04-05	Ativo	Business Intelligence	FL02
DT81197	Henrique Rodrigues	9268.77	Engenheiro Cloud Pleno	34	25-34	Masculino	2018-07-23	Inativo	Infraestrutura e Cloud	FL01
DT60436	Rafael Lopes	17977.30	Diretor Comercial	20	18-24	Masculino	2014-06-20	Ativo	Vendas e Parcerias	FL01
DT78306	Leandro Alves	8654.89	Analista Financeiro Pleno	61	55+	Masculino	2016-12-31	Inativo	Financeiro	FL02
DT82034	Bruno Oliveira	5759.94	Engenheiro Cloud Júnior	58	55+	Masculino	2016-09-13	Ativo	Infraestrutura e Cloud	FL01
DT97385	André Souza	5089.91	Analista de Dados Júnior	45	45-54	Masculino	2017-04-12	Ativo	Análise de Dados	FL02
DT86637	Fábio Fernandes	25629.43	Lead de Ciência de Dados	18	18-24	Masculino	2010-12-11	Ativo	Ciência de Dados	FL01
DT88146	Cláudia Cardoso	18739.38	Cientista de Dados Sênior	33	25-34	Feminino	2013-07-15	Ativo	Ciência de Dados	FL06
DT91937	Daniela Dias	6566.55	Engenheiro de Dados Júnior	27	25-34	Feminino	2022-01-11	Ativo	Engenharia de Dados	FL06
DT40497	Mariana Ramos	19930.39	Engenheiro de ML Sênior	46	45-54	Feminino	2014-04-30	Ativo	Machine Learning	FL09
DT27659	Henrique Nascimento	5713.26	Analista de Dados Júnior	46	45-54	Masculino	2022-07-16	Ativo	Análise de Dados	FL02
DT34874	Ricardo Ramos	11946.29	Product Manager Pleno	38	35-44	Masculino	2020-07-04	Ativo	Produto	FL02
DT19027	Caio Costa	10297.54	Engenheiro Cloud Pleno	34	25-34	Masculino	2022-02-23	Ativo	Infraestrutura e Cloud	FL01
DT59681	Ana Gonçalves	9590.26	Analista Comercial Pleno	57	55+	Feminino	2018-03-02	Ativo	Vendas e Parcerias	FL10
DT18302	Thiago Rocha	14949.35	Gerente de RH	61	55+	Masculino	2021-02-27	Ativo	Recursos Humanos	FL02
DT52283	Felipe Vieira	11497.09	Analista de BI Sênior	51	45-54	Masculino	2024-10-11	Ativo	Business Intelligence	FL01
DT33414	Luana Lima	9428.22	Engenheiro de Dados Pleno	30	25-34	Feminino	2012-03-19	Ativo	Engenharia de Dados	FL08
DT96235	Bruna Moreira	13245.43	Engenheiro Cloud Sênior	32	25-34	Feminino	2023-08-04	Ativo	Infraestrutura e Cloud	FL07
DT95950	Ana Carvalho	6404.18	Engenheiro Cloud Júnior	58	55+	Feminino	2011-05-13	Ativo	Infraestrutura e Cloud	FL04
DT58374	Elisa Marques	6059.11	Analista Financeiro Júnior	35	35-44	Feminino	2021-11-12	Ativo	Financeiro	FL05
DT20215	Juliana Barbosa	4753.06	Analista de Dados Júnior	32	25-34	Feminino	2021-12-04	Ativo	Análise de Dados	FL04
DT96098	Diego Araújo	9454.48	Analista de Dados Pleno	53	45-54	Masculino	2019-04-25	Ativo	Análise de Dados	FL01
DT98407	Sabrina Nascimento	21296.94	Gerente de BI	28	25-34	Feminino	2014-01-17	Ativo	Business Intelligence	FL08
DT96184	Priscila Dias	26567.88	Lead de Ciência de Dados	38	35-44	Feminino	2022-05-04	Inativo	Ciência de Dados	FL04
DT64046	Gustavo Andrade	22609.24	Diretor Comercial	38	35-44	Masculino	2023-08-25	Ativo	Vendas e Parcerias	FL02
DT59160	Lívia Carvalho	12120.04	Gerente de Contas	46	45-54	Feminino	2020-01-14	Inativo	Vendas e Parcerias	FL04
DT47287	Ana Oliveira	7552.83	Product Manager Júnior	37	35-44	Feminino	2010-02-23	Ativo	Produto	FL08
DT51275	Thiago Carvalho	17636.00	Engenheiro de Dados Sênior	50	45-54	Masculino	2022-06-24	Ativo	Engenharia de Dados	FL02
DT22358	Fernando Gomes	20811.76	Arquiteto de Dados	26	25-34	Masculino	2015-12-11	Ativo	Engenharia de Dados	FL01
DT40539	Fernando Lopes	11913.57	Analista de Dados Sênior	43	35-44	Masculino	2022-10-06	Inativo	Análise de Dados	FL01
DT52558	Renato Rodrigues	10453.11	Engenheiro Cloud Pleno	62	55+	Masculino	2022-12-04	Ativo	Infraestrutura e Cloud	FL02
DT14898	Rafael Barbosa	16627.82	Diretor Comercial	21	18-24	Masculino	2017-07-02	Ativo	Vendas e Parcerias	FL01
DT64594	Luana Machado	12864.55	Cientista de Dados Pleno	56	55+	Feminino	2010-04-04	Ativo	Ciência de Dados	FL03
DT17094	Paulo Moreira	7957.95	Engenheiro de ML Júnior	54	45-54	Masculino	2013-05-10	Ativo	Machine Learning	FL01
DT30079	Ricardo Almeida	24811.76	Arquiteto de Dados	56	55+	Masculino	2022-11-26	Ativo	Engenharia de Dados	FL01
DT47982	Amanda Machado	7462.66	Analista de BI Pleno	23	18-24	Feminino	2020-09-03	Ativo	Business Intelligence	FL04
DT44413	Fernanda Nunes	21761.85	Arquiteto de Dados	62	55+	Feminino	2012-12-04	Ativo	Engenharia de Dados	FL09
DT73944	Carla Martins	8964.09	Analista de BI Pleno	51	45-54	Feminino	2015-07-11	Ativo	Business Intelligence	FL03
DT52390	Rodrigo Machado	4281.32	Analista Financeiro Júnior	44	35-44	Masculino	2019-07-02	Ativo	Financeiro	FL02
DT55157	Diego Rocha	8309.04	Product Manager Júnior	28	25-34	Masculino	2017-11-04	Ativo	Produto	FL02
DT91681	Vitória Mendes	20791.70	Lead de Ciência de Dados	32	25-34	Feminino	2014-06-24	Ativo	Ciência de Dados	FL05
DT24728	Felipe Ferreira	4334.71	Analista Comercial Júnior	57	55+	Masculino	2013-04-24	Inativo	Vendas e Parcerias	FL01
DT11800	Caio Vieira	7915.35	Engenheiro de ML Júnior	48	45-54	Masculino	2010-07-06	Ativo	Machine Learning	FL01
DT37770	Renato Monteiro	17518.40	Cientista de Dados Sênior	57	55+	Masculino	2013-03-03	Ativo	Ciência de Dados	FL02
DT59362	Daniela Santos	6766.37	Product Manager Júnior	21	18-24	Feminino	2016-05-15	Ativo	Produto	FL06
DT16957	Ricardo Fernandes	4166.49	Analista de BI Júnior	60	55+	Masculino	2016-02-01	Ativo	Business Intelligence	FL01
DT24141	Marcos Andrade	17403.35	Engenheiro de Dados Sênior	59	55+	Masculino	2018-09-02	Ativo	Engenharia de Dados	FL01
DT23055	Patrícia Gonçalves	28934.18	Especialista em IA	52	45-54	Feminino	2011-12-23	Ativo	Machine Learning	FL04
DT83490	Priscila Freitas	4099.38	Analista Financeiro Júnior	51	45-54	Feminino	2016-11-02	Ativo	Financeiro	FL09
DT12408	Henrique Costa	17454.58	Engenheiro de ML Sênior	37	35-44	Masculino	2015-04-19	Inativo	Machine Learning	FL01
DT18127	Priscila Fernandes	12575.37	Analista de RH Sênior	19	18-24	Feminino	2022-06-13	Inativo	Recursos Humanos	FL06
DT54798	Amanda Gomes	7307.28	Analista de BI Pleno	42	35-44	Feminino	2021-09-05	Inativo	Business Intelligence	FL05
DT64700	Natália Almeida	8992.63	Analista de Dados Pleno	37	35-44	Feminino	2023-07-31	Ativo	Análise de Dados	FL09
DT37100	Lívia Lima	7743.09	Analista de RH Pleno	61	55+	Feminino	2014-07-16	Inativo	Recursos Humanos	FL03
DT27727	Anderson Araújo	9296.81	Analista de BI Pleno	54	45-54	Masculino	2013-07-18	Ativo	Business Intelligence	FL01
DT25517	Alexandre Monteiro	19117.37	Cientista de Dados Sênior	27	25-34	Masculino	2010-08-30	Ativo	Ciência de Dados	FL02
DT63903	André Marques	21473.66	Gerente de Análise de Dados	58	55+	Masculino	2016-02-21	Ativo	Análise de Dados	FL01
DT27241	Diego Alves	8287.34	Cientista de Dados Júnior	57	55+	Masculino	2023-11-03	Ativo	Ciência de Dados	FL01
DT88166	Fernando Almeida	9905.82	Analista de Dados Pleno	40	35-44	Masculino	2011-10-14	Ativo	Análise de Dados	FL01
DT75840	Carla Lima	25984.13	Head de Produto	41	35-44	Feminino	2014-02-16	Inativo	Produto	FL09
DT28024	Carla Cardoso	10518.23	Cientista de Dados Pleno	44	35-44	Feminino	2010-05-03	Inativo	Ciência de Dados	FL06
DT97993	Eduardo Almeida	9797.61	Cientista de Dados Pleno	46	45-54	Masculino	2023-11-03	Ativo	Ciência de Dados	FL01
DT42346	Gustavo Freitas	20657.29	Gerente de BI	56	55+	Masculino	2018-07-14	Ativo	Business Intelligence	FL01
DT78843	Patrícia Monteiro	4541.30	Analista de RH Júnior	46	45-54	Feminino	2020-03-31	Inativo	Recursos Humanos	FL08
DT77987	Gabriel Lopes	25886.81	Arquiteto Cloud	20	18-24	Masculino	2022-07-05	Ativo	Infraestrutura e Cloud	FL01
DT34884	Leandro Souza	19388.24	Gerente de Análise de Dados	37	35-44	Masculino	2016-05-31	Ativo	Análise de Dados	FL01
DT90364	Eduardo Vieira	10854.32	Engenheiro de Dados Pleno	59	55+	Masculino	2020-02-18	Ativo	Engenharia de Dados	FL02
DT33562	Priscila Pereira	7875.73	Analista Comercial Pleno	38	35-44	Feminino	2020-02-11	Ativo	Vendas e Parcerias	FL09
DT69596	Carlos Martins	14958.34	Engenheiro de Dados Sênior	59	55+	Masculino	2013-09-05	Ativo	Engenharia de Dados	FL01
DT24963	Camila Ferreira	19804.43	Gerente Financeiro	23	18-24	Feminino	2021-10-01	Ativo	Financeiro	FL06
DT90225	Renato Gonçalves	24077.25	Lead de Ciência de Dados	20	18-24	Masculino	2013-10-31	Inativo	Ciência de Dados	FL02
DT31249	Fernando Gomes	12961.21	Cientista de Dados Pleno	21	18-24	Masculino	2019-05-31	Ativo	Ciência de Dados	FL03
DT47851	Elisa Mendes	6352.66	Analista de RH Pleno	26	25-34	Feminino	2014-07-20	Ativo	Recursos Humanos	FL05
DT11600	Sabrina Sousa	21132.47	Gerente de BI	52	45-54	Feminino	2010-02-17	Ativo	Business Intelligence	FL04
DT38426	Pedro Lopes	24176.17	Head de Produto	46	45-54	Masculino	2011-10-13	Ativo	Produto	FL01
DT81741	Lucas Lopes	7671.22	Analista de Dados Pleno	27	25-34	Masculino	2011-03-28	Ativo	Análise de Dados	FL02
DT14250	Fernanda Gomes	12324.44	Analista Financeiro Sênior	23	18-24	Feminino	2011-02-06	Ativo	Financeiro	FL07
DT98092	Beatriz Costa	10882.03	Analista de Dados Pleno	55	55+	Feminino	2018-01-29	Inativo	Análise de Dados	FL04
DT52312	Matheus Barbosa	28562.12	Especialista em IA	45	45-54	Masculino	2022-05-07	Ativo	Machine Learning	FL02
DT25993	Carla Lima	12316.83	Analista Financeiro Sênior	44	35-44	Feminino	2021-10-07	Ativo	Financeiro	FL05
DT24326	Larissa Souza	7450.99	Product Manager Júnior	62	55+	Feminino	2023-07-26	Inativo	Produto	FL04
DT65974	Ricardo Vieira	15928.13	Product Manager Sênior	54	45-54	Masculino	2023-12-24	Ativo	Produto	FL03
DT78118	Mariana Ramos	19940.04	Diretor Comercial	29	25-34	Feminino	2023-09-02	Ativo	Vendas e Parcerias	FL04
DT10207	Anderson Martins	7394.66	Cientista de Dados Júnior	25	25-34	Masculino	2014-08-26	Ativo	Ciência de Dados	FL03
DT15962	Eduardo Marques	18582.29	Engenheiro de ML Sênior	58	55+	Masculino	2014-10-06	Ativo	Machine Learning	FL01
DT43347	Diego Vieira	14851.28	Engenheiro de Dados Sênior	53	45-54	Masculino	2017-04-07	Ativo	Engenharia de Dados	FL01
DT54742	Camila Dias	6080.11	Analista de BI Júnior	30	25-34	Feminino	2017-05-31	Inativo	Business Intelligence	FL03
DT72193	Cristina Cardoso	10925.98	Engenheiro de Dados Pleno	58	55+	Feminino	2020-05-01	Inativo	Engenharia de Dados	FL07
DT70616	Alexandre Dias	6087.76	Analista de BI Júnior	37	35-44	Masculino	2022-09-03	Ativo	Business Intelligence	FL01
DT12453	Gustavo Monteiro	18897.44	Cientista de Dados Sênior	40	35-44	Masculino	2011-06-27	Inativo	Ciência de Dados	FL01
DT54453	Letícia Santos	13069.42	Engenheiro de ML Pleno	42	35-44	Feminino	2014-03-16	Ativo	Machine Learning	FL09
DT51222	Julio Barbosa	4678.74	Analista Financeiro Júnior	23	18-24	Masculino	2021-02-23	Inativo	Financeiro	FL02
DT49666	Leonardo Mendes	12287.56	Analista de Dados Sênior	41	35-44	Masculino	2010-11-03	Ativo	Análise de Dados	FL02
DT68166	Marcos Ferreira	7397.08	Engenheiro Cloud Júnior	50	45-54	Masculino	2013-06-16	Ativo	Infraestrutura e Cloud	FL01
DT78632	Cristina Cardoso	16288.12	Engenheiro de ML Sênior	24	18-24	Feminino	2021-07-30	Ativo	Machine Learning	FL07
DT14791	Mariana Carvalho	20282.06	Gerente de BI	51	45-54	Feminino	2012-08-06	Ativo	Business Intelligence	FL07
DT87894	Marcos Oliveira	15600.94	Engenheiro de Dados Sênior	20	18-24	Masculino	2012-04-24	Ativo	Engenharia de Dados	FL01
DT12946	Daniela Barbosa	18013.68	Product Manager Sênior	31	25-34	Feminino	2017-03-13	Ativo	Produto	FL04
DT79766	Anderson Fernandes	27368.99	Especialista em IA	35	35-44	Masculino	2013-05-08	Ativo	Machine Learning	FL01
DT91650	Rafael Silva	6619.73	Product Manager Júnior	40	35-44	Masculino	2022-04-28	Ativo	Produto	FL01
DT85246	Mariana Vieira	7749.35	Analista de Dados Pleno	57	55+	Feminino	2017-08-06	Ativo	Análise de Dados	FL07
DT13800	Gabriel Lima	5317.78	Engenheiro Cloud Júnior	21	18-24	Masculino	2011-12-07	Ativo	Infraestrutura e Cloud	FL03
DT90781	Beatriz Mendes	17327.83	Engenheiro de ML Sênior	30	25-34	Feminino	2025-01-17	Ativo	Machine Learning	FL03
DT84421	Juliana Freitas	8438.55	Cientista de Dados Júnior	62	55+	Feminino	2020-07-03	Ativo	Ciência de Dados	FL06
DT71675	Gabriela Freitas	8003.03	Analista de Dados Pleno	57	55+	Feminino	2015-10-15	Inativo	Análise de Dados	FL09
DT97186	Henrique Ribeiro	17993.06	Engenheiro de ML Sênior	19	18-24	Masculino	2011-06-20	Ativo	Machine Learning	FL01
DT70455	Leonardo Cardoso	18723.68	Cientista de Dados Sênior	56	55+	Masculino	2022-11-21	Ativo	Ciência de Dados	FL01
DT24022	Camila Nunes	9377.29	Engenheiro de ML Júnior	52	45-54	Feminino	2020-05-04	Ativo	Machine Learning	FL03
DT91379	Aline Lopes	10908.62	Analista de Dados Pleno	42	35-44	Feminino	2011-06-26	Ativo	Análise de Dados	FL03
DT67062	Luana Machado	17494.90	Product Manager Sênior	33	25-34	Feminino	2013-11-18	Ativo	Produto	FL07
DT24984	Juliana Ramos	23277.65	Head de Produto	24	18-24	Feminino	2019-12-27	Ativo	Produto	FL03
DT88415	Henrique Rodrigues	20628.15	Arquiteto de Dados	59	55+	Masculino	2024-10-22	Ativo	Engenharia de Dados	FL01
DT86122	Diego Lima	5465.57	Analista Comercial Júnior	60	55+	Masculino	2013-05-07	Ativo	Vendas e Parcerias	FL02
DT90684	Anderson Moreira	22369.67	Head de Produto	61	55+	Masculino	2017-02-06	Ativo	Produto	FL01
DT66980	Vitória Barbosa	14961.16	Analista Financeiro Sênior	55	55+	Feminino	2010-03-08	Ativo	Financeiro	FL05
DT26718	Priscila Nunes	5423.06	Analista de Dados Júnior	53	45-54	Feminino	2011-03-12	Ativo	Análise de Dados	FL03
DT24378	Lívia Nascimento	5088.10	Analista de Dados Júnior	62	55+	Feminino	2023-03-28	Ativo	Análise de Dados	FL05
DT63219	Gustavo Moreira	26360.95	Especialista em IA	60	55+	Masculino	2013-11-21	Ativo	Machine Learning	FL01
DT57223	Diego Moreira	8009.65	Analista de BI Pleno	60	55+	Masculino	2012-10-25	Ativo	Business Intelligence	FL01
DT28873	Matheus Santos	19947.56	Gerente Financeiro	26	25-34	Masculino	2011-11-25	Ativo	Financeiro	FL03
DT69772	Vitória Marques	19739.49	Gerente Financeiro	47	45-54	Feminino	2021-06-05	Ativo	Financeiro	FL07
DT60425	Luana Mendes	11336.06	Engenheiro de ML Pleno	56	55+	Feminino	2010-03-02	Ativo	Machine Learning	FL06
DT75762	Monique Lopes	22559.39	Gerente de Análise de Dados	54	45-54	Feminino	2018-03-26	Ativo	Análise de Dados	FL05
DT58310	Gabriel Cardoso	26751.30	Lead de Ciência de Dados	23	18-24	Masculino	2013-03-09	Ativo	Ciência de Dados	FL03
DT70940	Daniel Fernandes	6570.07	Engenheiro Cloud Júnior	57	55+	Masculino	2011-12-26	Ativo	Infraestrutura e Cloud	FL02
DT99662	Bruna Rodrigues	11645.64	Analista de RH Sênior	39	35-44	Feminino	2021-12-31	Ativo	Recursos Humanos	FL06
DT77195	Carla Freitas	15105.08	Engenheiro Cloud Sênior	36	35-44	Feminino	2016-06-27	Ativo	Infraestrutura e Cloud	FL04
DT83886	Ricardo Barbosa	6073.25	Analista de Dados Júnior	55	55+	Masculino	2013-10-17	Ativo	Análise de Dados	FL01
DT91830	Vitor Vieira	15681.42	Engenheiro de Dados Sênior	26	25-34	Masculino	2021-05-04	Ativo	Engenharia de Dados	FL02
DT43036	Vitória Fernandes	16013.69	Cientista de Dados Sênior	34	25-34	Feminino	2010-04-27	Ativo	Ciência de Dados	FL04
DT87564	Marcelo Ribeiro	8807.04	Analista Comercial Pleno	41	35-44	Masculino	2013-12-07	Ativo	Vendas e Parcerias	FL03
DT73559	Cláudia Lopes	7028.54	Cientista de Dados Júnior	23	18-24	Feminino	2013-04-03	Ativo	Ciência de Dados	FL03
DT75004	Luana Gomes	22162.94	Diretor Comercial	33	25-34	Feminino	2024-10-26	Ativo	Vendas e Parcerias	FL06
DT37637	Paulo Costa	14798.79	Product Manager Sênior	34	25-34	Masculino	2012-08-08	Ativo	Produto	FL01
DT72420	Carlos Nunes	21476.90	Gerente de Análise de Dados	52	45-54	Masculino	2015-03-30	Ativo	Análise de Dados	FL02
DT72205	Cláudia Moreira	9356.55	Analista de Dados Pleno	45	45-54	Feminino	2010-04-08	Ativo	Análise de Dados	FL05
DT60070	Fábio Mendes	14847.05	Analista Financeiro Sênior	61	55+	Masculino	2010-12-03	Ativo	Financeiro	FL01
DT66595	Alexandre Nascimento	10672.39	Analista de RH Sênior	35	35-44	Masculino	2012-03-16	Ativo	Recursos Humanos	FL02
DT70438	Isabela Nunes	9070.10	Analista Comercial Pleno	55	55+	Feminino	2014-05-16	Ativo	Vendas e Parcerias	FL03
DT51060	Daniela Ribeiro	8018.41	Product Manager Júnior	22	18-24	Feminino	2010-04-08	Ativo	Produto	FL07
DT99849	Daniel Alves	11987.37	Analista de BI Sênior	36	35-44	Masculino	2015-08-26	Ativo	Business Intelligence	FL01
DT17455	Lucas Ferreira	13777.20	Product Manager Pleno	58	55+	Masculino	2012-09-24	Ativo	Produto	FL02
DT89257	Camila Ferreira	24766.57	Lead de Ciência de Dados	59	55+	Feminino	2022-09-12	Ativo	Ciência de Dados	FL10
DT34151	Bruno Pereira	13601.30	Analista de Dados Sênior	22	18-24	Masculino	2024-04-29	Ativo	Análise de Dados	FL02
DT97500	Rodrigo Machado	11658.01	Gerente de Contas	22	18-24	Masculino	2016-03-21	Ativo	Vendas e Parcerias	FL01
DT53601	Patrícia Moreira	17800.23	Engenheiro de Dados Sênior	34	25-34	Feminino	2013-12-28	Ativo	Engenharia de Dados	FL07
DT89993	Pedro Martins	9259.19	Analista de BI Pleno	24	18-24	Masculino	2013-03-24	Ativo	Business Intelligence	FL01
DT94323	Aline Carvalho	23150.10	Arquiteto de Dados	24	18-24	Feminino	2010-10-13	Ativo	Engenharia de Dados	FL05
DT68442	Isabela Sousa	19467.55	Arquiteto de Dados	58	55+	Feminino	2010-01-08	Inativo	Engenharia de Dados	FL07
DT44922	Vitor Moreira	19475.40	Cientista de Dados Sênior	54	45-54	Masculino	2010-01-31	Ativo	Ciência de Dados	FL01
DT72670	Leandro Ramos	21064.29	Gerente de BI	22	18-24	Masculino	2022-02-11	Ativo	Business Intelligence	FL02
DT25886	Patrícia Cardoso	16333.92	Product Manager Sênior	37	35-44	Feminino	2018-12-26	Ativo	Produto	FL05
DT57887	Bruna Ferreira	13402.28	Engenheiro Cloud Sênior	47	45-54	Feminino	2016-07-03	Ativo	Infraestrutura e Cloud	FL05
DT60353	Bruno Oliveira	6896.61	Analista de RH Pleno	42	35-44	Masculino	2012-05-24	Ativo	Recursos Humanos	FL01
DT21123	Leonardo Ramos	17676.62	Gerente de RH	26	25-34	Masculino	2010-10-20	Ativo	Recursos Humanos	FL01
DT74124	Elisa Lopes	9378.22	Engenheiro de ML Júnior	59	55+	Feminino	2016-11-25	Ativo	Machine Learning	FL10
DT12151	Caio Mendes	13752.25	Engenheiro de Dados Sênior	20	18-24	Masculino	2019-02-04	Ativo	Engenharia de Dados	FL01
DT70079	Fábio Araújo	9593.68	Analista Financeiro Pleno	32	25-34	Masculino	2011-08-14	Ativo	Financeiro	FL03
DT95699	Mariana Ramos	24396.66	Arquiteto de Dados	57	55+	Feminino	2011-01-11	Ativo	Engenharia de Dados	FL04
DT11882	Paulo Lima	8713.99	Cientista de Dados Júnior	24	18-24	Masculino	2020-03-26	Ativo	Ciência de Dados	FL01
DT23937	Luana Rodrigues	24367.35	Lead de Ciência de Dados	57	55+	Feminino	2014-12-12	Ativo	Ciência de Dados	FL10
DT54216	Larissa Machado	18593.88	Diretor Comercial	61	55+	Feminino	2022-12-02	Ativo	Vendas e Parcerias	FL03
DT15975	Gustavo Carvalho	11009.77	Product Manager Pleno	25	25-34	Masculino	2016-02-22	Ativo	Produto	FL02
DT58487	Eduardo Costa	11473.98	Product Manager Pleno	55	55+	Masculino	2010-11-30	Ativo	Produto	FL01
DT30677	Fábio Moreira	19024.70	Arquiteto de Dados	18	18-24	Masculino	2014-01-09	Inativo	Engenharia de Dados	FL01
DT64555	Cláudia Vieira	20154.15	Gerente Financeiro	31	25-34	Feminino	2013-03-18	Ativo	Financeiro	FL08
DT64005	Priscila Mendes	9636.88	Analista de Dados Pleno	20	18-24	Feminino	2023-05-17	Ativo	Análise de Dados	FL05
DT92207	Pedro Ferreira	13384.54	Analista de Dados Sênior	53	45-54	Masculino	2015-04-15	Ativo	Análise de Dados	FL01
DT91123	Priscila Alves	12588.97	Engenheiro de ML Pleno	58	55+	Feminino	2024-10-15	Ativo	Machine Learning	FL06
DT24769	Gabriel Martins	23733.85	Lead de Ciência de Dados	28	25-34	Masculino	2025-01-11	Ativo	Ciência de Dados	FL01
DT47363	Fernanda Andrade	22133.98	Lead de Ciência de Dados	57	55+	Feminino	2020-03-01	Ativo	Ciência de Dados	FL09
DT80432	Elisa Souza	13034.71	Cientista de Dados Pleno	49	45-54	Feminino	2021-07-20	Ativo	Ciência de Dados	FL06
DT68303	Roberta Lopes	16804.86	Product Manager Sênior	61	55+	Feminino	2017-04-22	Ativo	Produto	FL04
DT39855	Camila Rocha	11950.99	Engenheiro de Dados Pleno	30	25-34	Feminino	2018-06-04	Inativo	Engenharia de Dados	FL08
DT86689	Matheus Cardoso	7671.47	Engenheiro Cloud Júnior	27	25-34	Masculino	2014-11-06	Inativo	Infraestrutura e Cloud	FL01
DT60768	Carlos Ribeiro	12559.83	Engenheiro de ML Pleno	30	25-34	Masculino	2024-03-05	Ativo	Machine Learning	FL01
DT54025	Rodrigo Martins	8076.63	Cientista de Dados Júnior	21	18-24	Masculino	2016-04-17	Ativo	Ciência de Dados	FL02
DT70106	Julio Freitas	9661.19	Analista de BI Pleno	32	25-34	Masculino	2016-08-14	Ativo	Business Intelligence	FL02
DT85775	Fábio Costa	9889.13	Product Manager Pleno	51	45-54	Masculino	2020-12-21	Inativo	Produto	FL01
DT70655	Diego Cardoso	6325.04	Analista de Dados Júnior	33	25-34	Masculino	2015-07-24	Ativo	Análise de Dados	FL01
DT29525	Isabela Almeida	7253.32	Product Manager Júnior	20	18-24	Feminino	2010-11-25	Inativo	Produto	FL04
DT14406	Elisa Gonçalves	18875.62	Gerente de BI	62	55+	Feminino	2012-03-13	Ativo	Business Intelligence	FL04
DT83202	Amanda Ferreira	5324.95	Analista Comercial Júnior	44	35-44	Feminino	2014-11-21	Ativo	Vendas e Parcerias	FL04
DT94887	Anderson Lopes	6939.35	Engenheiro de Dados Júnior	37	35-44	Masculino	2013-08-18	Ativo	Engenharia de Dados	FL01
DT69616	Julio Santos	10059.70	Analista de BI Pleno	43	35-44	Masculino	2014-02-24	Ativo	Business Intelligence	FL02
DT93021	Leonardo Freitas	6654.64	Engenheiro de Dados Júnior	62	55+	Masculino	2017-06-20	Ativo	Engenharia de Dados	FL02
DT45361	Gabriela Machado	9756.92	Analista Financeiro Pleno	23	18-24	Feminino	2023-12-01	Inativo	Financeiro	FL05
DT77467	Renato Souza	14551.91	Analista Financeiro Sênior	25	25-34	Masculino	2018-08-04	Ativo	Financeiro	FL02
DT57916	Marcelo Oliveira	13416.78	Engenheiro de ML Pleno	22	18-24	Masculino	2022-07-30	Ativo	Machine Learning	FL02
DT53899	Larissa Lima	6122.60	Analista de Dados Júnior	55	55+	Feminino	2014-09-15	Ativo	Análise de Dados	FL04
DT52003	Sabrina Almeida	18269.61	Engenheiro de ML Sênior	45	45-54	Feminino	2016-03-20	Ativo	Machine Learning	FL09
DT69298	Leonardo Nascimento	6410.49	Engenheiro Cloud Júnior	52	45-54	Masculino	2025-03-19	Ativo	Infraestrutura e Cloud	FL01
DT69241	André Vieira	12299.66	Analista de RH Sênior	62	55+	Masculino	2011-06-22	Ativo	Recursos Humanos	FL01
DT21443	André Freitas	24336.65	Arquiteto de Dados	36	35-44	Masculino	2011-09-23	Ativo	Engenharia de Dados	FL02
DT29392	Letícia Pereira	11999.97	Engenheiro Cloud Pleno	51	45-54	Feminino	2024-01-26	Ativo	Infraestrutura e Cloud	FL04
DT27305	Eduardo Monteiro	15100.65	Engenheiro Cloud Sênior	59	55+	Masculino	2010-06-25	Ativo	Infraestrutura e Cloud	FL01
DT40451	Matheus Santos	15058.46	Engenheiro Cloud Sênior	39	35-44	Masculino	2024-09-15	Ativo	Infraestrutura e Cloud	FL02
DT87772	Tatiana Ramos	18748.04	Gerente Financeiro	54	45-54	Feminino	2012-12-16	Inativo	Financeiro	FL03
DT44079	Gabriela Costa	19231.41	Gerente de Análise de Dados	36	35-44	Feminino	2011-01-23	Ativo	Análise de Dados	FL03
DT31805	Anderson Freitas	8135.44	Analista de RH Pleno	36	35-44	Masculino	2014-02-02	Inativo	Recursos Humanos	FL01
DT31135	Luana Gomes	4602.88	Analista de Dados Júnior	38	35-44	Feminino	2022-11-20	Ativo	Análise de Dados	FL05
DT34182	Rodrigo Andrade	7996.66	Cientista de Dados Júnior	40	35-44	Masculino	2013-04-26	Ativo	Ciência de Dados	FL01
DT79945	Lívia Costa	6801.08	Analista de Dados Júnior	43	35-44	Feminino	2021-03-15	Ativo	Análise de Dados	FL05
DT30454	Renata Rocha	16412.60	Engenheiro de Dados Sênior	36	35-44	Feminino	2020-08-18	Inativo	Engenharia de Dados	FL04
DT84086	Leandro Gomes	18709.48	Diretor Comercial	25	25-34	Masculino	2020-09-28	Inativo	Vendas e Parcerias	FL01
DT50380	Felipe Pereira	22513.89	Arquiteto de Dados	32	25-34	Masculino	2020-01-02	Ativo	Engenharia de Dados	FL01
DT89711	Gustavo Souza	7750.29	Analista de RH Pleno	32	25-34	Masculino	2016-03-26	Ativo	Recursos Humanos	FL03
DT68387	Juliana Monteiro	6439.60	Analista Financeiro Júnior	43	35-44	Feminino	2014-05-12	Ativo	Financeiro	FL05
DT17346	Marcelo Gonçalves	12590.23	Analista Financeiro Sênior	45	45-54	Masculino	2018-04-17	Ativo	Financeiro	FL02
DT55209	Ana Vieira	20876.38	Engenheiro de ML Sênior	53	45-54	Feminino	2011-12-19	Ativo	Machine Learning	FL07
DT64474	André Mendes	11737.06	Analista de BI Sênior	45	45-54	Masculino	2019-04-17	Ativo	Business Intelligence	FL01
DT28827	Isabela Ferreira	17110.37	Cientista de Dados Sênior	51	45-54	Feminino	2017-07-10	Ativo	Ciência de Dados	FL07
DT21593	Fernando Moreira	22652.24	Arquiteto de Dados	35	35-44	Masculino	2019-04-19	Ativo	Engenharia de Dados	FL01
DT36117	Renata Lima	22381.51	Lead de Ciência de Dados	49	45-54	Feminino	2010-12-12	Inativo	Ciência de Dados	FL04
DT74762	Gabriela Barbosa	22571.64	Head de Produto	18	18-24	Feminino	2013-06-15	Ativo	Produto	FL05
DT26276	Paulo Cardoso	10960.05	Analista de RH Sênior	49	45-54	Masculino	2024-06-18	Ativo	Recursos Humanos	FL01
DT74625	Rafael Fernandes	16114.80	Engenheiro de Dados Sênior	54	45-54	Masculino	2019-10-13	Inativo	Engenharia de Dados	FL01
DT25674	Bruna Cardoso	9535.84	Engenheiro de ML Júnior	28	25-34	Feminino	2023-01-17	Ativo	Machine Learning	FL09
DT27759	Tatiana Freitas	10738.00	Engenheiro de ML Pleno	41	35-44	Feminino	2019-05-30	Ativo	Machine Learning	FL05
DT47992	Leonardo Souza	5784.67	Analista de Dados Júnior	58	55+	Masculino	2014-02-10	Ativo	Análise de Dados	FL01
DT81265	Natália Costa	20047.52	Engenheiro de ML Sênior	61	55+	Feminino	2016-10-02	Ativo	Machine Learning	FL03
DT22561	Cláudia Andrade	17116.57	Engenheiro Cloud Sênior	18	18-24	Feminino	2013-01-26	Ativo	Infraestrutura e Cloud	FL03
DT64000	Leonardo Ramos	10960.88	Engenheiro de ML Pleno	27	25-34	Masculino	2021-04-16	Ativo	Machine Learning	FL01
DT79742	Diego Araújo	5043.37	Analista Financeiro Júnior	22	18-24	Masculino	2012-08-12	Ativo	Financeiro	FL02
DT72851	Cristina Santos	19300.78	Engenheiro de ML Sênior	26	25-34	Feminino	2019-11-30	Inativo	Machine Learning	FL06
DT54832	Marcelo Araújo	14658.18	Cientista de Dados Sênior	25	25-34	Masculino	2014-12-27	Ativo	Ciência de Dados	FL01
DT39697	Ricardo Gomes	11444.28	Engenheiro de ML Pleno	23	18-24	Masculino	2019-07-13	Ativo	Machine Learning	FL01
DT20188	Fábio Pereira	23422.67	Arquiteto de Dados	20	18-24	Masculino	2014-05-28	Ativo	Engenharia de Dados	FL01
DT87748	Fábio Gonçalves	19272.99	Arquiteto de Dados	34	25-34	Masculino	2010-12-21	Ativo	Engenharia de Dados	FL02
DT22648	Vitor Silva	12144.21	Cientista de Dados Pleno	30	25-34	Masculino	2014-02-22	Ativo	Ciência de Dados	FL03
DT29078	Lucas Ferreira	14769.56	Gerente de Contas	40	35-44	Masculino	2017-11-25	Ativo	Vendas e Parcerias	FL02
DT76179	Priscila Lopes	6297.32	Product Manager Júnior	55	55+	Feminino	2010-04-25	Ativo	Produto	FL06
DT46943	Cláudia Martins	8920.74	Cientista de Dados Júnior	24	18-24	Feminino	2014-10-20	Inativo	Ciência de Dados	FL09
DT58033	Monique Cardoso	8538.83	Analista Financeiro Pleno	24	18-24	Feminino	2014-01-21	Inativo	Financeiro	FL04
DT38085	Patrícia Machado	10130.31	Engenheiro Cloud Pleno	38	35-44	Feminino	2012-10-09	Ativo	Infraestrutura e Cloud	FL06
DT74987	Daniel Lima	13671.29	Gerente de Contas	53	45-54	Masculino	2010-11-29	Ativo	Vendas e Parcerias	FL02
DT60434	Carla Pereira	20602.34	Gerente de Análise de Dados	37	35-44	Feminino	2019-12-16	Ativo	Análise de Dados	FL05
DT66093	Eduardo Vieira	8684.26	Cientista de Dados Júnior	48	45-54	Masculino	2025-03-26	Ativo	Ciência de Dados	FL01
DT23785	Ana Ramos	19135.97	Gerente de BI	61	55+	Feminino	2011-11-28	Ativo	Business Intelligence	FL04
DT87405	Patrícia Nunes	9258.84	Engenheiro de Dados Pleno	30	25-34	Feminino	2017-08-06	Ativo	Engenharia de Dados	FL08
DT26090	Monique Nunes	21351.20	Gerente de Análise de Dados	35	35-44	Feminino	2023-01-20	Ativo	Análise de Dados	FL05
DT56674	Sabrina Nunes	25912.66	Arquiteto Cloud	50	45-54	Feminino	2016-04-03	Ativo	Infraestrutura e Cloud	FL07
DT26015	Carlos Alves	19983.64	Gerente de Análise de Dados	58	55+	Masculino	2013-01-07	Ativo	Análise de Dados	FL02
DT18942	Elisa Souza	7916.22	Engenheiro Cloud Júnior	42	35-44	Feminino	2023-07-24	Ativo	Infraestrutura e Cloud	FL04
DT91522	Felipe Barbosa	5020.34	Analista de RH Júnior	60	55+	Masculino	2021-08-30	Ativo	Recursos Humanos	FL03
DT36467	Vitória Freitas	19941.50	Gerente de Análise de Dados	34	25-34	Feminino	2022-03-02	Ativo	Análise de Dados	FL07
DT81646	Julio Monteiro	8472.13	Engenheiro de Dados Júnior	25	25-34	Masculino	2018-08-09	Ativo	Engenharia de Dados	FL01
DT68006	Monique Moreira	4082.15	Analista de BI Júnior	53	45-54	Feminino	2024-10-15	Ativo	Business Intelligence	FL03
DT74419	Anderson Costa	8093.61	Analista de BI Pleno	42	35-44	Masculino	2020-12-07	Ativo	Business Intelligence	FL02
DT96517	Isabela Ramos	24331.38	Head de Produto	28	25-34	Feminino	2021-05-13	Ativo	Produto	FL04
DT87469	Rodrigo Ramos	19715.59	Engenheiro de ML Sênior	36	35-44	Masculino	2017-03-10	Ativo	Machine Learning	FL01
DT26803	Fernando Oliveira	19952.54	Engenheiro de ML Sênior	55	55+	Masculino	2010-08-09	Ativo	Machine Learning	FL01
DT59882	Paulo Dias	20743.43	Arquiteto de Dados	40	35-44	Masculino	2019-03-29	Ativo	Engenharia de Dados	FL03
DT42455	Vitor Lopes	14166.39	Analista de Dados Sênior	62	55+	Masculino	2011-06-21	Inativo	Análise de Dados	FL01
DT32253	Rafael Dias	13668.20	Engenheiro de Dados Sênior	60	55+	Masculino	2019-06-23	Ativo	Engenharia de Dados	FL02
DT44946	Roberta Marques	22321.93	Arquiteto de Dados	38	35-44	Feminino	2018-06-22	Ativo	Engenharia de Dados	FL05
DT74010	Gustavo Alves	10343.87	Engenheiro de Dados Pleno	50	45-54	Masculino	2024-12-20	Ativo	Engenharia de Dados	FL01
DT57622	Natália Barbosa	8739.33	Analista de BI Pleno	22	18-24	Feminino	2022-01-07	Ativo	Business Intelligence	FL08
DT48970	Letícia Souza	26632.22	Head de Produto	57	55+	Feminino	2012-01-24	Ativo	Produto	FL07
DT87576	Fernando Alves	15869.98	Engenheiro de ML Sênior	51	45-54	Masculino	2020-08-29	Ativo	Machine Learning	FL01
DT95398	Leonardo Rodrigues	13448.10	Analista de Dados Sênior	52	45-54	Masculino	2017-01-10	Ativo	Análise de Dados	FL01
DT91915	Henrique Sousa	23700.92	Arquiteto Cloud	53	45-54	Masculino	2014-01-19	Inativo	Infraestrutura e Cloud	FL01
DT34450	Paulo Araújo	22490.67	Head de Produto	47	45-54	Masculino	2016-01-04	Inativo	Produto	FL02
DT84202	Alexandre Machado	4948.99	Analista Comercial Júnior	41	35-44	Masculino	2020-05-16	Ativo	Vendas e Parcerias	FL02
DT67067	Mariana Barbosa	14870.84	Analista de BI Sênior	22	18-24	Feminino	2024-03-21	Ativo	Business Intelligence	FL06
DT47623	Eduardo Fernandes	6769.34	Analista de RH Pleno	56	55+	Masculino	2015-04-19	Ativo	Recursos Humanos	FL01
DT35154	Rafael Gomes	12188.18	Engenheiro de Dados Pleno	37	35-44	Masculino	2020-05-30	Ativo	Engenharia de Dados	FL03
DT94793	Eduardo Machado	9637.43	Engenheiro de Dados Pleno	26	25-34	Masculino	2010-08-27	Ativo	Engenharia de Dados	FL02
DT96333	Vitória Fernandes	12399.32	Product Manager Pleno	20	18-24	Feminino	2020-11-24	Ativo	Produto	FL04
DT51144	Gabriel Ferreira	19269.44	Product Manager Sênior	44	35-44	Masculino	2018-02-25	Ativo	Produto	FL01
DT62021	André Ferreira	7826.14	Analista Financeiro Pleno	54	45-54	Masculino	2021-03-22	Inativo	Financeiro	FL03
DT43004	Daniel Araújo	5714.23	Engenheiro Cloud Júnior	25	25-34	Masculino	2017-01-11	Ativo	Infraestrutura e Cloud	FL03
DT40924	Fernando Moreira	7504.97	Analista de BI Pleno	29	25-34	Masculino	2014-10-20	Inativo	Business Intelligence	FL01
DT43332	Renata Marques	7471.08	Product Manager Júnior	41	35-44	Feminino	2012-07-14	Ativo	Produto	FL06
DT99487	Eduardo Cardoso	15457.45	Analista de Dados Sênior	27	25-34	Masculino	2018-02-21	Ativo	Análise de Dados	FL02
DT12762	Vanessa Barbosa	5182.95	Analista de RH Júnior	60	55+	Feminino	2011-03-24	Ativo	Recursos Humanos	FL06
DT43158	Vitória Lopes	23164.88	Head de Produto	62	55+	Feminino	2018-02-20	Inativo	Produto	FL09
DT80111	Daniela Pereira	19330.83	Gerente de Análise de Dados	43	35-44	Feminino	2015-09-25	Ativo	Análise de Dados	FL07
DT48983	Cristina Lopes	13621.51	Cientista de Dados Pleno	58	55+	Feminino	2017-02-11	Inativo	Ciência de Dados	FL06
DT14440	Sabrina Marques	6557.99	Analista de Dados Júnior	49	45-54	Feminino	2020-07-26	Ativo	Análise de Dados	FL10
DT65360	Marcos Dias	11793.93	Engenheiro de Dados Pleno	50	45-54	Masculino	2011-06-28	Ativo	Engenharia de Dados	FL02
DT69409	Natália Rocha	5904.94	Analista Financeiro Júnior	59	55+	Feminino	2024-05-22	Ativo	Financeiro	FL04
DT10403	Carlos Lima	9199.04	Analista de BI Pleno	38	35-44	Masculino	2022-12-01	Ativo	Business Intelligence	FL01
DT95089	Bruno Lopes	9464.36	Analista Comercial Pleno	61	55+	Masculino	2019-03-16	Ativo	Vendas e Parcerias	FL03
DT72700	Gustavo Mendes	7412.38	Analista Comercial Pleno	61	55+	Masculino	2023-04-21	Inativo	Vendas e Parcerias	FL01
DT36039	Vitória Vieira	20889.40	Arquiteto de Dados	43	35-44	Feminino	2018-06-19	Inativo	Engenharia de Dados	FL05
DT12717	André Almeida	12627.38	Engenheiro de Dados Pleno	47	45-54	Masculino	2014-06-13	Ativo	Engenharia de Dados	FL03
DT16525	Monique Costa	19602.36	Gerente de BI	27	25-34	Feminino	2011-12-31	Inativo	Business Intelligence	FL08
DT11850	Beatriz Pereira	20640.16	Gerente Financeiro	47	45-54	Feminino	2025-02-09	Ativo	Financeiro	FL05
DT34975	Amanda Carvalho	14858.99	Analista de Dados Sênior	42	35-44	Feminino	2012-12-02	Ativo	Análise de Dados	FL05
DT47089	Diego Carvalho	7964.16	Analista Comercial Pleno	44	35-44	Masculino	2013-04-10	Ativo	Vendas e Parcerias	FL01
DT90960	Letícia Lopes	8293.73	Analista de BI Pleno	61	55+	Feminino	2024-07-08	Ativo	Business Intelligence	FL08
DT27459	Lucas Cardoso	27494.82	Especialista em IA	42	35-44	Masculino	2019-06-30	Ativo	Machine Learning	FL01
DT22488	Rodrigo Rodrigues	6156.34	Product Manager Júnior	33	25-34	Masculino	2020-07-24	Inativo	Produto	FL02
DT10702	Natália Oliveira	18815.04	Gerente de Análise de Dados	43	35-44	Feminino	2025-01-20	Ativo	Análise de Dados	FL08
DT86085	Roberta Oliveira	15434.27	Cientista de Dados Sênior	49	45-54	Feminino	2017-08-10	Inativo	Ciência de Dados	FL10
DT51591	Mariana Ferreira	16850.77	Gerente Financeiro	25	25-34	Feminino	2017-01-10	Ativo	Financeiro	FL09
DT46831	Mariana Ramos	14668.07	Gerente de Contas	36	35-44	Feminino	2015-11-27	Ativo	Vendas e Parcerias	FL04
DT77760	Sabrina Sousa	29141.37	Especialista em IA	38	35-44	Feminino	2021-01-07	Ativo	Machine Learning	FL05
DT16975	Mariana Mendes	9745.55	Cientista de Dados Pleno	29	25-34	Feminino	2010-10-21	Ativo	Ciência de Dados	FL07
DT67203	Beatriz Freitas	20765.15	Lead de Ciência de Dados	40	35-44	Feminino	2022-07-31	Ativo	Ciência de Dados	FL05
DT29405	Carla Pereira	15014.68	Cientista de Dados Sênior	36	35-44	Feminino	2014-01-19	Inativo	Ciência de Dados	FL08
DT45755	Elisa Gonçalves	12125.96	Product Manager Pleno	18	18-24	Feminino	2021-10-19	Ativo	Produto	FL04
DT20070	Bruno Marques	21061.45	Gerente de Análise de Dados	39	35-44	Masculino	2010-08-01	Ativo	Análise de Dados	FL01
DT61664	Daniela Pereira	9510.93	Engenheiro de ML Júnior	27	25-34	Feminino	2010-08-25	Ativo	Machine Learning	FL05
DT69513	Luana Cardoso	11579.71	Analista de RH Sênior	18	18-24	Feminino	2017-05-22	Inativo	Recursos Humanos	FL06
DT52587	Paulo Mendes	7239.78	Analista Comercial Pleno	21	18-24	Masculino	2024-06-08	Ativo	Vendas e Parcerias	FL01
DT19269	Vitória Souza	21647.86	Head de Produto	34	25-34	Feminino	2013-12-29	Ativo	Produto	FL03
DT21690	Leandro Nunes	9651.76	Engenheiro de Dados Pleno	43	35-44	Masculino	2016-05-23	Ativo	Engenharia de Dados	FL01
DT25807	Paulo Gomes	21806.60	Gerente de Análise de Dados	37	35-44	Masculino	2023-07-15	Ativo	Análise de Dados	FL03
DT58163	Vitor Alves	10458.49	Engenheiro Cloud Pleno	42	35-44	Masculino	2020-09-07	Ativo	Infraestrutura e Cloud	FL02
DT21825	Natália Machado	22487.95	Diretor Comercial	57	55+	Feminino	2014-03-07	Ativo	Vendas e Parcerias	FL09
DT15300	Eduardo Ferreira	17866.36	Engenheiro Cloud Sênior	61	55+	Masculino	2015-01-11	Ativo	Infraestrutura e Cloud	FL02
DT74922	Ricardo Gomes	5872.11	Engenheiro Cloud Júnior	45	45-54	Masculino	2011-10-11	Inativo	Infraestrutura e Cloud	FL02
DT29478	Pedro Barbosa	19128.46	Cientista de Dados Sênior	51	45-54	Masculino	2019-08-05	Ativo	Ciência de Dados	FL01
DT15910	Fernanda Rodrigues	6531.95	Engenheiro Cloud Júnior	44	35-44	Feminino	2012-02-14	Ativo	Infraestrutura e Cloud	FL04
DT56590	Elisa Sousa	6421.62	Analista de Dados Júnior	19	18-24	Feminino	2012-07-22	Ativo	Análise de Dados	FL09
DT33882	Renata Ribeiro	4208.23	Analista de BI Júnior	37	35-44	Feminino	2017-01-15	Ativo	Business Intelligence	FL04
DT91764	Renata Mendes	15850.24	Analista de Dados Sênior	29	25-34	Feminino	2014-09-26	Ativo	Análise de Dados	FL06
DT98265	Elisa Sousa	21973.44	Arquiteto de Dados	18	18-24	Feminino	2018-11-10	Ativo	Engenharia de Dados	FL09
DT70314	Beatriz Cardoso	21212.68	Gerente Financeiro	56	55+	Feminino	2020-12-01	Ativo	Financeiro	FL04
DT98316	Caio Andrade	20827.84	Gerente Financeiro	23	18-24	Masculino	2012-10-21	Ativo	Financeiro	FL01
DT12082	Diego Pereira	10006.54	Analista Financeiro Pleno	31	25-34	Masculino	2020-10-16	Ativo	Financeiro	FL01
DT67119	Paulo Lopes	6258.28	Analista de RH Pleno	47	45-54	Masculino	2013-04-28	Ativo	Recursos Humanos	FL01
DT31771	Ana Pereira	26765.13	Lead de Ciência de Dados	48	45-54	Feminino	2010-06-10	Inativo	Ciência de Dados	FL05
DT36389	Fernando Lopes	17305.53	Gerente de Análise de Dados	18	18-24	Masculino	2012-04-21	Ativo	Análise de Dados	FL01
DT64484	Ricardo Machado	13185.09	Engenheiro Cloud Sênior	43	35-44	Masculino	2020-11-26	Ativo	Infraestrutura e Cloud	FL03
DT40396	Renato Ramos	5320.77	Analista Financeiro Júnior	45	45-54	Masculino	2022-12-05	Ativo	Financeiro	FL03
DT94974	Matheus Fernandes	16701.64	Gerente de BI	57	55+	Masculino	2024-06-29	Ativo	Business Intelligence	FL01
DT12727	Cláudia Machado	18494.15	Cientista de Dados Sênior	48	45-54	Feminino	2017-09-17	Ativo	Ciência de Dados	FL07
DT87025	Priscila Almeida	14686.94	Analista Financeiro Sênior	60	55+	Feminino	2020-07-04	Ativo	Financeiro	FL08
DT64638	Anderson Moreira	14183.89	Analista Financeiro Sênior	28	25-34	Masculino	2023-12-13	Ativo	Financeiro	FL02
DT97432	Cláudia Ferreira	9193.16	Engenheiro Cloud Pleno	28	25-34	Feminino	2023-08-03	Ativo	Infraestrutura e Cloud	FL03
DT74713	Fábio Marques	8233.02	Analista de Dados Pleno	21	18-24	Masculino	2010-05-29	Ativo	Análise de Dados	FL02
DT98726	Letícia Nascimento	13225.77	Cientista de Dados Pleno	50	45-54	Feminino	2010-09-19	Ativo	Ciência de Dados	FL03
DT24938	Tatiana Machado	6362.06	Analista de RH Pleno	32	25-34	Feminino	2020-11-28	Ativo	Recursos Humanos	FL05
DT16117	Gustavo Nascimento	14533.43	Gerente de Contas	62	55+	Masculino	2021-07-24	Ativo	Vendas e Parcerias	FL01
DT67386	Rafael Souza	6436.65	Analista de BI Júnior	57	55+	Masculino	2023-09-04	Ativo	Business Intelligence	FL03
DT76493	Camila Oliveira	11519.70	Engenheiro de Dados Pleno	31	25-34	Feminino	2018-02-10	Ativo	Engenharia de Dados	FL09
DT76308	Gabriela Mendes	5462.89	Engenheiro Cloud Júnior	41	35-44	Feminino	2017-07-04	Ativo	Infraestrutura e Cloud	FL05
DT67554	Rafael Martins	4613.29	Analista de BI Júnior	48	45-54	Masculino	2017-08-28	Ativo	Business Intelligence	FL01
DT44867	Beatriz Ferreira	24885.15	Especialista em IA	60	55+	Feminino	2015-07-04	Ativo	Machine Learning	FL10
DT65275	Leandro Araújo	10306.19	Analista de Dados Pleno	44	35-44	Masculino	2019-03-08	Inativo	Análise de Dados	FL01
DT99417	Julio Araújo	8327.74	Engenheiro de ML Júnior	18	18-24	Masculino	2021-08-09	Inativo	Machine Learning	FL01
DT51262	Matheus Dias	8519.25	Analista de BI Pleno	43	35-44	Masculino	2010-10-31	Ativo	Business Intelligence	FL02
DT85308	Bruna Gomes	15386.87	Engenheiro de Dados Sênior	61	55+	Feminino	2022-06-02	Inativo	Engenharia de Dados	FL04
DT55109	Renato Rocha	17550.94	Engenheiro de Dados Sênior	57	55+	Masculino	2013-04-18	Ativo	Engenharia de Dados	FL02
DT81358	Carlos Carvalho	17487.35	Gerente de RH	59	55+	Masculino	2019-01-27	Ativo	Recursos Humanos	FL03
DT21046	Roberta Barbosa	15254.97	Engenheiro de Dados Sênior	26	25-34	Feminino	2021-09-03	Inativo	Engenharia de Dados	FL04
DT22166	Anderson Carvalho	15606.68	Engenheiro Cloud Sênior	58	55+	Masculino	2013-08-03	Ativo	Infraestrutura e Cloud	FL01
DT87660	André Monteiro	10412.80	Analista de Dados Pleno	37	35-44	Masculino	2019-06-26	Inativo	Análise de Dados	FL02
DT58887	Camila Souza	12057.16	Analista de Dados Sênior	59	55+	Feminino	2012-10-18	Ativo	Análise de Dados	FL05
DT69394	Isabela Silva	14124.24	Engenheiro de ML Pleno	55	55+	Feminino	2022-09-08	Ativo	Machine Learning	FL03
DT88059	Paulo Monteiro	12846.41	Analista de Dados Sênior	60	55+	Masculino	2022-11-06	Ativo	Análise de Dados	FL01
DT78113	Ricardo Moreira	6868.29	Analista Comercial Pleno	51	45-54	Masculino	2023-01-23	Ativo	Vendas e Parcerias	FL01
DT69547	Leandro Andrade	11846.56	Engenheiro de Dados Pleno	44	35-44	Masculino	2011-11-03	Ativo	Engenharia de Dados	FL01
DT72423	Eduardo Lima	17468.44	Gerente de Análise de Dados	61	55+	Masculino	2021-10-21	Ativo	Análise de Dados	FL02
DT61744	Alexandre Araújo	20818.77	Gerente de Análise de Dados	46	45-54	Masculino	2020-12-24	Ativo	Análise de Dados	FL02
DT28919	Aline Costa	10439.06	Engenheiro Cloud Pleno	47	45-54	Feminino	2012-11-25	Inativo	Infraestrutura e Cloud	FL06
DT25474	Priscila Araújo	8594.01	Analista Financeiro Pleno	20	18-24	Feminino	2013-07-08	Inativo	Financeiro	FL10
DT88852	Vanessa Pereira	4302.17	Analista de BI Júnior	54	45-54	Feminino	2016-06-30	Ativo	Business Intelligence	FL06
DT58688	Felipe Pereira	17167.93	Engenheiro de ML Sênior	49	45-54	Masculino	2010-08-18	Ativo	Machine Learning	FL01
DT16376	Felipe Marques	16685.70	Engenheiro de ML Sênior	49	45-54	Masculino	2010-01-18	Ativo	Machine Learning	FL01
DT15856	Vanessa Rodrigues	19438.35	Gerente de BI	54	45-54	Feminino	2020-02-23	Inativo	Business Intelligence	FL06
DT72289	Vitória Moreira	9666.83	Analista Financeiro Pleno	50	45-54	Feminino	2024-04-10	Ativo	Financeiro	FL05
DT29527	Renata Mendes	10901.92	Gerente de Contas	57	55+	Feminino	2024-11-26	Ativo	Vendas e Parcerias	FL07
DT61825	Henrique Almeida	9874.24	Engenheiro de ML Júnior	46	45-54	Masculino	2016-03-22	Ativo	Machine Learning	FL02
DT13251	Monique Costa	17585.74	Product Manager Sênior	25	25-34	Feminino	2024-06-10	Ativo	Produto	FL04
DT16930	Diego Monteiro	12877.51	Product Manager Pleno	50	45-54	Masculino	2010-06-02	Ativo	Produto	FL01
DT33559	Cristina Monteiro	17040.41	Engenheiro de Dados Sênior	33	25-34	Feminino	2022-12-31	Ativo	Engenharia de Dados	FL03
DT89541	Vitória Monteiro	26711.14	Especialista em IA	49	45-54	Feminino	2010-07-10	Ativo	Machine Learning	FL04
DT13153	Beatriz Marques	14910.05	Engenheiro Cloud Sênior	23	18-24	Feminino	2012-07-28	Inativo	Infraestrutura e Cloud	FL04
DT47401	Alexandre Costa	10650.00	Cientista de Dados Pleno	23	18-24	Masculino	2013-06-17	Ativo	Ciência de Dados	FL01
DT17721	Eduardo Costa	10135.10	Analista de RH Sênior	21	18-24	Masculino	2016-09-07	Ativo	Recursos Humanos	FL02
DT64109	Gustavo Gomes	17565.32	Engenheiro de ML Sênior	25	25-34	Masculino	2011-03-01	Ativo	Machine Learning	FL02
DT74615	Leandro Lopes	25645.50	Arquiteto Cloud	35	35-44	Masculino	2011-05-12	Ativo	Infraestrutura e Cloud	FL01
DT18579	Lívia Marques	6222.48	Engenheiro Cloud Júnior	32	25-34	Feminino	2010-06-02	Ativo	Infraestrutura e Cloud	FL10
DT42285	Isabela Alves	7566.14	Analista Comercial Pleno	44	35-44	Feminino	2020-01-02	Ativo	Vendas e Parcerias	FL05
DT36667	Paulo Gonçalves	17472.42	Cientista de Dados Sênior	28	25-34	Masculino	2015-07-02	Ativo	Ciência de Dados	FL03
DT15477	Eduardo Mendes	24747.24	Arquiteto de Dados	57	55+	Masculino	2016-06-27	Ativo	Engenharia de Dados	FL01
DT17887	Beatriz Silva	15989.34	Engenheiro Cloud Sênior	61	55+	Feminino	2018-07-12	Inativo	Infraestrutura e Cloud	FL08
DT86697	Luana Carvalho	13227.42	Engenheiro Cloud Sênior	52	45-54	Feminino	2022-08-18	Ativo	Infraestrutura e Cloud	FL04
DT26118	Matheus Nunes	19330.54	Cientista de Dados Sênior	31	25-34	Masculino	2023-09-10	Ativo	Ciência de Dados	FL01
DT99404	Vitória Rocha	20888.02	Engenheiro de ML Sênior	46	45-54	Feminino	2016-02-15	Ativo	Machine Learning	FL04
DT37606	Tatiana Dias	11071.44	Analista de BI Sênior	62	55+	Feminino	2012-12-31	Ativo	Business Intelligence	FL04
DT10560	Ana Cardoso	10652.65	Engenheiro de Dados Pleno	62	55+	Feminino	2020-12-19	Ativo	Engenharia de Dados	FL09
DT95078	Alexandre Ferreira	4577.30	Analista de RH Júnior	60	55+	Masculino	2019-12-26	Ativo	Recursos Humanos	FL01
DT88815	Vanessa Moreira	23417.49	Especialista em IA	62	55+	Feminino	2010-03-11	Ativo	Machine Learning	FL04
DT68271	Leonardo Martins	11972.58	Engenheiro de Dados Pleno	35	35-44	Masculino	2018-01-10	Ativo	Engenharia de Dados	FL01
DT38986	Caio Barbosa	22803.78	Gerente de Análise de Dados	20	18-24	Masculino	2016-04-18	Ativo	Análise de Dados	FL02
DT10935	Ricardo Carvalho	21221.15	Lead de Ciência de Dados	35	35-44	Masculino	2022-10-07	Ativo	Ciência de Dados	FL02
DT96486	Bruno Martins	6728.76	Analista Comercial Pleno	26	25-34	Masculino	2011-06-17	Ativo	Vendas e Parcerias	FL01
DT78561	Marcos Almeida	11363.33	Gerente de Contas	61	55+	Masculino	2010-07-09	Inativo	Vendas e Parcerias	FL02
DT90538	Cláudia Monteiro	17011.73	Gerente de Análise de Dados	45	45-54	Feminino	2024-05-17	Ativo	Análise de Dados	FL07
DT52336	Bruna Souza	17644.21	Gerente de BI	61	55+	Feminino	2021-08-16	Ativo	Business Intelligence	FL04
DT15697	Leonardo Araújo	7164.38	Analista Financeiro Pleno	44	35-44	Masculino	2021-12-10	Ativo	Financeiro	FL02
DT35507	Ana Nunes	9640.30	Engenheiro de ML Júnior	19	18-24	Feminino	2015-01-23	Inativo	Machine Learning	FL09
DT42765	Aline Rodrigues	10981.51	Cientista de Dados Pleno	22	18-24	Feminino	2024-01-16	Ativo	Ciência de Dados	FL09
DT66616	Lucas Cardoso	17282.28	Engenheiro de Dados Sênior	33	25-34	Masculino	2012-06-02	Ativo	Engenharia de Dados	FL01
DT53724	Tatiana Souza	12274.19	Engenheiro Cloud Pleno	56	55+	Feminino	2023-11-24	Ativo	Infraestrutura e Cloud	FL07
DT85882	Camila Mendes	8923.58	Cientista de Dados Júnior	20	18-24	Feminino	2018-06-19	Ativo	Ciência de Dados	FL09
DT26716	Monique Rodrigues	18856.13	Arquiteto de Dados	57	55+	Feminino	2024-01-17	Ativo	Engenharia de Dados	FL07
DT83303	Rafael Souza	17324.68	Engenheiro de Dados Sênior	43	35-44	Masculino	2012-02-25	Ativo	Engenharia de Dados	FL01
DT88587	Eduardo Almeida	4406.82	Analista de RH Júnior	47	45-54	Masculino	2019-08-09	Inativo	Recursos Humanos	FL01
DT54514	Natália Alves	4408.15	Analista de RH Júnior	39	35-44	Feminino	2023-03-09	Ativo	Recursos Humanos	FL06
DT88010	Rafael Silva	5482.22	Analista Financeiro Júnior	30	25-34	Masculino	2022-11-09	Ativo	Financeiro	FL01
DT56581	Priscila Sousa	20347.74	Gerente de BI	46	45-54	Feminino	2014-03-04	Ativo	Business Intelligence	FL04
DT17928	Fábio Oliveira	17714.87	Cientista de Dados Sênior	50	45-54	Masculino	2024-08-13	Ativo	Ciência de Dados	FL01
DT29087	Anderson Monteiro	22506.38	Lead de Ciência de Dados	39	35-44	Masculino	2016-07-12	Ativo	Ciência de Dados	FL01
DT86865	Ana Araújo	6171.95	Analista de RH Pleno	50	45-54	Feminino	2022-07-20	Inativo	Recursos Humanos	FL05
DT35612	Eduardo Nascimento	13033.69	Cientista de Dados Pleno	39	35-44	Masculino	2014-04-01	Ativo	Ciência de Dados	FL01
DT88612	Cláudia Freitas	14408.03	Analista Financeiro Sênior	54	45-54	Feminino	2017-07-12	Ativo	Financeiro	FL03
DT31270	Eduardo Dias	24194.69	Arquiteto de Dados	20	18-24	Masculino	2021-02-14	Ativo	Engenharia de Dados	FL02
DT40182	Ana Almeida	7836.57	Analista de BI Pleno	39	35-44	Feminino	2018-06-07	Ativo	Business Intelligence	FL07
DT57555	Beatriz Silva	6573.66	Engenheiro de Dados Júnior	53	45-54	Feminino	2012-08-01	Ativo	Engenharia de Dados	FL08
DT92750	Renata Martins	14741.48	Product Manager Sênior	19	18-24	Feminino	2014-06-20	Ativo	Produto	FL04
DT44340	Beatriz Almeida	8189.36	Analista Financeiro Pleno	53	45-54	Feminino	2015-07-08	Ativo	Financeiro	FL04
DT44313	Ana Ribeiro	7994.34	Engenheiro de Dados Júnior	26	25-34	Feminino	2018-07-02	Ativo	Engenharia de Dados	FL06
DT54352	André Pereira	17009.12	Cientista de Dados Sênior	41	35-44	Masculino	2018-05-09	Ativo	Ciência de Dados	FL02
DT18569	Priscila Machado	13472.25	Cientista de Dados Pleno	26	25-34	Feminino	2014-04-03	Ativo	Ciência de Dados	FL03
DT51674	Henrique Andrade	27838.87	Head de Produto	33	25-34	Masculino	2011-01-14	Ativo	Produto	FL01
DT80184	Fernando Martins	8646.88	Analista de Dados Pleno	21	18-24	Masculino	2024-02-13	Ativo	Análise de Dados	FL02
DT76619	Julio Lima	22464.66	Head de Produto	23	18-24	Masculino	2020-07-22	Ativo	Produto	FL01
DT31945	Marcelo Rodrigues	24259.16	Arquiteto Cloud	59	55+	Masculino	2021-06-03	Ativo	Infraestrutura e Cloud	FL03
DT33461	Daniel Freitas	18390.12	Engenheiro de ML Sênior	48	45-54	Masculino	2021-02-05	Ativo	Machine Learning	FL02
DT93637	Isabela Nunes	6621.60	Product Manager Júnior	30	25-34	Feminino	2020-02-21	Inativo	Produto	FL05
DT50107	Henrique Carvalho	19428.22	Gerente de BI	41	35-44	Masculino	2015-09-17	Ativo	Business Intelligence	FL01
DT48672	Mariana Ferreira	12035.80	Analista de BI Sênior	20	18-24	Feminino	2020-06-08	Ativo	Business Intelligence	FL06
DT69133	Gustavo Machado	18453.72	Gerente de BI	49	45-54	Masculino	2017-02-10	Ativo	Business Intelligence	FL01
DT67892	Ana Ribeiro	14404.10	Analista de Dados Sênior	40	35-44	Feminino	2011-11-07	Ativo	Análise de Dados	FL04
DT81650	Daniel Gonçalves	5071.75	Analista de RH Júnior	32	25-34	Masculino	2012-03-17	Ativo	Recursos Humanos	FL02
DT81568	Vanessa Oliveira	15581.55	Cientista de Dados Sênior	39	35-44	Feminino	2015-08-11	Ativo	Ciência de Dados	FL07
DT34987	Caio Fernandes	10494.42	Analista Financeiro Pleno	52	45-54	Masculino	2015-11-10	Ativo	Financeiro	FL02
DT55433	Anderson Vieira	20931.17	Gerente de BI	59	55+	Masculino	2010-04-08	Ativo	Business Intelligence	FL01
DT62101	Daniel Gomes	10031.68	Analista de Dados Pleno	31	25-34	Masculino	2020-08-22	Ativo	Análise de Dados	FL02
DT70476	Fernando Freitas	7939.22	Engenheiro de ML Júnior	30	25-34	Masculino	2019-08-14	Ativo	Machine Learning	FL01
DT37470	Cláudia Marques	21117.66	Gerente de BI	19	18-24	Feminino	2018-05-28	Ativo	Business Intelligence	FL10
DT50051	Julio Lima	4899.56	Analista Comercial Júnior	60	55+	Masculino	2017-12-15	Ativo	Vendas e Parcerias	FL02
DT99884	Aline Machado	22102.73	Diretor Comercial	62	55+	Feminino	2022-01-22	Ativo	Vendas e Parcerias	FL05
DT84393	Fernando Santos	9614.76	Engenheiro de Dados Pleno	39	35-44	Masculino	2022-09-29	Ativo	Engenharia de Dados	FL01
DT59980	Marcelo Nunes	20914.11	Lead de Ciência de Dados	42	35-44	Masculino	2014-03-23	Ativo	Ciência de Dados	FL01
DT93755	Tatiana Mendes	4928.56	Analista de Dados Júnior	61	55+	Feminino	2022-05-27	Ativo	Análise de Dados	FL09
DT13517	Caio Ramos	9812.71	Cientista de Dados Pleno	42	35-44	Masculino	2016-05-14	Ativo	Ciência de Dados	FL02
DT19172	Gabriela Araújo	4921.63	Analista de BI Júnior	18	18-24	Feminino	2013-11-08	Ativo	Business Intelligence	FL10
DT61262	Cristina Marques	6387.41	Cientista de Dados Júnior	44	35-44	Feminino	2020-09-22	Ativo	Ciência de Dados	FL05
DT27030	Henrique Carvalho	16877.10	Cientista de Dados Sênior	60	55+	Masculino	2020-08-25	Ativo	Ciência de Dados	FL01
DT87003	Isabela Barbosa	22290.37	Lead de Ciência de Dados	18	18-24	Feminino	2013-03-14	Ativo	Ciência de Dados	FL06
DT89278	Luana Nunes	15596.36	Analista de Dados Sênior	49	45-54	Feminino	2020-04-27	Ativo	Análise de Dados	FL05
DT47737	Gabriel Ferreira	15733.91	Gerente de RH	37	35-44	Masculino	2018-10-09	Ativo	Recursos Humanos	FL01
DT64401	Vitória Ribeiro	10649.88	Analista de Dados Pleno	45	45-54	Feminino	2020-04-08	Ativo	Análise de Dados	FL07
DT84529	Daniela Ribeiro	23041.19	Arquiteto de Dados	20	18-24	Feminino	2015-05-18	Inativo	Engenharia de Dados	FL06
DT92324	Bruno Fernandes	16333.28	Engenheiro Cloud Sênior	22	18-24	Masculino	2014-11-15	Inativo	Infraestrutura e Cloud	FL01
DT58330	Aline Pereira	7013.18	Engenheiro de Dados Júnior	38	35-44	Feminino	2019-03-14	Ativo	Engenharia de Dados	FL03
DT76330	Rodrigo Carvalho	18673.67	Arquiteto de Dados	58	55+	Masculino	2025-02-25	Ativo	Engenharia de Dados	FL02
DT62342	Henrique Dias	20745.54	Lead de Ciência de Dados	34	25-34	Masculino	2012-07-28	Ativo	Ciência de Dados	FL01
DT97856	Felipe Rocha	19878.07	Diretor Comercial	22	18-24	Masculino	2011-11-08	Ativo	Vendas e Parcerias	FL02
DT28383	Amanda Mendes	17207.81	Engenheiro Cloud Sênior	28	25-34	Feminino	2010-05-28	Ativo	Infraestrutura e Cloud	FL10
DT26272	Beatriz Vieira	20179.17	Arquiteto Cloud	60	55+	Feminino	2010-04-02	Ativo	Infraestrutura e Cloud	FL05
DT56935	Mariana Mendes	12714.86	Cientista de Dados Pleno	61	55+	Feminino	2021-12-09	Ativo	Ciência de Dados	FL04
DT93203	Cláudia Souza	6171.86	Engenheiro Cloud Júnior	37	35-44	Feminino	2019-12-17	Ativo	Infraestrutura e Cloud	FL05
DT59465	Lucas Souza	9750.87	Analista Comercial Pleno	41	35-44	Masculino	2015-05-09	Ativo	Vendas e Parcerias	FL01
DT13662	Ana Marques	17192.37	Engenheiro de Dados Sênior	61	55+	Feminino	2025-01-02	Ativo	Engenharia de Dados	FL03
DT97046	André Alves	9698.06	Cientista de Dados Pleno	50	45-54	Masculino	2012-06-01	Ativo	Ciência de Dados	FL01
DT91877	Tatiana Martins	26603.00	Lead de Ciência de Dados	25	25-34	Feminino	2015-03-19	Ativo	Ciência de Dados	FL04
DT32756	Leonardo Rocha	22750.95	Arquiteto de Dados	18	18-24	Masculino	2018-09-24	Ativo	Engenharia de Dados	FL03
DT96240	Thiago Rodrigues	11697.73	Analista de Dados Sênior	31	25-34	Masculino	2019-03-22	Ativo	Análise de Dados	FL01
DT23344	Marcelo Ramos	7881.79	Analista Financeiro Pleno	24	18-24	Masculino	2023-06-16	Ativo	Financeiro	FL01
DT98853	Paulo Moreira	7662.16	Analista Comercial Pleno	58	55+	Masculino	2017-02-17	Inativo	Vendas e Parcerias	FL01
DT18849	Vitor Cardoso	8825.60	Engenheiro de ML Júnior	55	55+	Masculino	2020-01-26	Ativo	Machine Learning	FL01
DT75984	Paulo Almeida	6697.82	Product Manager Júnior	57	55+	Masculino	2012-10-13	Ativo	Produto	FL01
DT41922	Renato Machado	3619.85	Analista de RH Júnior	41	35-44	Masculino	2021-03-09	Ativo	Recursos Humanos	FL02
DT36789	Mariana Moreira	3976.13	Analista de RH Júnior	56	55+	Feminino	2019-12-15	Ativo	Recursos Humanos	FL03
DT46454	Gustavo Lima	8562.62	Engenheiro de ML Júnior	44	35-44	Masculino	2024-07-14	Ativo	Machine Learning	FL01
DT40016	Leandro Santos	12042.28	Gerente de Contas	31	25-34	Masculino	2022-02-05	Ativo	Vendas e Parcerias	FL03
DT39156	Cristina Lopes	24650.30	Head de Produto	29	25-34	Feminino	2019-12-03	Ativo	Produto	FL08
DT19173	Juliana Ramos	7903.10	Cientista de Dados Júnior	27	25-34	Feminino	2014-07-31	Ativo	Ciência de Dados	FL05
DT40973	Beatriz Carvalho	6278.72	Engenheiro Cloud Júnior	47	45-54	Feminino	2016-12-26	Ativo	Infraestrutura e Cloud	FL04
DT65576	Diego Lopes	10863.95	Cientista de Dados Pleno	54	45-54	Masculino	2020-01-21	Inativo	Ciência de Dados	FL01
DT73068	Larissa Fernandes	15292.10	Engenheiro de Dados Sênior	28	25-34	Feminino	2020-07-23	Ativo	Engenharia de Dados	FL05
DT30431	Daniel Machado	7285.79	Engenheiro Cloud Júnior	45	45-54	Masculino	2011-11-13	Ativo	Infraestrutura e Cloud	FL01
DT88011	Marcos Barbosa	10711.41	Engenheiro Cloud Pleno	29	25-34	Masculino	2015-10-09	Ativo	Infraestrutura e Cloud	FL01
DT47122	Anderson Freitas	22575.52	Especialista em IA	26	25-34	Masculino	2020-07-11	Ativo	Machine Learning	FL01
DT10547	Marcos Martins	15711.54	Engenheiro de Dados Sênior	44	35-44	Masculino	2018-11-07	Inativo	Engenharia de Dados	FL01
DT74166	Vanessa Moreira	8226.36	Engenheiro de ML Júnior	20	18-24	Feminino	2012-10-16	Ativo	Machine Learning	FL05
DT35457	Fernando Costa	23656.78	Diretor Comercial	40	35-44	Masculino	2021-06-06	Ativo	Vendas e Parcerias	FL01
DT17563	Paulo Andrade	18632.59	Gerente de RH	33	25-34	Masculino	2015-06-09	Ativo	Recursos Humanos	FL01
DT92700	Cristina Andrade	5743.68	Analista Financeiro Júnior	59	55+	Feminino	2013-04-26	Ativo	Financeiro	FL04
\.


--
-- PostgreSQL database dump complete
--

\unrestrict MeH3NohOrq4hc05Y7T7LAPBTkIPnMwtTarIZrIMblAZObFbgChyAnAk24yvykmH

