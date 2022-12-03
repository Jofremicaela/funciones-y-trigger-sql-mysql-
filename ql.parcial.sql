insert into clientes (clid,clnom ,clcuit, cltel)
value('0001','juan','16304501204','1154378655')

insert into clientes
value('0002','rosa','20335998750','1187654543')

insert into clientes
value('0003','lorena','24268762349','1187765567')

insert into clientes
value('0004','jose','34309483478','1122244543')

insert into clientes
value('0005','romeo','48337459830','1176656443')

insert into  productos (prid,prcod,prnom,prpu,prstock)
value('1000','101010','mochila lila','2.000','200')
insert into  productos
value('1001','111111','mochila clara','3.000','500')
insert into  productos
value('1002','121212','cartera tote lunch','3.500','300')
insert into  productos
value('1003','131313','mini bag prince','4.000','600')
insert into  productos
value('1004','141414','billetera tini','2.500','450')



insert into  factcab (facid,clid,facipo,facnro,facfech)
value('00001','0001','20','000001','22-3-22')
insert into  factcab
value('00002','0002','21','000002','30-4-22')
insert into  factcab
value('00003','0003','22','000003','18-5-22')
insert into  factcab
value('00004','0004','23','000004','23-5-22')
insert into  factcab
value('00005','0005','24','000005','29-5-22')


insert into factdet (facid,detitem, prid,detcan,detpreuni)
value('00001','100000','1000','10','2.000')
insert into factdet
value('00002','100001','1001','20','3.000')
insert into factdet
value('00003','100002','1002','15','3.500')
insert into factdet
value('00004','100003','1003','40','4.000')
insert into factdet
value('00005','100004','1004','100','2.500')




select * from factdet

select nombre_cli(00001) as nombre, total_factura(00001) as total;

select  nombre_cli(00001) as nombre;

SELECT SUM(det.detcan * det.detpreuni) 
    FROM factdet det, factcab f
    WHERE det.facid = f.facid
	 and
	f.facid = 00001
	 