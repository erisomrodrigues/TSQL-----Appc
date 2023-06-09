-- Replicação de subgrupos,grupos e produtos de um wms para outro WMS --
use WMS_F26

insert into WMS_F26.dbo.SubGrupo
select * from Wms_F04.dbo.SubGrupo p where not exists (
select * from WMS_F26.dbo.SubGrupo d where p.CodSubGrupo=d.CodSubGrupo
)
go

insert into WMS_F26.dbo.Grupo
select * from Wms_F04.dbo.Grupo p where not exists (
select * from WMS_F26.dbo.Grupo d where p.CodGrupo=d.CodGrupo
)
go

insert into WMS_F31.dbo.Produto (
	  [CodProduto]
      ,[DescProd]
      ,[CodMarca]
      ,[CodSubGrupo]
      ,[DatCadastro]
      ,[Situacao]
      ,[DatAlteracao]
      ,[VlrUltimaCompra]
      ,[CodUsuarioCadastro]
      ,[CodUsuarioAlteracao]
      ,[Obs]
      ,[CodGrupo]
      ,[RefProd]
      ,[DtBloqueio]
      ,[DtBloqueioSefaz]
      ,[CodFabrica]
      ,[EmbalagemExpedicao]
      ,[CodFornecedor]
      ,[DiasVenc]
      ,[TipoPeso]
      ,[Fracionado]
      ,[CodAlmoxarifado]
      ,[ABC]
      ,[EstMinMaster]
      ,[EstMaxMaster]
      ,[EstMinFracionado]
      ,[EstMaxFracionado]
      ,[TipoProduto]
      ,[Ignorar_Qtd_Max_Permitida_Expedicao]
      ,[Giro]
      ,[Bloqueado]
      ,[QtdPallet]
      ,[UndERP]
      ,[QtdCX]
      ,[QtdUnd]
      ,[Lastro]
      ,[AlturaP]
      ,[AlturaM]
      ,[AlturaG]
      ,[PesoBruto]
      ,[PesoLiq]
      ,[DiasBloq]
      ,[AlturaEG]
      ,[idCor]
      ,[idVoltagem]
      ,[ControlaLote]
      ,[ControlaValidade]
      ,[QtdERP]
      ,[Volume]
      ,[CodMaquina]
      ,[EAN128])
	  
	   select
	  
       [CodProduto]
      ,[DescProd]
      ,[CodMarca]
      ,[CodSubGrupo]
      ,[DatCadastro]
      ,[Situacao]
      ,[DatAlteracao]
      ,[VlrUltimaCompra]
      ,[CodUsuarioCadastro]
      ,[CodUsuarioAlteracao]
      ,[Obs]
      ,[CodGrupo]
      ,[RefProd]
      ,[DtBloqueio]
      ,[DtBloqueioSefaz]
      ,[CodFabrica]
      ,[EmbalagemExpedicao]
      ,[CodFornecedor]
      ,[DiasVenc]
      ,[TipoPeso]
      ,[Fracionado]
      ,[CodAlmoxarifado]
      ,[ABC]
      ,[EstMinMaster]
      ,[EstMaxMaster]
      ,[EstMinFracionado]
      ,[EstMaxFracionado]
      ,[TipoProduto]
      ,[Ignorar_Qtd_Max_Permitida_Expedicao]
      ,[Giro]
      ,[Bloqueado]
      ,[QtdPallet]
      ,[UndERP]
      ,[QtdCX]
      ,[QtdUnd]
      ,[Lastro]
      ,[AlturaP]
      ,[AlturaM]
      ,[AlturaG]
      ,[PesoBruto]
      ,[PesoLiq]
      ,[DiasBloq]
      ,[AlturaEG]
      ,[idCor]
      ,[idVoltagem]
      ,[ControlaLote]
      ,[ControlaValidade]
      ,[QtdERP]
      ,[Volume]
      ,[CodMaquina]
      ,[EAN128]
      /*,[ControlaFabricacao]
      ,[ControlaNumSerie]
      ,[ArmPicking]
      ,[Shelf]*/

       from Wms_F04.dbo.Produto p where not exists (select

       [CodProduto]
      ,[DescProd]
      ,[CodMarca]
      ,[CodSubGrupo]
      ,[DatCadastro]
      ,[Situacao]
      ,[DatAlteracao]
      ,[VlrUltimaCompra]
      ,[CodUsuarioCadastro]
      ,[CodUsuarioAlteracao]
      ,[Obs]
      ,[CodGrupo]
      ,[RefProd]
      ,[DtBloqueio]
      ,[DtBloqueioSefaz]
      ,[CodFabrica]
      ,[EmbalagemExpedicao]
      ,[CodFornecedor]
      ,[DiasVenc]
      ,[TipoPeso]
      ,[Fracionado]
      ,[CodAlmoxarifado]
      ,[ABC]
      ,[EstMinMaster]
      ,[EstMaxMaster]
      ,[EstMinFracionado]
      ,[EstMaxFracionado]
      ,[TipoProduto]
      ,[Ignorar_Qtd_Max_Permitida_Expedicao]
      ,[Giro]
      ,[Bloqueado]
      ,[QtdPallet]
      ,[UndERP]
      ,[QtdCX]
      ,[QtdUnd]
      ,[Lastro]
      ,[AlturaP]
      ,[AlturaM]
      ,[AlturaG]
      ,[PesoBruto]
      ,[PesoLiq]
      ,[DiasBloq]
      ,[AlturaEG]
      ,[idCor]
      ,[idVoltagem]
      ,[ControlaLote]
      ,[ControlaValidade]
      ,[QtdERP]
      ,[Volume]
      ,[CodMaquina]
      ,[EAN128]
      /*,[ControlaFabricacao]
      ,[ControlaNumSerie]
      ,[ArmPicking]
      ,[Shelf]*/
	   from WMS_F31.dbo.Produto d where p.CodProduto=d.CodProduto )
go