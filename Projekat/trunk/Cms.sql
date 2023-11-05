/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     1. 8. 2022. 00:03:19                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _ADRESA MJ_NASELJEN')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _ADRESA MJ_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _KOD DRUGO_POSLOVNI')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _KOD DRUGO_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _KONTANT P_REGISTAR')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _KONTANT P_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Arhivirani predmeti"') and o.name = 'FK_ARHIVIRA_RELATIONS_PREDMET')
alter table "Arhivirani predmeti"
   drop constraint FK_ARHIVIRA_RELATIONS_PREDMET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Arhivirani predmeti"') and o.name = 'FK_ARHIVIRA_RELATIONS_ARHIVSKA')
alter table "Arhivirani predmeti"
   drop constraint FK_ARHIVIRA_RELATIONS_ARHIVSKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Atribut') and o.name = 'FK_ATRIBUT_RESURSI S_POSLOVNI')
alter table Atribut
   drop constraint "FK_ATRIBUT_RESURSI S_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Clanovi kolegijuma"') and o.name = 'FK_CLANOVI _RELATIONS_REGISTAR')
alter table "Clanovi kolegijuma"
   drop constraint "FK_CLANOVI _RELATIONS_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Clanovi kolegijuma"') and o.name = 'FK_CLANOVI _RELATIONS_TIP KOLE')
alter table "Clanovi kolegijuma"
   drop constraint "FK_CLANOVI _RELATIONS_TIP KOLE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokaz') and o.name = 'FK_DOKAZ_RELATIONS_PREDMET')
alter table Dokaz
   drop constraint FK_DOKAZ_RELATIONS_PREDMET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokaz') and o.name = 'FK_DOKAZ_RELATIONS_REGISTAR2')
alter table Dokaz
   drop constraint FK_DOKAZ_RELATIONS_REGISTAR2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokaz') and o.name = 'FK_DOKAZ_RELATIONS_PRAVNO L')
alter table Dokaz
   drop constraint "FK_DOKAZ_RELATIONS_PRAVNO L"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokaz') and o.name = 'FK_DOKAZ_RELATIONS_REGISTAR')
alter table Dokaz
   drop constraint FK_DOKAZ_RELATIONS_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Drava') and o.name = 'FK_DRAVA_AKTUELNI _NASELJEN')
alter table Drava
   drop constraint "FK_DRAVA_AKTUELNI _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Drava') and o.name = 'FK_DRAVA_TEKUCE UR_DRAVNO')
alter table Drava
   drop constraint "FK_DRAVA_TEKUCE UR_DRAVNO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dravljanstva') and o.name = 'FK_DRAVLJA_DRAVLJAN_REGISTAR')
alter table Dravljanstva
   drop constraint FK_DRAVLJA_DRAVLJAN_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dravljanstva') and o.name = 'FK_DRAVLJA_DRAVLJAN_DRAVA')
alter table Dravljanstva
   drop constraint FK_DRAVLJA_DRAVLJAN_DRAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Faza predmeta"') and o.name = 'FK_FAZA PRE_VRSTA PRD_VRSTA PR')
alter table "Faza predmeta"
   drop constraint "FK_FAZA PRE_VRSTA PRD_VRSTA PR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Faze na predmetu"') and o.name = 'FK_FAZE NA _FAZA NA P_FAZA PRE')
alter table "Faze na predmetu"
   drop constraint "FK_FAZE NA _FAZA NA P_FAZA PRE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Faze na predmetu"') and o.name = 'FK_FAZE NA _PREDMETI _PREDMET')
alter table "Faze na predmetu"
   drop constraint "FK_FAZE NA _PREDMETI _PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Glavni grad"') and o.name = 'FK_GLAVNI G_DRAVA IM_DRAVA')
alter table "Glavni grad"
   drop constraint "FK_GLAVNI G_DRAVA IM_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Glavni grad"') and o.name = 'FK_GLAVNI G_GLAVNI GR_NASELJEN')
alter table "Glavni grad"
   drop constraint "FK_GLAVNI G_GLAVNI GR_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istoija uredenja"') and o.name = 'FK_ISTOIJA _KROZ ISTO_DRAVA')
alter table "Istoija uredenja"
   drop constraint "FK_ISTOIJA _KROZ ISTO_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istoija uredenja"') and o.name = 'FK_ISTOIJA _UREĞENJE _DRAVNO')
alter table "Istoija uredenja"
   drop constraint "FK_ISTOIJA _UREĞENJE _DRAVNO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izabrani tipovi organizacione jedinice"') and o.name = 'FK_IZABRANI_TIPIZACIJ_TIP ORGA')
alter table "Izabrani tipovi organizacione jedinice"
   drop constraint "FK_IZABRANI_TIPIZACIJ_TIP ORGA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izabrani tipovi organizacione jedinice"') and o.name = 'FK_IZABRANI_TIPIZACIJ_POSLOVNI')
alter table "Izabrani tipovi organizacione jedinice"
   drop constraint FK_IZABRANI_TIPIZACIJ_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izdavanje kopije grade"') and o.name = 'FK_IZDAVANJ_RELATIONS_ARHIVSKA')
alter table "Izdavanje kopije grade"
   drop constraint FK_IZDAVANJ_RELATIONS_ARHIVSKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izdavanje kopije grade"') and o.name = 'FK_IZDAVANJ_RELATIONS_REGISTAR')
alter table "Izdavanje kopije grade"
   drop constraint FK_IZDAVANJ_RELATIONS_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izdavanje kopije grade"') and o.name = 'FK_IZDAVANJ_RELATIONS_SVRHA IZ')
alter table "Izdavanje kopije grade"
   drop constraint "FK_IZDAVANJ_RELATIONS_SVRHA IZ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvjestaj') and o.name = 'FK_IZVJESTA_RELATIONS_VRSTA PR')
alter table Izvjestaj
   drop constraint "FK_IZVJESTA_RELATIONS_VRSTA PR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvjestaj') and o.name = 'FK_IZVJESTA_RELATIONS_VRSTA IZ')
alter table Izvjestaj
   drop constraint "FK_IZVJESTA_RELATIONS_VRSTA IZ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izvještaj na predmetu"') and o.name = 'FK_IZVJEŠTA_RELATIONS_FAZE NA')
alter table "Izvještaj na predmetu"
   drop constraint "FK_IZVJEŠTA_RELATIONS_FAZE NA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izvještaj na predmetu"') and o.name = 'FK_IZVJEŠTA_RELATIONS_IZVJESTA')
alter table "Izvještaj na predmetu"
   drop constraint FK_IZVJEŠTA_RELATIONS_IZVJESTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog radnih mjesta"') and o.name = 'FK_KATALOG _ZAPOŠLJAV_POSLOVNI')
alter table "Katalog radnih mjesta"
   drop constraint "FK_KATALOG _ZAPOŠLJAV_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog radnih mjesta u organizacionoj jedinici"') and o.name = 'FK_KATALOG _RADNA MJE_ORGANIZA')
alter table "Katalog radnih mjesta u organizacionoj jedinici"
   drop constraint "FK_KATALOG _RADNA MJE_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog radnih mjesta u organizacionoj jedinici"') and o.name = 'FK_KATALOG _RADNO MJE_KATALOG')
alter table "Katalog radnih mjesta u organizacionoj jedinici"
   drop constraint "FK_KATALOG _RADNO MJE_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog zanimanja"') and o.name = 'FK_KATALOG _REGISTROV_DRAVA')
alter table "Katalog zanimanja"
   drop constraint "FK_KATALOG _REGISTROV_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog zvanja"') and o.name = 'FK_KATALOG _KATALOG Z_DRAVA')
alter table "Katalog zvanja"
   drop constraint "FK_KATALOG _KATALOG Z_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Kazna') and o.name = 'FK_KAZNA_VRSTA KAZ_VRSTA KA')
alter table Kazna
   drop constraint "FK_KAZNA_VRSTA KAZ_VRSTA KA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Kazne u predmetu"') and o.name = 'FK_KAZNE U _IZRECENA _KAZNA')
alter table "Kazne u predmetu"
   drop constraint "FK_KAZNE U _IZRECENA _KAZNA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Kazne u predmetu"') and o.name = 'FK_KAZNE U _IZRECENE _PREDMET')
alter table "Kazne u predmetu"
   drop constraint "FK_KAZNE U _IZRECENE _PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Korisnicki nalog"') and o.name = 'FK_KORISNIC_NALOG ZAP_REGISTAR')
alter table "Korisnicki nalog"
   drop constraint "FK_KORISNIC_NALOG ZAP_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Korisnicki nalog"') and o.name = 'FK_KORISNIC_REGISTROV_POSLOVNI')
alter table "Korisnicki nalog"
   drop constraint FK_KORISNIC_REGISTROV_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Kretanje dokaza"') and o.name = 'FK_KRETANJE_RELATIONS_DOKAZ')
alter table "Kretanje dokaza"
   drop constraint FK_KRETANJE_RELATIONS_DOKAZ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Kretanje dokaza"') and o.name = 'FK_KRETANJE_RELATIONS_RASPORED')
alter table "Kretanje dokaza"
   drop constraint FK_KRETANJE_RELATIONS_RASPORED
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Lista zvanja"') and o.name = 'FK_LISTA ZV_LISTA ZVA_ŠKOLSKE')
alter table "Lista zvanja"
   drop constraint "FK_LISTA ZV_LISTA ZVA_ŠKOLSKE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Lista zvanja"') and o.name = 'FK_LISTA ZV_LISTA ZVA_KATALOG')
alter table "Lista zvanja"
   drop constraint "FK_LISTA ZV_LISTA ZVA_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi akcija"') and o.name = 'FK_LOGOVI A_KORISNICK_KORISNIC')
alter table "Logovi akcija"
   drop constraint "FK_LOGOVI A_KORISNICK_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi akcija"') and o.name = 'FK_LOGOVI A_LOGOVI AK_POSLOVNI')
alter table "Logovi akcija"
   drop constraint "FK_LOGOVI A_LOGOVI AK_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi akcija"') and o.name = 'FK_LOGOVI A_TABELE NA_TABELE')
alter table "Logovi akcija"
   drop constraint "FK_LOGOVI A_TABELE NA_TABELE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi izmjena"') and o.name = 'FK_LOGOVI I_KOEISNICK_KORISNIC')
alter table "Logovi izmjena"
   drop constraint "FK_LOGOVI I_KOEISNICK_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi izmjena"') and o.name = 'FK_LOGOVI I_LOGOVI IZ_POSLOVNI')
alter table "Logovi izmjena"
   drop constraint "FK_LOGOVI I_LOGOVI IZ_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi izmjena"') and o.name = 'FK_LOGOVI I_TABELE NA_TABELE')
alter table "Logovi izmjena"
   drop constraint "FK_LOGOVI I_TABELE NA_TABELE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi pristupa"') and o.name = 'FK_LOGOVI P_KORISNICK_KORISNIC')
alter table "Logovi pristupa"
   drop constraint "FK_LOGOVI P_KORISNICK_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi pristupa"') and o.name = 'FK_LOGOVI P_LOGOVI PR_POSLOVNI')
alter table "Logovi pristupa"
   drop constraint "FK_LOGOVI P_LOGOVI PR_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi pristupa"') and o.name = 'FK_LOGOVI P_TABELE KO_TABELE')
alter table "Logovi pristupa"
   drop constraint "FK_LOGOVI P_TABELE KO_TABELE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesna zajednica"') and o.name = 'FK_MJESNA Z_IMA MJESN_OPŠTINA')
alter table "Mjesna zajednica"
   drop constraint "FK_MJESNA Z_IMA MJESN_OPŠTINA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesna zajednica"') and o.name = 'FK_MJESNA Z_MJESNA KA_NASELJEN')
alter table "Mjesna zajednica"
   drop constraint "FK_MJESNA Z_MJESNA KA_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesto pokrivanja naselja"') and o.name = 'FK_MJESTO P_MJESTO PO_NASELJEN')
alter table "Mjesto pokrivanja naselja"
   drop constraint "FK_MJESTO P_MJESTO PO_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesto pokrivanja naselja"') and o.name = 'FK_MJESTO P_MJESTO PO_MJESNA Z')
alter table "Mjesto pokrivanja naselja"
   drop constraint "FK_MJESTO P_MJESTO PO_MJESNA Z"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Naredba') and o.name = 'FK_NAREDBA_NAREDBA N_PREDMET')
alter table Naredba
   drop constraint "FK_NAREDBA_NAREDBA N_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Naredba') and o.name = 'FK_NAREDBA_RELATIONS_TIP NARE')
alter table Naredba
   drop constraint "FK_NAREDBA_RELATIONS_TIP NARE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Naredba') and o.name = 'FK_NAREDBA_RELATIONS_REGISTAR')
alter table Naredba
   drop constraint FK_NAREDBA_RELATIONS_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Naredba') and o.name = 'FK_NAREDBA_RELATIONS_REGISTAR2')
alter table Naredba
   drop constraint FK_NAREDBA_RELATIONS_REGISTAR2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Naseljena mjesta"') and o.name = 'FK_NASELJEN_SADRI NA_DRAVA')
alter table "Naseljena mjesta"
   drop constraint "FK_NASELJEN_SADRI NA_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obhvata naselja"') and o.name = 'FK_OBHVATA _OBHVATA N_NASELJEN')
alter table "Obhvata naselja"
   drop constraint "FK_OBHVATA _OBHVATA N_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obhvata naselja"') and o.name = 'FK_OBHVATA _OBHVATA N_REGION')
alter table "Obhvata naselja"
   drop constraint "FK_OBHVATA _OBHVATA N_REGION"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obrazuju za"') and o.name = 'FK_OBRAZUJU_OBRAZUJU _ŠKOLSKE')
alter table "Obrazuju za"
   drop constraint "FK_OBRAZUJU_OBRAZUJU _ŠKOLSKE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obrazuju za"') and o.name = 'FK_OBRAZUJU_OBRAZUJU _POSLOVNI')
alter table "Obrazuju za"
   drop constraint "FK_OBRAZUJU_OBRAZUJU _POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata opštine"') and o.name = 'FK_OBUHVATA_OBUHVATA _OPŠTINA')
alter table "Obuhvata opštine"
   drop constraint "FK_OBUHVATA_OBUHVATA _OPŠTINA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata opštine"') and o.name = 'FK_OBUHVATA_OBUHVATA _NASELJEN')
alter table "Obuhvata opštine"
   drop constraint "FK_OBUHVATA_OBUHVATA _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odnos radnih mjesta"') and o.name = 'FK_ODNOS RA_NADREDJEN_KATALOG')
alter table "Odnos radnih mjesta"
   drop constraint "FK_ODNOS RA_NADREDJEN_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odnos radnih mjesta"') and o.name = 'FK_ODNOS RA_ODNOS RAD_SISTEMAT')
alter table "Odnos radnih mjesta"
   drop constraint "FK_ODNOS RA_ODNOS RAD_SISTEMAT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odnos radnih mjesta"') and o.name = 'FK_ODNOS RA_PODREDJEN_KATALOG')
alter table "Odnos radnih mjesta"
   drop constraint "FK_ODNOS RA_PODREDJEN_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Opština') and o.name = 'FK_OPŠTINA_LOKALNA S_DRAVA')
alter table Opština
   drop constraint "FK_OPŠTINA_LOKALNA S_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Opština') and o.name = 'FK_OPŠTINA_SJEDIŠTE _NASELJEN')
alter table Opština
   drop constraint "FK_OPŠTINA_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizacione jedinice"') and o.name = 'FK_ORGANIZA_SJEDIŠTE _NASELJEN')
alter table "Organizacione jedinice"
   drop constraint "FK_ORGANIZA_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizacione jedinice"') and o.name = 'FK_ORGANIZA_TIPIZACIJ_IZABRANI')
alter table "Organizacione jedinice"
   drop constraint FK_ORGANIZA_TIPIZACIJ_IZABRANI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizacione jedinice"') and o.name = 'FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI')
alter table "Organizacione jedinice"
   drop constraint FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_ATRIBUT')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_ATRIBUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_PRIPADNO')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_PRIPADNO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_TABELA')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_TABELA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_KOJA SPRE_ŠKOLSKE')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_KOJA SPRE_ŠKOLSKE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_KOJA USTA_POSLOVNI')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_KOJA USTA_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_PODACI O _REGISTAR')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_PODACI O _REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_STECENA Z_KATALOG')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_STECENA Z_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Podnesak') and o.name = 'FK_PODNESAK_RELATIONS_ROCIŠTE')
alter table Podnesak
   drop constraint FK_PODNESAK_RELATIONS_ROCIŠTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Podnesak') and o.name = 'FK_PODNESAK_RELATIONS_STRANKA')
alter table Podnesak
   drop constraint FK_PODNESAK_RELATIONS_STRANKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Podnesak') and o.name = 'FK_PODNESAK_RELATIONS_TIP PODN')
alter table Podnesak
   drop constraint "FK_PODNESAK_RELATIONS_TIP PODN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_PRAVNI SL_POSLOVNI')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_PRAVNI SL_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_REGISTROV_DRAVA')
alter table "Poslovni sistem"
   drop constraint FK_POSLOVNI_REGISTROV_DRAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_SJEDIŠTE _NASELJEN')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_TIPIZACIJ_TIP POSL')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_TIPIZACIJ_TIP POSL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebne spreme"') and o.name = 'FK_POTREBNE_POTREBNE _ŠKOLSKE')
alter table "Potrebne spreme"
   drop constraint "FK_POTREBNE_POTREBNE _ŠKOLSKE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebne spreme"') and o.name = 'FK_POTREBNE_POTREBNE _KATALOG')
alter table "Potrebne spreme"
   drop constraint "FK_POTREBNE_POTREBNE _KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Povezana sa"') and o.name = 'FK_POVEZANA_POVEZANA _TABELA')
alter table "Povezana sa"
   drop constraint "FK_POVEZANA_POVEZANA _TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Povezana sa"') and o.name = 'FK_POVEZANA_POVEZANA _TABELA2')
alter table "Povezana sa"
   drop constraint "FK_POVEZANA_POVEZANA _TABELA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni nasljednik"') and o.name = 'FK_PRAVNI N_PRAVNI NA_DRAVA')
alter table "Pravni nasljednik"
   drop constraint "FK_PRAVNI N_PRAVNI NA_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni nasljednik"') and o.name = 'FK_PRAVNI N_PRAVNI NA_DRAVA2')
alter table "Pravni nasljednik"
   drop constraint "FK_PRAVNI N_PRAVNI NA_DRAVA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravno lice"') and o.name = 'FK_PRAVNO L_RELATIONS_NASELJEN')
alter table "Pravno lice"
   drop constraint "FK_PRAVNO L_RELATIONS_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravo na podsistem"') and o.name = 'FK_PRAVO NA_PRAVO NA _SISTEM I')
alter table "Pravo na podsistem"
   drop constraint "FK_PRAVO NA_PRAVO NA _SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravo na podsistem"') and o.name = 'FK_PRAVO NA_PRAVO NA _ROLA')
alter table "Pravo na podsistem"
   drop constraint "FK_PRAVO NA_PRAVO NA _ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predefinisane role radnih mjesta"') and o.name = 'FK_PREDEFIN_PREDEFINI_KATALOG')
alter table "Predefinisane role radnih mjesta"
   drop constraint FK_PREDEFIN_PREDEFINI_KATALOG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predefinisane role radnih mjesta"') and o.name = 'FK_PREDEFIN_PREDEFINI_ROLA')
alter table "Predefinisane role radnih mjesta"
   drop constraint FK_PREDEFIN_PREDEFINI_ROLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Predmet') and o.name = 'FK_PREDMET_PREDMET U_POSLOVNI')
alter table Predmet
   drop constraint "FK_PREDMET_PREDMET U_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Predmet') and o.name = 'FK_PREDMET_RELATIONS_VRSTA PR')
alter table Predmet
   drop constraint "FK_PREDMET_RELATIONS_VRSTA PR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripadnost roli"') and o.name = 'FK_PRIPADNO_KO JE U G_ROLA')
alter table "Pripadnost roli"
   drop constraint "FK_PRIPADNO_KO JE U G_ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripadnost roli"') and o.name = 'FK_PRIPADNO_SVRSTAN U_KORISNIC')
alter table "Pripadnost roli"
   drop constraint "FK_PRIPADNO_SVRSTAN U_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_KADROVI U_ORGANIZA')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_KADROVI U_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_KO JE RAS_KATALOG')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_KO JE RAS_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_RASPORED _REGISTAR')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_RASPORED _REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_SA VRSTOM_VRSTA RA')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_SA VRSTOM_VRSTA RA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_ADMINISTR_NASELJEN')
alter table Region
   drop constraint FK_REGION_ADMINISTR_NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_MATICNA D_DRAVA')
alter table Region
   drop constraint "FK_REGION_MATICNA D_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_TIPIZACIJ_TIP REGI')
alter table Region
   drop constraint "FK_REGION_TIPIZACIJ_TIP REGI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Registar gradana"') and o.name = 'FK_REGISTAR_RELATIONS_NASELJEN')
alter table "Registar gradana"
   drop constraint FK_REGISTAR_RELATIONS_NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Registar zaposlenih"') and o.name = 'FK_REGISTAR_ZAPOŠLJAV_POSLOVNI')
alter table "Registar zaposlenih"
   drop constraint FK_REGISTAR_ZAPOŠLJAV_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_12') and o.name = 'FK_RELATION_RELATIONS_PREDMET3')
alter table Relationship_12
   drop constraint FK_RELATION_RELATIONS_PREDMET3
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_12') and o.name = 'FK_RELATION_RELATIONS_PREDMET2')
alter table Relationship_12
   drop constraint FK_RELATION_RELATIONS_PREDMET2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_13') and o.name = 'FK_RELATION_RELATIONS_RASPORED')
alter table Relationship_13
   drop constraint FK_RELATION_RELATIONS_RASPORED
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_13') and o.name = 'FK_RELATION_RELATIONS_PREDMET')
alter table Relationship_13
   drop constraint FK_RELATION_RELATIONS_PREDMET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_24') and o.name = 'FK_RELATION_RELATIONS_STATUS D')
alter table Relationship_24
   drop constraint "FK_RELATION_RELATIONS_STATUS D"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_24') and o.name = 'FK_RELATION_RELATIONS_DOKAZ')
alter table Relationship_24
   drop constraint FK_RELATION_RELATIONS_DOKAZ
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_67') and o.name = 'FK_RELATION_RELATIONS_CLANOVI')
alter table Relationship_67
   drop constraint FK_RELATION_RELATIONS_CLANOVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Relationship_67') and o.name = 'FK_RELATION_RELATIONS_SASTANAK')
alter table Relationship_67
   drop constraint FK_RELATION_RELATIONS_SASTANAK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija atributa"') and o.name = 'FK_RESTRIKC_RESTRIKCI_ROLA2')
alter table "Restrikcija atributa"
   drop constraint FK_RESTRIKC_RESTRIKCI_ROLA2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija atributa"') and o.name = 'FK_RESTRIKC_RESTRIKCI_ATRIBUT')
alter table "Restrikcija atributa"
   drop constraint FK_RESTRIKC_RESTRIKCI_ATRIBUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija nad tabelama"') and o.name = 'FK_RESTRIKC_RESTRIKCI_ROLA')
alter table "Restrikcija nad tabelama"
   drop constraint FK_RESTRIKC_RESTRIKCI_ROLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija nad tabelama"') and o.name = 'FK_RESTRIKC_RESTRIKCI_TABELA')
alter table "Restrikcija nad tabelama"
   drop constraint FK_RESTRIKC_RESTRIKCI_TABELA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rola') and o.name = 'FK_ROLA_RELATIONS_POSLOVNI')
alter table Rola
   drop constraint FK_ROLA_RELATIONS_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rocište') and o.name = 'FK_ROCIŠTE_ROCIŠTE N_FAZE NA')
alter table Rocište
   drop constraint "FK_ROCIŠTE_ROCIŠTE N_FAZE NA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sa školskim spremama"') and o.name = 'FK_SA ŠKOLS_SA ŠKOLSK_ŠKOLSKE')
alter table "Sa školskim spremama"
   drop constraint "FK_SA ŠKOLS_SA ŠKOLSK_ŠKOLSKE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sa školskim spremama"') and o.name = 'FK_SA ŠKOLS_SA ŠKOLSK_KATALOG')
alter table "Sa školskim spremama"
   drop constraint "FK_SA ŠKOLS_SA ŠKOLSK_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri atribute"') and o.name = 'FK_SADRI A_SADRI AT_ATRIBUT')
alter table "Sadri atribute"
   drop constraint "FK_SADRI A_SADRI AT_ATRIBUT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri atribute"') and o.name = 'FK_SADRI A_SADRI AT_TABELA')
alter table "Sadri atribute"
   drop constraint "FK_SADRI A_SADRI AT_TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri podsisteme"') and o.name = 'FK_SADRI P_SADRI PO_SISTEM I')
alter table "Sadri podsisteme"
   drop constraint "FK_SADRI P_SADRI PO_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri podsisteme"') and o.name = 'FK_SADRI P_SADRI PO_SISTEM I2')
alter table "Sadri podsisteme"
   drop constraint "FK_SADRI P_SADRI PO_SISTEM I2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri tabele"') and o.name = 'FK_SADRI T_SADRI TA_TABELA')
alter table "Sadri tabele"
   drop constraint "FK_SADRI T_SADRI TA_TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri tabele"') and o.name = 'FK_SADRI T_SADRI TA_SISTEM I')
alter table "Sadri tabele"
   drop constraint "FK_SADRI T_SADRI TA_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sankcija') and o.name = 'FK_SANKCIJA_RELATIONS_ROCIŠTE')
alter table Sankcija
   drop constraint FK_SANKCIJA_RELATIONS_ROCIŠTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sankcija') and o.name = 'FK_SANKCIJA_RELATIONS_STRANKA')
alter table Sankcija
   drop constraint FK_SANKCIJA_RELATIONS_STRANKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sankcija') and o.name = 'FK_SANKCIJA_RELATIONS_VRSTA SA')
alter table Sankcija
   drop constraint "FK_SANKCIJA_RELATIONS_VRSTA SA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak kolegijuma"') and o.name = 'FK_SASTANAK_RELATIONS_REGISTAR')
alter table "Sastanak kolegijuma"
   drop constraint FK_SASTANAK_RELATIONS_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak kolegijuma"') and o.name = 'FK_SASTANAK_RELATIONS_TIP KOLE')
alter table "Sastanak kolegijuma"
   drop constraint "FK_SASTANAK_RELATIONS_TIP KOLE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak kolegijuma"') and o.name = 'FK_SASTANAK_RELATIONS_POSLOVNI')
alter table "Sastanak kolegijuma"
   drop constraint FK_SASTANAK_RELATIONS_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav drave"') and o.name = 'FK_SASTAV D_DRAVA CL_DRAVA')
alter table "Sastav drave"
   drop constraint "FK_SASTAV D_DRAVA CL_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav drave"') and o.name = 'FK_SASTAV D_SLOENA D_DRAVA')
alter table "Sastav drave"
   drop constraint "FK_SASTAV D_SLOENA D_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav regiona"') and o.name = 'FK_SASTAV R_SASTAV RE_REGION')
alter table "Sastav regiona"
   drop constraint "FK_SASTAV R_SASTAV RE_REGION"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav regiona"') and o.name = 'FK_SASTAV R_SASTAV RE_REGION2')
alter table "Sastav regiona"
   drop constraint "FK_SASTAV R_SASTAV RE_REGION2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sistem ili podsistem"') and o.name = 'FK_SISTEM I_RESURSI S_POSLOVNI')
alter table "Sistem ili podsistem"
   drop constraint "FK_SISTEM I_RESURSI S_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sistematizacija') and o.name = 'FK_SISTEMAT_SISTEMATI_POSLOVNI')
alter table Sistematizacija
   drop constraint FK_SISTEMAT_SISTEMATI_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _MATICNI P_POSLOVNI')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _MATICNI P_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _SISTEM U _POSLOVNI')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _SISTEM U _POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _TIPIZACIJ_TIP SLO')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _TIPIZACIJ_TIP SLO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Status na predmetu"') and o.name = 'FK_STATUS N_STATUS NA_PREDMET')
alter table "Status na predmetu"
   drop constraint "FK_STATUS N_STATUS NA_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Status na predmetu"') and o.name = 'FK_STATUS N_STATUS NA_STATUS P')
alter table "Status na predmetu"
   drop constraint "FK_STATUS N_STATUS NA_STATUS P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stranka na predmetu"') and o.name = 'FK_STRANKA _RELATIONS_PREDMET')
alter table "Stranka na predmetu"
   drop constraint "FK_STRANKA _RELATIONS_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stranka na predmetu"') and o.name = 'FK_STRANKA _RELATIONS_ULOGA NA')
alter table "Stranka na predmetu"
   drop constraint "FK_STRANKA _RELATIONS_ULOGA NA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stranka na predmetu"') and o.name = 'FK_STRANKA _RELATIONS_REGISTAR')
alter table "Stranka na predmetu"
   drop constraint "FK_STRANKA _RELATIONS_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stranka na predmetu"') and o.name = 'FK_STRANKA _RELATIONS_PRAVNO L')
alter table "Stranka na predmetu"
   drop constraint "FK_STRANKA _RELATIONS_PRAVNO L"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Struktura atributa"') and o.name = 'FK_STRUKTUR_STRUKTURA_ATRIBUT')
alter table "Struktura atributa"
   drop constraint FK_STRUKTUR_STRUKTURA_ATRIBUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Struktura atributa"') and o.name = 'FK_STRUKTUR_STRUKTURA_ATRIBUT2')
alter table "Struktura atributa"
   drop constraint FK_STRUKTUR_STRUKTURA_ATRIBUT2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tabela') and o.name = 'FK_TABELA_RESURSI S_POSLOVNI')
alter table Tabela
   drop constraint "FK_TABELA_RESURSI S_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnik u izvjestaju"') and o.name = 'FK_UCESNIK _RELATIONS_RASPORED')
alter table "Ucesnik u izvjestaju"
   drop constraint "FK_UCESNIK _RELATIONS_RASPORED"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnik u izvjestaju"') and o.name = 'FK_UCESNIK _RELATIONS_IZVJEŠTA')
alter table "Ucesnik u izvjestaju"
   drop constraint "FK_UCESNIK _RELATIONS_IZVJEŠTA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnik u izvjestaju"') and o.name = 'FK_UCESNIK _RELATIONS_ULOGA U')
alter table "Ucesnik u izvjestaju"
   drop constraint "FK_UCESNIK _RELATIONS_ULOGA U"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Školske spreme"') and o.name = 'FK_ŠKOLSKE _KOJE ŠKOL_NIVO OBR')
alter table "Školske spreme"
   drop constraint "FK_ŠKOLSKE _KOJE ŠKOL_NIVO OBR"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'KOD_DRUGOG_PRAVNOG_LICA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci".KOD_DRUGOG_PRAVNOG_LICA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'KONTANT_PODACI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci".KONTANT_PODACI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'ADRESA_MJESTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci".ADRESA_MJESTO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Adresni podaci"')
            and   type = 'U')
   drop table "Adresni podaci"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Arhivirani predmeti"')
            and   name  = 'RELATIONSHIP_40_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Arhivirani predmeti".RELATIONSHIP_40_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Arhivirani predmeti"')
            and   name  = 'RELATIONSHIP_38_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Arhivirani predmeti".RELATIONSHIP_38_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Arhivirani predmeti"')
            and   type = 'U')
   drop table "Arhivirani predmeti"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Arhivska grada"')
            and   type = 'U')
   drop table "Arhivska grada"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Atribut')
            and   name  = 'RESURSI_SISTEMA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Atribut.RESURSI_SISTEMA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Atribut')
            and   type = 'U')
   drop table Atribut
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Clanovi kolegijuma"')
            and   name  = 'RELATIONSHIP_66_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Clanovi kolegijuma".RELATIONSHIP_66_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Clanovi kolegijuma"')
            and   name  = 'RELATIONSHIP_65_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Clanovi kolegijuma".RELATIONSHIP_65_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Clanovi kolegijuma"')
            and   type = 'U')
   drop table "Clanovi kolegijuma"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokaz')
            and   name  = 'RELATIONSHIP_45_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokaz.RELATIONSHIP_45_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokaz')
            and   name  = 'RELATIONSHIP_44_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokaz.RELATIONSHIP_44_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokaz')
            and   name  = 'RELATIONSHIP_43_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokaz.RELATIONSHIP_43_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokaz')
            and   name  = 'RELATIONSHIP_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokaz.RELATIONSHIP_21_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dokaz')
            and   type = 'U')
   drop table Dokaz
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Drava')
            and   name  = 'TEKUCE_URE_ENJE_FK'
            and   indid > 0
            and   indid < 255)
   drop index Drava.TEKUCE_URE_ENJE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Drava')
            and   name  = 'AKTUELNI_GLAVNI_GRAD_FK'
            and   indid > 0
            and   indid < 255)
   drop index Drava.AKTUELNI_GLAVNI_GRAD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Drava')
            and   type = 'U')
   drop table Drava
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dravljanstva')
            and   name  = 'DRZAVLJANSTVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dravljanstva.DRZAVLJANSTVA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dravljanstva')
            and   name  = 'DRZAVLJANSTVA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dravljanstva.DRZAVLJANSTVA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dravljanstva')
            and   type = 'U')
   drop table Dravljanstva
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dravno uredenje"')
            and   type = 'U')
   drop table "Dravno uredenje"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Faza predmeta"')
            and   name  = 'VRSTA_PRDMETA_IMA_SVOJE_FAZE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Faza predmeta".VRSTA_PRDMETA_IMA_SVOJE_FAZE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Faza predmeta"')
            and   type = 'U')
   drop table "Faza predmeta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Faze na predmetu"')
            and   name  = 'PREDMETI_PO_FAZAMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Faze na predmetu".PREDMETI_PO_FAZAMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Faze na predmetu"')
            and   name  = 'FAZA_NA_PREDMETU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Faze na predmetu".FAZA_NA_PREDMETU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Faze na predmetu"')
            and   type = 'U')
   drop table "Faze na predmetu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Glavni grad"')
            and   name  = 'GLAVNI_GRAD_U_DRZAVI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Glavni grad".GLAVNI_GRAD_U_DRZAVI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Glavni grad"')
            and   name  = 'DRZAVA_IMA_GLAVNI_GRAD_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Glavni grad".DRZAVA_IMA_GLAVNI_GRAD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Glavni grad"')
            and   type = 'U')
   drop table "Glavni grad"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istoija uredenja"')
            and   name  = 'KROZ_ISTORIJU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istoija uredenja".KROZ_ISTORIJU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istoija uredenja"')
            and   name  = 'URE_ENJE_DRZAVE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istoija uredenja".URE_ENJE_DRZAVE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Istoija uredenja"')
            and   type = 'U')
   drop table "Istoija uredenja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izabrani tipovi organizacione jedinice"')
            and   name  = 'TIPIZACIJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izabrani tipovi organizacione jedinice".TIPIZACIJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izabrani tipovi organizacione jedinice"')
            and   name  = 'TIPIZACIJA_U_POSLOVNOM_SISTEMU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izabrani tipovi organizacione jedinice".TIPIZACIJA_U_POSLOVNOM_SISTEMU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Izabrani tipovi organizacione jedinice"')
            and   type = 'U')
   drop table "Izabrani tipovi organizacione jedinice"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izdavanje kopije grade"')
            and   name  = 'RELATIONSHIP_29_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izdavanje kopije grade".RELATIONSHIP_29_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izdavanje kopije grade"')
            and   name  = 'RELATIONSHIP_28_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izdavanje kopije grade".RELATIONSHIP_28_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izdavanje kopije grade"')
            and   name  = 'RELATIONSHIP_26_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izdavanje kopije grade".RELATIONSHIP_26_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Izdavanje kopije grade"')
            and   type = 'U')
   drop table "Izdavanje kopije grade"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvjestaj')
            and   name  = 'RELATIONSHIP_50_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvjestaj.RELATIONSHIP_50_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvjestaj')
            and   name  = 'RELATIONSHIP_46_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvjestaj.RELATIONSHIP_46_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Izvjestaj')
            and   type = 'U')
   drop table Izvjestaj
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izvještaj na predmetu"')
            and   name  = 'RELATIONSHIP_51_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izvještaj na predmetu".RELATIONSHIP_51_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izvještaj na predmetu"')
            and   name  = 'RELATIONSHIP_34_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izvještaj na predmetu".RELATIONSHIP_34_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Izvještaj na predmetu"')
            and   type = 'U')
   drop table "Izvještaj na predmetu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog radnih mjesta"')
            and   name  = 'ZAPOSLJAVA_NA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog radnih mjesta".ZAPOSLJAVA_NA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog radnih mjesta"')
            and   type = 'U')
   drop table "Katalog radnih mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog radnih mjesta u organizacionoj jedinici"')
            and   name  = 'RADNO_MJESTO_U_ORGANIZACIONOJ_JEDINICI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog radnih mjesta u organizacionoj jedinici".RADNO_MJESTO_U_ORGANIZACIONOJ_JEDINICI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog radnih mjesta u organizacionoj jedinici"')
            and   name  = 'RADNA_MJESTA_U_ORGANIZACIONOJ_JEDINICI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog radnih mjesta u organizacionoj jedinici".RADNA_MJESTA_U_ORGANIZACIONOJ_JEDINICI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog radnih mjesta u organizacionoj jedinici"')
            and   type = 'U')
   drop table "Katalog radnih mjesta u organizacionoj jedinici"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog zanimanja"')
            and   name  = 'REGISTROVANO_ZANIMANJE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog zanimanja".REGISTROVANO_ZANIMANJE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog zanimanja"')
            and   type = 'U')
   drop table "Katalog zanimanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog zvanja"')
            and   name  = 'KATALOG_ZVANJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog zvanja".KATALOG_ZVANJA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog zvanja"')
            and   type = 'U')
   drop table "Katalog zvanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Kazna')
            and   name  = 'VRSTA_KAZNE__GLAVNA_ILI_SPOREDNA__FK'
            and   indid > 0
            and   indid < 255)
   drop index Kazna.VRSTA_KAZNE__GLAVNA_ILI_SPOREDNA__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Kazna')
            and   type = 'U')
   drop table Kazna
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Kazne u predmetu"')
            and   name  = 'IZRECENE_KAZNE_NA_PREDMETU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Kazne u predmetu".IZRECENE_KAZNE_NA_PREDMETU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Kazne u predmetu"')
            and   name  = 'IZRECENA_KAZNA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Kazne u predmetu".IZRECENA_KAZNA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Kazne u predmetu"')
            and   type = 'U')
   drop table "Kazne u predmetu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Korisnicki nalog"')
            and   name  = 'REGISTROVANI_KORISNICI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Korisnicki nalog".REGISTROVANI_KORISNICI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Korisnicki nalog"')
            and   name  = 'NALOG_ZAPOSLENOG_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Korisnicki nalog".NALOG_ZAPOSLENOG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Korisnicki nalog"')
            and   type = 'U')
   drop table "Korisnicki nalog"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Kretanje dokaza"')
            and   name  = 'RELATIONSHIP_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Kretanje dokaza".RELATIONSHIP_23_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Kretanje dokaza"')
            and   name  = 'RELATIONSHIP_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Kretanje dokaza".RELATIONSHIP_22_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Kretanje dokaza"')
            and   type = 'U')
   drop table "Kretanje dokaza"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Lista zvanja"')
            and   name  = 'LISTA_ZVANJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Lista zvanja".LISTA_ZVANJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Lista zvanja"')
            and   name  = 'LISTA_ZVANJA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Lista zvanja".LISTA_ZVANJA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Lista zvanja"')
            and   type = 'U')
   drop table "Lista zvanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi akcija"')
            and   name  = 'LOGOVI_AKCIJA_U_POSLOVNOM_SISTEMU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi akcija".LOGOVI_AKCIJA_U_POSLOVNOM_SISTEMU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi akcija"')
            and   name  = 'TABELE_NAD_KOJIMA_SE_VRSI_AKCIJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi akcija".TABELE_NAD_KOJIMA_SE_VRSI_AKCIJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi akcija"')
            and   name  = 'KORISNICKI_NALOG_KOJI_VRSI_AKCIJE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi akcija".KORISNICKI_NALOG_KOJI_VRSI_AKCIJE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Logovi akcija"')
            and   type = 'U')
   drop table "Logovi akcija"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi izmjena"')
            and   name  = 'LOGOVI_IZMJENA_U_PRACOSUDNOM_SISTEMU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi izmjena".LOGOVI_IZMJENA_U_PRACOSUDNOM_SISTEMU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi izmjena"')
            and   name  = 'KOEISNICKI_NALOG_KOJI_VRSI_IZMJENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi izmjena".KOEISNICKI_NALOG_KOJI_VRSI_IZMJENE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi izmjena"')
            and   name  = 'TABELE_NAD_KOJIMA_SE_VRSI_IZMJENA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi izmjena".TABELE_NAD_KOJIMA_SE_VRSI_IZMJENA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Logovi izmjena"')
            and   type = 'U')
   drop table "Logovi izmjena"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi pristupa"')
            and   name  = 'LOGOVI_PRISTUPA_U_POSLOVNOM_SISTEMU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi pristupa".LOGOVI_PRISTUPA_U_POSLOVNOM_SISTEMU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi pristupa"')
            and   name  = 'KORISNICKI_NALOG_KOJI_PRISTUPA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi pristupa".KORISNICKI_NALOG_KOJI_PRISTUPA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi pristupa"')
            and   name  = 'TABELE_KOJIMA_SE_PRISTUPA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi pristupa".TABELE_KOJIMA_SE_PRISTUPA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Logovi pristupa"')
            and   type = 'U')
   drop table "Logovi pristupa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesna zajednica"')
            and   name  = 'MJESNA_KANCELARIJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesna zajednica".MJESNA_KANCELARIJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesna zajednica"')
            and   name  = 'IMA_MJESNU_ZAJEDNICU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesna zajednica".IMA_MJESNU_ZAJEDNICU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Mjesna zajednica"')
            and   type = 'U')
   drop table "Mjesna zajednica"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesto pokrivanja naselja"')
            and   name  = 'MJESTO_POKRIVANJA_NASELJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesto pokrivanja naselja".MJESTO_POKRIVANJA_NASELJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesto pokrivanja naselja"')
            and   name  = 'MJESTO_POKRIVANJA_NASELJA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesto pokrivanja naselja".MJESTO_POKRIVANJA_NASELJA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Mjesto pokrivanja naselja"')
            and   type = 'U')
   drop table "Mjesto pokrivanja naselja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Naredba')
            and   name  = 'NAREDBA_NA_PREDMETU_FK'
            and   indid > 0
            and   indid < 255)
   drop index Naredba.NAREDBA_NA_PREDMETU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Naredba')
            and   name  = 'RELATIONSHIP_70_FK'
            and   indid > 0
            and   indid < 255)
   drop index Naredba.RELATIONSHIP_70_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Naredba')
            and   name  = 'RELATIONSHIP_69_FK'
            and   indid > 0
            and   indid < 255)
   drop index Naredba.RELATIONSHIP_69_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Naredba')
            and   name  = 'RELATIONSHIP_68_FK'
            and   indid > 0
            and   indid < 255)
   drop index Naredba.RELATIONSHIP_68_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Naredba')
            and   type = 'U')
   drop table Naredba
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Naseljena mjesta"')
            and   name  = 'SADRZI_NASELJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Naseljena mjesta".SADRZI_NASELJA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Naseljena mjesta"')
            and   type = 'U')
   drop table "Naseljena mjesta"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Nivo obrazovanja"')
            and   type = 'U')
   drop table "Nivo obrazovanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obhvata naselja"')
            and   name  = 'OBHVATA_NASELJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obhvata naselja".OBHVATA_NASELJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obhvata naselja"')
            and   name  = 'OBHVATA_NASELJA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obhvata naselja".OBHVATA_NASELJA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obhvata naselja"')
            and   type = 'U')
   drop table "Obhvata naselja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obrazuju za"')
            and   name  = 'OBRAZUJU_ZA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obrazuju za".OBRAZUJU_ZA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obrazuju za"')
            and   name  = 'OBRAZUJU_ZA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obrazuju za".OBRAZUJU_ZA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obrazuju za"')
            and   type = 'U')
   drop table "Obrazuju za"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata opštine"')
            and   name  = 'OBUHVATA_OPSTINE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata opštine".OBUHVATA_OPSTINE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata opštine"')
            and   name  = 'OBUHVATA_OPSTINE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata opštine".OBUHVATA_OPSTINE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obuhvata opštine"')
            and   type = 'U')
   drop table "Obuhvata opštine"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odnos radnih mjesta"')
            and   name  = 'NADREDJENI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odnos radnih mjesta".NADREDJENI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odnos radnih mjesta"')
            and   name  = 'PODREDJENI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odnos radnih mjesta".PODREDJENI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odnos radnih mjesta"')
            and   name  = 'ODNOS_RADNIH_MJESTA_ZA_SISTEMATIZACIJU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odnos radnih mjesta".ODNOS_RADNIH_MJESTA_ZA_SISTEMATIZACIJU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Odnos radnih mjesta"')
            and   type = 'U')
   drop table "Odnos radnih mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Opština')
            and   name  = 'SJEDISTE_OPSTINE_FK'
            and   indid > 0
            and   indid < 255)
   drop index Opština.SJEDISTE_OPSTINE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Opština')
            and   name  = 'LOKALNA_SAMOUPRAVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Opština.LOKALNA_SAMOUPRAVA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Opština')
            and   type = 'U')
   drop table Opština
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizacione jedinice"')
            and   name  = 'UNUTRASNJA_ORGANIZACIJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizacione jedinice".UNUTRASNJA_ORGANIZACIJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizacione jedinice"')
            and   name  = 'TIPIZACIJA_ORGANIZACINE_JEDINICE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizacione jedinice".TIPIZACIJA_ORGANIZACINE_JEDINICE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizacione jedinice"')
            and   name  = 'SJEDISTE_ORGANIZACIONE_JEDINICE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizacione jedinice".SJEDISTE_ORGANIZACIONE_JEDINICE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Organizacione jedinice"')
            and   type = 'U')
   drop table "Organizacione jedinice"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'PERSONALNA_RESTRIKCIJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija".PERSONALNA_RESTRIKCIJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'PERSONALNA_RESTRIKCIJA3_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija".PERSONALNA_RESTRIKCIJA3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'PERSONALNA_RESTRIKCIJA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija".PERSONALNA_RESTRIKCIJA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Personalna restrikcija"')
            and   type = 'U')
   drop table "Personalna restrikcija"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'PODACI_O_OBRAZOVANJU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju".PODACI_O_OBRAZOVANJU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'STECENA_ZVANJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju".STECENA_ZVANJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'KOJA_SPREMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju".KOJA_SPREMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'KOJA_USTANOVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju".KOJA_USTANOVA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Podaci o obrazovanju"')
            and   type = 'U')
   drop table "Podaci o obrazovanju"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Podnesak')
            and   name  = 'RELATIONSHIP_33_FK'
            and   indid > 0
            and   indid < 255)
   drop index Podnesak.RELATIONSHIP_33_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Podnesak')
            and   name  = 'RELATIONSHIP_32_FK'
            and   indid > 0
            and   indid < 255)
   drop index Podnesak.RELATIONSHIP_32_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Podnesak')
            and   name  = 'RELATIONSHIP_31_FK'
            and   indid > 0
            and   indid < 255)
   drop index Podnesak.RELATIONSHIP_31_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Podnesak')
            and   type = 'U')
   drop table Podnesak
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'TIPIZACIJA_POSLOVNOG_SISTEMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem".TIPIZACIJA_POSLOVNOG_SISTEMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'PRAVNI_SLJEDBENIK_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem".PRAVNI_SLJEDBENIK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'SJEDISTE_POSLOVNOG_SISTEMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem".SJEDISTE_POSLOVNOG_SISTEMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'REGISTROVANI_POSLOVNI_SISTEMI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem".REGISTROVANI_POSLOVNI_SISTEMI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Poslovni sistem"')
            and   type = 'U')
   drop table "Poslovni sistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebne spreme"')
            and   name  = 'POTREBNE_SPREME_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebne spreme".POTREBNE_SPREME_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebne spreme"')
            and   name  = 'POTREBNE_SPREME2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebne spreme".POTREBNE_SPREME2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Potrebne spreme"')
            and   type = 'U')
   drop table "Potrebne spreme"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Povezana sa"')
            and   name  = 'POVEZANA_SA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Povezana sa".POVEZANA_SA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Povezana sa"')
            and   name  = 'POVEZANA_SA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Povezana sa".POVEZANA_SA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Povezana sa"')
            and   type = 'U')
   drop table "Povezana sa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pošta')
            and   type = 'U')
   drop table Pošta
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni nasljednik"')
            and   name  = 'PRAVNI_NASLJEDNIK_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni nasljednik".PRAVNI_NASLJEDNIK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni nasljednik"')
            and   name  = 'PRAVNI_NASLJEDNIK2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni nasljednik".PRAVNI_NASLJEDNIK2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravni nasljednik"')
            and   type = 'U')
   drop table "Pravni nasljednik"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravno lice"')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravno lice".RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravno lice"')
            and   type = 'U')
   drop table "Pravno lice"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravo na podsistem"')
            and   name  = 'PRAVO_NA_PODSISTEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravo na podsistem".PRAVO_NA_PODSISTEM_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravo na podsistem"')
            and   name  = 'PRAVO_NA_PODSISTEM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravo na podsistem".PRAVO_NA_PODSISTEM2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravo na podsistem"')
            and   type = 'U')
   drop table "Pravo na podsistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predefinisane role radnih mjesta"')
            and   name  = 'PREDEFINISANE_ROLE_RADNIH_MJESTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predefinisane role radnih mjesta".PREDEFINISANE_ROLE_RADNIH_MJESTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predefinisane role radnih mjesta"')
            and   name  = 'PREDEFINISANE_ROLE_RADNIH_MJESTA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predefinisane role radnih mjesta".PREDEFINISANE_ROLE_RADNIH_MJESTA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Predefinisane role radnih mjesta"')
            and   type = 'U')
   drop table "Predefinisane role radnih mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Predmet')
            and   name  = 'RELATIONSHIP_39_FK'
            and   indid > 0
            and   indid < 255)
   drop index Predmet.RELATIONSHIP_39_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Predmet')
            and   name  = 'PREDMET_U_OKVIRU_SUDA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Predmet.PREDMET_U_OKVIRU_SUDA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Predmet')
            and   type = 'U')
   drop table Predmet
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripadnost roli"')
            and   name  = 'SVRSTAN_U_GRUPU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripadnost roli".SVRSTAN_U_GRUPU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripadnost roli"')
            and   name  = 'KO_JE_U_GRUPI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripadnost roli".KO_JE_U_GRUPI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pripadnost roli"')
            and   type = 'U')
   drop table "Pripadnost roli"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'SA_VRSTOM_ANGAZOVANJA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta".SA_VRSTOM_ANGAZOVANJA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'KADROVI_U_JEDINICI_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta".KADROVI_U_JEDINICI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'KO_JE_RASPORE_EN_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta".KO_JE_RASPORE_EN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'RASPORED_ZAPOSLENOG_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta".RASPORED_ZAPOSLENOG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Raspored na radna mjesta"')
            and   type = 'U')
   drop table "Raspored na radna mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'TIPIZACIJA_REGIONA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region.TIPIZACIJA_REGIONA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'ADMINISTRATIVNO_SREDISTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region.ADMINISTRATIVNO_SREDISTE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'MATICNA_DRZAVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region.MATICNA_DRZAVA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Region')
            and   type = 'U')
   drop table Region
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Registar gradana"')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Registar gradana".RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Registar gradana"')
            and   type = 'U')
   drop table "Registar gradana"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Registar zaposlenih"')
            and   name  = 'ZAPOSLJAVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Registar zaposlenih".ZAPOSLJAVA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Registar zaposlenih"')
            and   type = 'U')
   drop table "Registar zaposlenih"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_12')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_12.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_12')
            and   name  = 'RELATIONSHIP_25_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_12.RELATIONSHIP_25_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Relationship_12')
            and   type = 'U')
   drop table Relationship_12
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_13')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_13.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_13')
            and   name  = 'RELATIONSHIP_27_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_13.RELATIONSHIP_27_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Relationship_13')
            and   type = 'U')
   drop table Relationship_13
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_24')
            and   name  = 'RELATIONSHIP_24_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_24.RELATIONSHIP_24_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_24')
            and   name  = 'RELATIONSHIP_30_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_24.RELATIONSHIP_30_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Relationship_24')
            and   type = 'U')
   drop table Relationship_24
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_67')
            and   name  = 'RELATIONSHIP_67_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_67.RELATIONSHIP_67_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_67')
            and   name  = 'RELATIONSHIP_71_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_67.RELATIONSHIP_71_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Relationship_67')
            and   type = 'U')
   drop table Relationship_67
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija atributa"')
            and   name  = 'RESTRIKCIJA_ATRIBUTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija atributa".RESTRIKCIJA_ATRIBUTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija atributa"')
            and   name  = 'RESTRIKCIJA_ATRIBUTA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija atributa".RESTRIKCIJA_ATRIBUTA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Restrikcija atributa"')
            and   type = 'U')
   drop table "Restrikcija atributa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija nad tabelama"')
            and   name  = 'RESTRIKCIJA_NAD_TABELAMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija nad tabelama".RESTRIKCIJA_NAD_TABELAMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija nad tabelama"')
            and   name  = 'RESTRIKCIJA_NAD_TABELAMA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija nad tabelama".RESTRIKCIJA_NAD_TABELAMA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Restrikcija nad tabelama"')
            and   type = 'U')
   drop table "Restrikcija nad tabelama"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rola')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rola.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rola')
            and   type = 'U')
   drop table Rola
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rocište')
            and   name  = 'ROCISTE_NA_PREDMETU_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rocište.ROCISTE_NA_PREDMETU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rocište')
            and   type = 'U')
   drop table Rocište
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sa školskim spremama"')
            and   name  = 'SA_SKOLSKIM_SPREMAMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sa školskim spremama".SA_SKOLSKIM_SPREMAMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sa školskim spremama"')
            and   name  = 'SA_SKOLSKIM_SPREMAMA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sa školskim spremama".SA_SKOLSKIM_SPREMAMA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sa školskim spremama"')
            and   type = 'U')
   drop table "Sa školskim spremama"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri atribute"')
            and   name  = 'SADRZI_ATRIBUTE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri atribute".SADRZI_ATRIBUTE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri atribute"')
            and   name  = 'SADRZI_ATRIBUTE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri atribute".SADRZI_ATRIBUTE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri atribute"')
            and   type = 'U')
   drop table "Sadri atribute"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri podsisteme"')
            and   name  = 'SADRZI_PODSISTEME_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri podsisteme".SADRZI_PODSISTEME_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri podsisteme"')
            and   name  = 'SADRZI_PODSISTEME2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri podsisteme".SADRZI_PODSISTEME2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri podsisteme"')
            and   type = 'U')
   drop table "Sadri podsisteme"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri tabele"')
            and   name  = 'SADRZI_TABELE_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri tabele".SADRZI_TABELE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri tabele"')
            and   name  = 'SADRZI_TABELE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri tabele".SADRZI_TABELE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri tabele"')
            and   type = 'U')
   drop table "Sadri tabele"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sankcija')
            and   name  = 'RELATIONSHIP_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sankcija.RELATIONSHIP_20_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sankcija')
            and   name  = 'RELATIONSHIP_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sankcija.RELATIONSHIP_19_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sankcija')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sankcija.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sankcija')
            and   type = 'U')
   drop table Sankcija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak kolegijuma"')
            and   name  = 'RELATIONSHIP_64_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak kolegijuma".RELATIONSHIP_64_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak kolegijuma"')
            and   name  = 'RELATIONSHIP_63_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak kolegijuma".RELATIONSHIP_63_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak kolegijuma"')
            and   name  = 'RELATIONSHIP_62_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak kolegijuma".RELATIONSHIP_62_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastanak kolegijuma"')
            and   type = 'U')
   drop table "Sastanak kolegijuma"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav drave"')
            and   name  = 'DRZAVA_CLANICA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav drave".DRZAVA_CLANICA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav drave"')
            and   name  = 'SLOZENA_DRZAVA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav drave".SLOZENA_DRZAVA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastav drave"')
            and   type = 'U')
   drop table "Sastav drave"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav regiona"')
            and   name  = 'SASTAV_REGIONA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav regiona".SASTAV_REGIONA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav regiona"')
            and   name  = 'SASTAV_REGIONA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav regiona".SASTAV_REGIONA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastav regiona"')
            and   type = 'U')
   drop table "Sastav regiona"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sistem ili podsistem"')
            and   name  = 'RESURSI_SISTEMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sistem ili podsistem".RESURSI_SISTEMA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sistem ili podsistem"')
            and   type = 'U')
   drop table "Sistem ili podsistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sistematizacija')
            and   name  = 'SISTEMATIZACIJA_POSLOVNIH_JEDINICA_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sistematizacija.SISTEMATIZACIJA_POSLOVNIH_JEDINICA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sistematizacija')
            and   type = 'U')
   drop table Sistematizacija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'TIPIZACIJA_SLOZENOG_SISTEMA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem".TIPIZACIJA_SLOZENOG_SISTEMA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'SISTEM_U_SASTAVU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem".SISTEM_U_SASTAVU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'MATICNI_POSLOVNI_SISTEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem".MATICNI_POSLOVNI_SISTEM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sloeni poslovni sistem"')
            and   type = 'U')
   drop table "Sloeni poslovni sistem"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Status dokaza"')
            and   type = 'U')
   drop table "Status dokaza"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Status na predmetu"')
            and   name  = 'STATUS_NA_PREDMETU_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Status na predmetu".STATUS_NA_PREDMETU_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Status na predmetu"')
            and   name  = 'STATUS_NA_PREDMETU2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Status na predmetu".STATUS_NA_PREDMETU2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Status na predmetu"')
            and   type = 'U')
   drop table "Status na predmetu"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Status predmeta"')
            and   type = 'U')
   drop table "Status predmeta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stranka na predmetu"')
            and   name  = 'RELATIONSHIP_42_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stranka na predmetu".RELATIONSHIP_42_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stranka na predmetu"')
            and   name  = 'RELATIONSHIP_41_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stranka na predmetu".RELATIONSHIP_41_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stranka na predmetu"')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stranka na predmetu".RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stranka na predmetu"')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stranka na predmetu".RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Stranka na predmetu"')
            and   type = 'U')
   drop table "Stranka na predmetu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Struktura atributa"')
            and   name  = 'STRUKTURA_ATRIBUTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Struktura atributa".STRUKTURA_ATRIBUTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Struktura atributa"')
            and   name  = 'STRUKTURA_ATRIBUTA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Struktura atributa".STRUKTURA_ATRIBUTA2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Struktura atributa"')
            and   type = 'U')
   drop table "Struktura atributa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Svrha izdavanja arhivske grade"')
            and   type = 'U')
   drop table "Svrha izdavanja arhivske grade"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tabela')
            and   name  = 'RESURSI_SISTEMA3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tabela.RESURSI_SISTEMA3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tabela')
            and   type = 'U')
   drop table Tabela
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tabele')
            and   type = 'U')
   drop table Tabele
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip kolegijuma"')
            and   type = 'U')
   drop table "Tip kolegijuma"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip naredbe"')
            and   type = 'U')
   drop table "Tip naredbe"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip organizacione jedinice"')
            and   type = 'U')
   drop table "Tip organizacione jedinice"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip podneska"')
            and   type = 'U')
   drop table "Tip podneska"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip poslovnog sistema"')
            and   type = 'U')
   drop table "Tip poslovnog sistema"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip regiona"')
            and   type = 'U')
   drop table "Tip regiona"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip sloenog sistema"')
            and   type = 'U')
   drop table "Tip sloenog sistema"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnik u izvjestaju"')
            and   name  = 'RELATIONSHIP_49_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnik u izvjestaju".RELATIONSHIP_49_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnik u izvjestaju"')
            and   name  = 'RELATIONSHIP_48_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnik u izvjestaju".RELATIONSHIP_48_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnik u izvjestaju"')
            and   name  = 'RELATIONSHIP_47_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnik u izvjestaju".RELATIONSHIP_47_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Ucesnik u izvjestaju"')
            and   type = 'U')
   drop table "Ucesnik u izvjestaju"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Uloga na sudenju"')
            and   type = 'U')
   drop table "Uloga na sudenju"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Uloga u izvjestaju"')
            and   type = 'U')
   drop table "Uloga u izvjestaju"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta izvjestaja"')
            and   type = 'U')
   drop table "Vrsta izvjestaja"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta kazne"')
            and   type = 'U')
   drop table "Vrsta kazne"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta predmeta"')
            and   type = 'U')
   drop table "Vrsta predmeta"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta radnog odnosa"')
            and   type = 'U')
   drop table "Vrsta radnog odnosa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta sankcije"')
            and   type = 'U')
   drop table "Vrsta sankcije"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Školske spreme"')
            and   name  = 'KOJE_SKOLSKE_SPREME_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Školske spreme".KOJE_SKOLSKE_SPREME_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Školske spreme"')
            and   type = 'U')
   drop table "Školske spreme"
go

/*==============================================================*/
/* Table: "Adresni podaci"                                      */
/*==============================================================*/
create table "Adresni podaci" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   Tip                  char(1)              not null,
   "Redni broj"         smallint             not null,
   Oznaka_Naseljenog_mjesta int                  null,
   Ulica                varchar(50)          null,
   Broj                 varchar(8)           null,
   "Fiksni telefon"     varchar(20)          null,
   "Mobilni telefon"    varchar(20)          null,
   "Elektronska pošta"  varchar(40)          null,
   "Web stranica"       varchar(60)          null,
   constraint "PK_ADRESNI PODACI" primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", Tip, "Redni broj")
)
go

/*==============================================================*/
/* Index: ADRESA_MJESTO_FK                                      */
/*==============================================================*/




create nonclustered index ADRESA_MJESTO_FK on "Adresni podaci" (Reg_Oznaka ASC,
  Oznaka_Naseljenog_mjesta ASC)
go

/*==============================================================*/
/* Index: KONTANT_PODACI_FK                                     */
/*==============================================================*/




create nonclustered index KONTANT_PODACI_FK on "Adresni podaci" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Index: KOD_DRUGOG_PRAVNOG_LICA_FK                            */
/*==============================================================*/




create nonclustered index KOD_DRUGOG_PRAVNOG_LICA_FK on "Adresni podaci" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Arhivirani predmeti"                                 */
/*==============================================================*/
create table "Arhivirani predmeti" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Broj arhivske grade" int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ARHIVIRANI PREDMETI" primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Broj arhivske grade")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_38_FK on "Arhivirani predmeti" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_40_FK on "Arhivirani predmeti" ("Broj arhivske grade" ASC)
go

/*==============================================================*/
/* Table: "Arhivska grada"                                      */
/*==============================================================*/
create table "Arhivska grada" (
   "Broj arhivske grade" int                  not null,
   "Broj stranica"      int                  not null,
   Lokacija             varchar(200)         null,
   constraint "PK_ARHIVSKA GRAĞA" primary key ("Broj arhivske grade")
)
go

/*==============================================================*/
/* Table: Atribut                                               */
/*==============================================================*/
create table Atribut (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint PK_ATRIBUT primary key (Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: RESURSI_SISTEMA2_FK                                   */
/*==============================================================*/




create nonclustered index RESURSI_SISTEMA2_FK on Atribut (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Clanovi kolegijuma"                                  */
/*==============================================================*/
create table "Clanovi kolegijuma" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Tip_Oznaka           char(5)              not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_CLANOVI KOLEGIJUMA" primary key (Tip_Oznaka, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_65_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_65_FK on "Clanovi kolegijuma" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_66_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_66_FK on "Clanovi kolegijuma" (Tip_Oznaka ASC)
go

/*==============================================================*/
/* Table: Dokaz                                                 */
/*==============================================================*/
create table Dokaz (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Identifikacioni broj dokaza" int                  not null,
   ID                   varchar(50)          null,
   PIB                  varchar(50)          null,
   Reg_ID               varchar(50)          not null,
   "Broj sobe sa dokazima" int                  not null,
   "Broj odeljka"       int                  not null,
   Opis                 varchar(120)         not null,
   "Datum pribavljanja dokaza" datetime             not null,
   "Vrijeme brisanja"   datetime             null,
   constraint PK_DOKAZ primary key (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_21_FK on Dokaz (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_43_FK on Dokaz (ID ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_44_FK on Dokaz (PIB ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_45_FK on Dokaz (Reg_ID ASC)
go

/*==============================================================*/
/* Table: Drava                                                */
/*==============================================================*/
create table Drava (
   Oznaka               char(3)              not null,
   Oznaka_Drz_Nas       char(3)              null,
   Oznaka_GGrad         int                  null,
   Oznaka_Uredjenje     char(1)              null,
   Naziv                varchar(120)         not null,
   "Datum osnivanja"    datetime             null,
   Grb                  image                null,
   Zastava              image                null,
   Himna                varbinary(MAX)                 null,
   constraint PK_DRAVA primary key (Oznaka)
)
go

/*==============================================================*/
/* Index: AKTUELNI_GLAVNI_GRAD_FK                               */
/*==============================================================*/




create nonclustered index AKTUELNI_GLAVNI_GRAD_FK on Drava (Oznaka_Drz_Nas ASC,
  Oznaka_GGrad ASC)
go

/*==============================================================*/
/* Index: TEKUCE_URE_ENJE_FK                                    */
/*==============================================================*/




create nonclustered index TEKUCE_URE_ENJE_FK on Drava (Oznaka_Uredjenje ASC)
go

/*==============================================================*/
/* Table: Dravljanstva                                         */
/*==============================================================*/
create table Dravljanstva (
   Oznaka               char(3)              not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   constraint PK_DRAVLJANSTVA primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", Oznaka)
)
go

/*==============================================================*/
/* Index: DRZAVLJANSTVA2_FK                                     */
/*==============================================================*/




create nonclustered index DRZAVLJANSTVA2_FK on Dravljanstva (Oznaka ASC)
go

/*==============================================================*/
/* Index: DRZAVLJANSTVA_FK                                      */
/*==============================================================*/




create nonclustered index DRZAVLJANSTVA_FK on Dravljanstva (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Table: "Dravno uredenje"                                    */
/*==============================================================*/
create table "Dravno uredenje" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   constraint "PK_DRAVNO UREĞENJE" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Faza predmeta"                                       */
/*==============================================================*/
create table "Faza predmeta" (
   "Oznaka vrste"       varchar(4)           not null,
   "Oznaka faze"        varchar(4)           not null,
   Naziv                varchar(64)          not null,
   constraint "PK_FAZA PREDMETA" primary key ("Oznaka vrste", "Oznaka faze")
)
go

/*==============================================================*/
/* Index: VRSTA_PRDMETA_IMA_SVOJE_FAZE_FK                       */
/*==============================================================*/




create nonclustered index VRSTA_PRDMETA_IMA_SVOJE_FAZE_FK on "Faza predmeta" ("Oznaka vrste" ASC)
go

/*==============================================================*/
/* Table: "Faze na predmetu"                                    */
/*==============================================================*/
create table "Faze na predmetu" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_FAZE NA PREDMETU" primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze")
)
go

/*==============================================================*/
/* Index: FAZA_NA_PREDMETU_FK                                   */
/*==============================================================*/




create nonclustered index FAZA_NA_PREDMETU_FK on "Faze na predmetu" ("Oznaka vrste" ASC,
  "Oznaka faze" ASC)
go

/*==============================================================*/
/* Index: PREDMETI_PO_FAZAMA_FK                                 */
/*==============================================================*/




create nonclustered index PREDMETI_PO_FAZAMA_FK on "Faze na predmetu" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Table: "Glavni grad"                                         */
/*==============================================================*/
create table "Glavni grad" (
   Dr_Oznaka           char(3)              not null,
   Nas_Oznaka           int                  not null,
   "Redni broj"         int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_GLAVNI GRAD" primary key (Dr_Oznaka, Nas_Oznaka, "Redni broj")
)
go

/*==============================================================*/
/* Index: DRZAVA_IMA_GLAVNI_GRAD_FK                             */
/*==============================================================*/




create nonclustered index DRZAVA_IMA_GLAVNI_GRAD_FK on "Glavni grad" (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Index: GLAVNI_GRAD_U_DRZAVI_FK                               */
/*==============================================================*/




create nonclustered index GLAVNI_GRAD_U_DRZAVI_FK on "Glavni grad" (Dr_Oznaka ASC,
  Nas_Oznaka ASC)
go

/*==============================================================*/
/* Table: "Istoija uredenja"                                    */
/*==============================================================*/
create table "Istoija uredenja" (
   Dr_Oznaka           char(3)              not null,
   Broj                 numeric(2)           not null,
   Oznaka_Uredjenje     char(1)              not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ISTOIJA UREĞENJA" primary key (Dr_Oznaka, Broj)
)
go

/*==============================================================*/
/* Index: URE_ENJE_DRZAVE_FK                                    */
/*==============================================================*/




create nonclustered index URE_ENJE_DRZAVE_FK on "Istoija uredenja" (Oznaka_Uredjenje ASC)
go

/*==============================================================*/
/* Index: KROZ_ISTORIJU_FK                                      */
/*==============================================================*/




create nonclustered index KROZ_ISTORIJU_FK on "Istoija uredenja" (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Table: "Izabrani tipovi organizacione jedinice"              */
/*==============================================================*/
create table "Izabrani tipovi organizacione jedinice" (
   Tip_Identifikator    numeric(1)           not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        smallint             not null,
   Aktivan              bit                  not null,
   constraint "PK_IZABRANI TIPOVI ORGANIZACIO" primary key (Tip_Identifikator, Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: TIPIZACIJA_U_POSLOVNOM_SISTEMU_FK                     */
/*==============================================================*/




create nonclustered index TIPIZACIJA_U_POSLOVNOM_SISTEMU_FK on "Izabrani tipovi organizacione jedinice" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: TIPIZACIJA_FK                                         */
/*==============================================================*/




create nonclustered index TIPIZACIJA_FK on "Izabrani tipovi organizacione jedinice" (Tip_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Izdavanje kopije grade"                              */
/*==============================================================*/
create table "Izdavanje kopije grade" (
   Oznaka               varchar(3)           not null,
   ID                   varchar(50)          not null,
   "Broj arhivske grade" int                  not null,
   "Broj kopije"        int                  not null,
   "Datum izdavanja grade" datetime             not null,
   constraint "PK_IZDAVANJE KOPIJE GRAĞE" primary key (Oznaka, ID, "Broj arhivske grade", "Broj kopije")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_26_FK on "Izdavanje kopije grade" ("Broj arhivske grade" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_28_FK on "Izdavanje kopije grade" (ID ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_29_FK on "Izdavanje kopije grade" (Oznaka ASC)
go

/*==============================================================*/
/* Table: Izvjestaj                                             */
/*==============================================================*/
create table Izvjestaj (
   "Oznaka izvjestaja"  varchar(3)           not null,
   "Oznaka vrste"       varchar(4)           not null,
   Izvjestaj            varbinary(MAX)                 null,
   constraint PK_IZVJESTAJ primary key ("Oznaka izvjestaja", "Oznaka vrste")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_46_FK on Izvjestaj ("Oznaka vrste" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_50_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_50_FK on Izvjestaj ("Oznaka izvjestaja" ASC)
go

/*==============================================================*/
/* Table: "Izvještaj na predmetu"                               */
/*==============================================================*/
create table "Izvještaj na predmetu" (
   "Oznaka izvjestaja"  varchar(3)           not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Broj izvještaja"    int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   Naziv                varchar(200)         not null,
   "Vrijeme potvrde"    datetime             null,
   constraint "PK_IZVJEŠTAJ NA PREDMETU" primary key ("Oznaka izvjestaja", Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj izvještaja")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_34_FK on "Izvještaj na predmetu" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator faze na predmetu" ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Oznaka faze" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_51_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_51_FK on "Izvještaj na predmetu" ("Oznaka izvjestaja" ASC,
  "Oznaka vrste" ASC)
go

/*==============================================================*/
/* Table: "Katalog radnih mjesta"                               */
/*==============================================================*/
create table "Katalog radnih mjesta" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Oznaka               numeric(4)           not null,
   "Naziv radnog mjesta" varchar(120)         not null,
   "Planski broj izvršilaca" numeric(3)           not null,
   constraint "PK_KATALOG RADNIH MJESTA" primary key (Reg_Oznaka, Reg_Identifikator, Oznaka)
)
go

/*==============================================================*/
/* Index: ZAPOSLJAVA_NA_FK                                      */
/*==============================================================*/




create nonclustered index ZAPOSLJAVA_NA_FK on "Katalog radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Katalog radnih mjesta u organizacionoj jedinici"     */
/*==============================================================*/
create table "Katalog radnih mjesta u organizacionoj jedinici" (
   Reg_Oznaka           char(3)              not null,
   "Oznaka jedinice"    numeric(4)           not null,
   Reg_Identifikator    int                  not null,
   Oznaka_Radnog_mjesta numeric(4)           not null,
   "Redni broj"         int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_KATALOG RADNIH MJESTA U ORG" primary key (Reg_Identifikator, Oznaka_Radnog_mjesta, Reg_Oznaka, "Oznaka jedinice", "Redni broj")
)
go

/*==============================================================*/
/* Index: RADNA_MJESTA_U_ORGANIZACIONOJ_JEDINICI_FK             */
/*==============================================================*/




create nonclustered index RADNA_MJESTA_U_ORGANIZACIONOJ_JEDINICI_FK on "Katalog radnih mjesta u organizacionoj jedinici" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka jedinice" ASC)
go

/*==============================================================*/
/* Index: RADNO_MJESTO_U_ORGANIZACIONOJ_JEDINICI_FK             */
/*==============================================================*/




create nonclustered index RADNO_MJESTO_U_ORGANIZACIONOJ_JEDINICI_FK on "Katalog radnih mjesta u organizacionoj jedinici" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Oznaka_Radnog_mjesta ASC)
go

/*==============================================================*/
/* Table: "Katalog zanimanja"                                   */
/*==============================================================*/
create table "Katalog zanimanja" (
   Oznaka_Drz           char(3)              not null,
   Zanimanje            int                  not null,
   "Naziv zanimanja"    varchar(120)         not null,
   constraint "PK_KATALOG ZANIMANJA" primary key (Oznaka_Drz, Zanimanje)
)
go

/*==============================================================*/
/* Index: REGISTROVANO_ZANIMANJE_FK                             */
/*==============================================================*/




create nonclustered index REGISTROVANO_ZANIMANJE_FK on "Katalog zanimanja" (Oznaka_Drz ASC)
go

/*==============================================================*/
/* Table: "Katalog zvanja"                                      */
/*==============================================================*/
create table "Katalog zvanja" (
   Oznaka_Drz           char(3)              not null,
   Zvanje               int                  not null,
   Naziv                varchar(120)         not null,
   constraint "PK_KATALOG ZVANJA" primary key (Oznaka_Drz, Zvanje)
)
go

/*==============================================================*/
/* Index: KATALOG_ZVANJA_FK                                     */
/*==============================================================*/




create nonclustered index KATALOG_ZVANJA_FK on "Katalog zvanja" (Oznaka_Drz ASC)
go

/*==============================================================*/
/* Table: Kazna                                                 */
/*==============================================================*/
create table Kazna (
   "Oznaka kazne"       varchar(3)           not null,
   Šifra                varchar(4)           not null,
   Naziv                varchar(500)         not null,
   constraint PK_KAZNA primary key ("Oznaka kazne", Šifra)
)
go

/*==============================================================*/
/* Index: VRSTA_KAZNE__GLAVNA_ILI_SPOREDNA__FK                  */
/*==============================================================*/




create nonclustered index VRSTA_KAZNE__GLAVNA_ILI_SPOREDNA__FK on Kazna ("Oznaka kazne" ASC)
go

/*==============================================================*/
/* Table: "Kazne u predmetu"                                    */
/*==============================================================*/
create table "Kazne u predmetu" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka kazne"       varchar(3)           not null,
   Šifra                varchar(4)           not null,
   "Broj kazne"         int                  not null,
   Vrijednost           varchar(50)          not null,
   "Datum izricanja"    datetime             not null,
   "Datum stupanja na snagu" datetime             not null,
   Izvršeno             bit                  null,
   constraint "PK_KAZNE U PREDMETU" primary key (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka kazne", Šifra, "Broj kazne")
)
go

/*==============================================================*/
/* Index: IZRECENA_KAZNA_FK                                     */
/*==============================================================*/




create nonclustered index IZRECENA_KAZNA_FK on "Kazne u predmetu" ("Oznaka kazne" ASC,
  Šifra ASC)
go

/*==============================================================*/
/* Index: IZRECENE_KAZNE_NA_PREDMETU_FK                         */
/*==============================================================*/




create nonclustered index IZRECENE_KAZNE_NA_PREDMETU_FK on "Kazne u predmetu" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Table: "Korisnicki nalog"                                    */
/*==============================================================*/
create table "Korisnicki nalog" (
   Pos_Reg_Oznaka       char(3)              not null,
   Pos_Reg_Identifikator int                  not null,
   "User ID"            varchar(30)          not null,
   "Identifikator zaposlenog" int                  not null,
   Username             varchar(15)          null,
   Password             varchar(256)         null,
   "Datum registracije" datetime             not null,
   Aktivan              bit                  not null,
   constraint "PK_KORISNICKI NALOG" primary key (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
)
go

/*==============================================================*/
/* Index: NALOG_ZAPOSLENOG_FK                                   */
/*==============================================================*/




create nonclustered index NALOG_ZAPOSLENOG_FK on "Korisnicki nalog" (Pos_Reg_Oznaka ASC,
  Pos_Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Index: REGISTROVANI_KORISNICI_FK                             */
/*==============================================================*/




create nonclustered index REGISTROVANI_KORISNICI_FK on "Korisnicki nalog" (Pos_Reg_Oznaka ASC,
  Pos_Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Kretanje dokaza"                                     */
/*==============================================================*/
create table "Kretanje dokaza" (
   Dok_Reg_Oznaka       char(3)              not null,
   Dok_Reg_Identifikator int                  not null,
   Dok_Identifikator    int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Identifikacioni broj dokaza" int                  not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         numeric(4)           not null,
   "Vrijeme preuzimanja" datetime             not null,
   "Vrijeme vracanja"   datetime             null,
   constraint "PK_KRETANJE DOKAZA" primary key (Dok_Reg_Oznaka, Dok_Reg_Identifikator, Dok_Identifikator, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_22_FK on "Kretanje dokaza" (Dok_Reg_Oznaka ASC,
  Dok_Reg_Identifikator ASC,
  Dok_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Identifikacioni broj dokaza" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_23_FK on "Kretanje dokaza" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC,
  "Redni broj" ASC)
go

/*==============================================================*/
/* Table: "Lista zvanja"                                        */
/*==============================================================*/
create table "Lista zvanja" (
   Oznaka_Drz           char(3)              not null,
   Zvanje               int                  not null,
   Stepen_obrazovanja   numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Oznaka spreme"      smallint             not null,
   constraint "PK_LISTA ZVANJA" primary key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme", Oznaka_Drz, Zvanje)
)
go

/*==============================================================*/
/* Index: LISTA_ZVANJA2_FK                                      */
/*==============================================================*/




create nonclustered index LISTA_ZVANJA2_FK on "Lista zvanja" (Oznaka_Drz ASC,
  Zvanje ASC)
go

/*==============================================================*/
/* Index: LISTA_ZVANJA_FK                                       */
/*==============================================================*/




create nonclustered index LISTA_ZVANJA_FK on "Lista zvanja" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC,
  "Oznaka spreme" ASC)
go

/*==============================================================*/
/* Table: "Logovi akcija"                                       */
/*==============================================================*/
create table "Logovi akcija" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka tabele"      int                  not null,
   "User ID"            varchar(30)          not null,
   "Broj akcije"        bigint               not null,
   "Datum i vrijeme akcije" datetime             not null,
   "IP adresa"          varchar(15)          not null,
   Akcija               varchar(255)         not null,
   constraint "PK_LOGOVI AKCIJA" primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka tabele", "User ID", "Broj akcije")
)
go

/*==============================================================*/
/* Index: KORISNICKI_NALOG_KOJI_VRSI_AKCIJE_FK                  */
/*==============================================================*/




create nonclustered index KORISNICKI_NALOG_KOJI_VRSI_AKCIJE_FK on "Logovi akcija" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "User ID" ASC)
go

/*==============================================================*/
/* Index: TABELE_NAD_KOJIMA_SE_VRSI_AKCIJA_FK                   */
/*==============================================================*/




create nonclustered index TABELE_NAD_KOJIMA_SE_VRSI_AKCIJA_FK on "Logovi akcija" ("Oznaka tabele" ASC)
go

/*==============================================================*/
/* Index: LOGOVI_AKCIJA_U_POSLOVNOM_SISTEMU_FK                  */
/*==============================================================*/




create nonclustered index LOGOVI_AKCIJA_U_POSLOVNOM_SISTEMU_FK on "Logovi akcija" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Logovi izmjena"                                      */
/*==============================================================*/
create table "Logovi izmjena" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka tabele"      int                  not null,
   "Broj izmjene"       int                  not null,
   "Izmjenjeni red"     varchar(256)         not null,
   Kolona               varchar(100)         not null,
   "User ID"            varchar(30)          not null,
   "Stara vrijednost"   varchar(256)         not null,
   "Nova vrijednost"    varchar(256)         not null,
   "Datum i vrijeme izmjene" datetime             not null,
   constraint "PK_LOGOVI IZMJENA" primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka tabele", "Broj izmjene", "Izmjenjeni red", Kolona)
)
go

/*==============================================================*/
/* Index: TABELE_NAD_KOJIMA_SE_VRSI_IZMJENA_FK                  */
/*==============================================================*/




create nonclustered index TABELE_NAD_KOJIMA_SE_VRSI_IZMJENA_FK on "Logovi izmjena" ("Oznaka tabele" ASC)
go

/*==============================================================*/
/* Index: KOEISNICKI_NALOG_KOJI_VRSI_IZMJENE_FK                 */
/*==============================================================*/




create nonclustered index KOEISNICKI_NALOG_KOJI_VRSI_IZMJENE_FK on "Logovi izmjena" (Reg_Oznaka ASC)
go

/*==============================================================*/
/* Index: LOGOVI_IZMJENA_U_PRACOSUDNOM_SISTEMU_FK               */
/*==============================================================*/




create nonclustered index LOGOVI_IZMJENA_U_PRACOSUDNOM_SISTEMU_FK on "Logovi izmjena" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Logovi pristupa"                                     */
/*==============================================================*/
create table "Logovi pristupa" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "User ID"            varchar(30)          not null,
   "Oznaka tabele"      int                  not null,
   "Broj pristupa"      int                  not null,
   "Datum i vrijeme pristup" datetime             not null,
   "IP Aadresa"         varchar(15)          not null,
   constraint "PK_LOGOVI PRISTUPA" primary key (Reg_Oznaka, Reg_Identifikator, "User ID", "Oznaka tabele", "Broj pristupa")
)
go

/*==============================================================*/
/* Index: TABELE_KOJIMA_SE_PRISTUPA_FK                          */
/*==============================================================*/




create nonclustered index TABELE_KOJIMA_SE_PRISTUPA_FK on "Logovi pristupa" ("Oznaka tabele" ASC)
go

/*==============================================================*/
/* Index: KORISNICKI_NALOG_KOJI_PRISTUPA_FK                     */
/*==============================================================*/




create nonclustered index KORISNICKI_NALOG_KOJI_PRISTUPA_FK on "Logovi pristupa" (Reg_Oznaka ASC)
go

/*==============================================================*/
/* Index: LOGOVI_PRISTUPA_U_POSLOVNOM_SISTEMU_FK                */
/*==============================================================*/




create nonclustered index LOGOVI_PRISTUPA_U_POSLOVNOM_SISTEMU_FK on "Logovi pristupa" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Mjesna zajednica"                                    */
/*==============================================================*/
create table "Mjesna zajednica" (
   Drz_Oznaka           char(3)              not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Identifikator        numeric(2,0)         not null,
   Oznaka_sjedista      int                  null,
   "Naziv mjesne zajednice" varchar(120)         not null,
   constraint "PK_MJESNA ZAJEDNICA" primary key (Drz_Oznaka, "Oznaka opštine", Identifikator)
)
go

/*==============================================================*/
/* Index: IMA_MJESNU_ZAJEDNICU_FK                               */
/*==============================================================*/




create nonclustered index IMA_MJESNU_ZAJEDNICU_FK on "Mjesna zajednica" (Drz_Oznaka ASC,
  "Oznaka opštine" ASC)
go

/*==============================================================*/
/* Index: MJESNA_KANCELARIJA_FK                                 */
/*==============================================================*/




create nonclustered index MJESNA_KANCELARIJA_FK on "Mjesna zajednica" (Drz_Oznaka ASC,
  Oznaka_sjedista ASC)
go

/*==============================================================*/
/* Table: "Mjesto pokrivanja naselja"                           */
/*==============================================================*/
create table "Mjesto pokrivanja naselja" (
   Dr_Oznaka           char(3)              not null,
   Nas_Oznaka           int                  not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Identifikator        numeric(2,0)         not null,
   constraint "PK_MJESTO POKRIVANJA NASELJA" primary key (Dr_Oznaka, Nas_Oznaka, "Oznaka opštine", Identifikator)
)
go

/*==============================================================*/
/* Index: MJESTO_POKRIVANJA_NASELJA2_FK                         */
/*==============================================================*/




create nonclustered index MJESTO_POKRIVANJA_NASELJA2_FK on "Mjesto pokrivanja naselja" (Dr_Oznaka ASC,
  "Oznaka opštine" ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: MJESTO_POKRIVANJA_NASELJA_FK                          */
/*==============================================================*/




create nonclustered index MJESTO_POKRIVANJA_NASELJA_FK on "Mjesto pokrivanja naselja" (Dr_Oznaka ASC,
  Nas_Oznaka ASC)
go

/*==============================================================*/
/* Table: Naredba                                               */
/*==============================================================*/
create table Naredba (
   Pre_Reg_Oznaka       char(3)              not null,
   Pre_Reg_Identifikator int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka naredbe"     char(5)              not null,
   "Redni broj"         int                  not null,
   Identifikator_izvrsioca int                  not null,
   Identifikator_Izdavaoca int                  not null,
   Sadrzaj              text                 not null,
   "Vrijeme dodjele"    datetime             not null,
   constraint PK_NAREDBA primary key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka naredbe", "Redni broj")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_68_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_68_FK on Naredba ("Oznaka naredbe" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_69_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_69_FK on Naredba (Pre_Reg_Oznaka ASC,
  Pre_Reg_Identifikator ASC,
  Identifikator_izvrsioca ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_70_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_70_FK on Naredba (Pre_Reg_Oznaka ASC,
  Pre_Reg_Identifikator ASC,
  Identifikator_Izdavaoca ASC)
go

/*==============================================================*/
/* Index: NAREDBA_NA_PREDMETU_FK                                */
/*==============================================================*/




create nonclustered index NAREDBA_NA_PREDMETU_FK on Naredba (Pre_Reg_Oznaka ASC,
  Pre_Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Table: "Naseljena mjesta"                                    */
/*==============================================================*/
create table "Naseljena mjesta" (
   Dr_Oznaka           char(3)              not null,
   Oznaka               int                  not null,
   Naziv                varchar(120)         not null,
   PPT                  varchar(12)          null,
   constraint "PK_NASELJENA MJESTA" primary key (Dr_Oznaka, Oznaka)
)
go

/*==============================================================*/
/* Index: SADRZI_NASELJA_FK                                     */
/*==============================================================*/




create nonclustered index SADRZI_NASELJA_FK on "Naseljena mjesta" (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Table: "Nivo obrazovanja"                                    */
/*==============================================================*/
create table "Nivo obrazovanja" (
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Naziv nivoa"        varchar(120)         not null,
   constraint "PK_NIVO OBRAZOVANJA" primary key (Stepen, "Nivo obrazovanja")
)
go

/*==============================================================*/
/* Table: "Obhvata naselja"                                     */
/*==============================================================*/
create table "Obhvata naselja" (
   Dr_Oznaka           char(3)              not null,
   Oznaka               int                  not null,
   "Oznaka tipa"        char(1)              not null,
   "Oznaka regiona"     smallint             not null,
   constraint "PK_OBHVATA NASELJA" primary key (Dr_Oznaka, Oznaka, "Oznaka tipa", "Oznaka regiona")
)
go

/*==============================================================*/
/* Index: OBHVATA_NASELJA2_FK                                   */
/*==============================================================*/




create nonclustered index OBHVATA_NASELJA2_FK on "Obhvata naselja" ("Oznaka tipa" ASC,
  "Oznaka regiona" ASC)
go

/*==============================================================*/
/* Index: OBHVATA_NASELJA_FK                                    */
/*==============================================================*/




create nonclustered index OBHVATA_NASELJA_FK on "Obhvata naselja" (Dr_Oznaka ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Table: "Obrazuju za"                                         */
/*==============================================================*/
create table "Obrazuju za" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Stepen_obrazovanja   numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Oznaka spreme"      smallint             not null,
   constraint "PK_OBRAZUJU ZA" primary key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme", Reg_Oznaka, Reg_Identifikator)
)
go

/*==============================================================*/
/* Index: OBRAZUJU_ZA2_FK                                       */
/*==============================================================*/




create nonclustered index OBRAZUJU_ZA2_FK on "Obrazuju za" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: OBRAZUJU_ZA_FK                                        */
/*==============================================================*/




create nonclustered index OBRAZUJU_ZA_FK on "Obrazuju za" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC,
  "Oznaka spreme" ASC)
go

/*==============================================================*/
/* Table: "Obuhvata opštine"                                    */
/*==============================================================*/
create table "Obuhvata opštine" (
   Dr_Oznaka           char(3)              not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Nas_Oznaka           int                  not null,
   constraint "PK_OBUHVATA OPŠTINE" primary key ("Oznaka opštine", Dr_Oznaka, Nas_Oznaka)
)
go

/*==============================================================*/
/* Index: OBUHVATA_OPSTINE2_FK                                  */
/*==============================================================*/




create nonclustered index OBUHVATA_OPSTINE2_FK on "Obuhvata opštine" (Dr_Oznaka ASC,
  Nas_Oznaka ASC)
go

/*==============================================================*/
/* Index: OBUHVATA_OPSTINE_FK                                   */
/*==============================================================*/




create nonclustered index OBUHVATA_OPSTINE_FK on "Obuhvata opštine" (Dr_Oznaka ASC,
  "Oznaka opštine" ASC)
go

/*==============================================================*/
/* Table: "Odnos radnih mjesta"                                 */
/*==============================================================*/
create table "Odnos radnih mjesta" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Redni broj_Sistematizacije" int                  not null,
   Oznaka_nadredjenog   numeric(4)           not null,
   Oznaka_podredjenog   numeric(4)           not null,
   constraint "PK_ODNOS RADNIH MJESTA" primary key (Oznaka_nadredjenog, Oznaka_podredjenog, Reg_Oznaka, Reg_Identifikator, "Redni broj_Sistematizacije")
)
go

/*==============================================================*/
/* Index: ODNOS_RADNIH_MJESTA_ZA_SISTEMATIZACIJU_FK             */
/*==============================================================*/




create nonclustered index ODNOS_RADNIH_MJESTA_ZA_SISTEMATIZACIJU_FK on "Odnos radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Redni broj_Sistematizacije" ASC)
go

/*==============================================================*/
/* Index: PODREDJENI_FK                                         */
/*==============================================================*/




create nonclustered index PODREDJENI_FK on "Odnos radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Oznaka_podredjenog ASC)
go

/*==============================================================*/
/* Index: NADREDJENI_FK                                         */
/*==============================================================*/




create nonclustered index NADREDJENI_FK on "Odnos radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Oznaka_nadredjenog ASC)
go

/*==============================================================*/
/* Table: Opština                                               */
/*==============================================================*/
create table Opština (
   Drz_Oznaka           char(3)              not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Oznaka_Sjedista      int                  null,
   "Naziv opštine"      varchar(120)         not null,
   constraint PK_OPŠTINA primary key (Drz_Oznaka, "Oznaka opštine")
)
go

/*==============================================================*/
/* Index: LOKALNA_SAMOUPRAVA_FK                                 */
/*==============================================================*/




create nonclustered index LOKALNA_SAMOUPRAVA_FK on Opština (Drz_Oznaka ASC)
go

/*==============================================================*/
/* Index: SJEDISTE_OPSTINE_FK                                   */
/*==============================================================*/




create nonclustered index SJEDISTE_OPSTINE_FK on Opština (Drz_Oznaka ASC,
  Oznaka_Sjedista ASC)
go

/*==============================================================*/
/* Table: "Organizacione jedinice"                              */
/*==============================================================*/
create table "Organizacione jedinice" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka jedinice"    numeric(4)           not null,
   Nas_Oznaka           int                  not null,
   Tip_Identifikator    numeric(1)           not null,
   Identifikator        smallint             not null,
   Naziv                varchar(120)         not null,
   Adresa               varchar(120)         null,
   Telefon              char(11)             null,
   email                varchar(60)          null,
   constraint "PK_ORGANIZACIONE JEDINICE" primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka jedinice")
)
go

/*==============================================================*/
/* Index: SJEDISTE_ORGANIZACIONE_JEDINICE_FK                    */
/*==============================================================*/




create nonclustered index SJEDISTE_ORGANIZACIONE_JEDINICE_FK on "Organizacione jedinice" (Reg_Oznaka ASC,
  Nas_Oznaka ASC)
go

/*==============================================================*/
/* Index: TIPIZACIJA_ORGANIZACINE_JEDINICE_FK                   */
/*==============================================================*/




create nonclustered index TIPIZACIJA_ORGANIZACINE_JEDINICE_FK on "Organizacione jedinice" (Tip_Identifikator ASC,
  Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: UNUTRASNJA_ORGANIZACIJA_FK                            */
/*==============================================================*/




create nonclustered index UNUTRASNJA_ORGANIZACIJA_FK on "Organizacione jedinice" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Personalna restrikcija"                              */
/*==============================================================*/
create table "Personalna restrikcija" (
   Reg_Oznaka           char(3)              not null,
   Atr_Reg_Identifikator int                  not null,
   Atr_Identifikator    int                  not null,
   Tab_Identifikator    int                  not null,
   "User ID"            varchar(30)          not null,
   "Oznaka role"        char(2)              not null,
   Identifikator        int                  not null,
   Dodavanje            bit                  not null,
   Brisanje             bit                  not null,
   Izmjena              bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_PERSONALNA RESTRIKCIJA" primary key (Reg_Oznaka, Atr_Reg_Identifikator, Atr_Identifikator, Tab_Identifikator, "User ID", "Oznaka role", Identifikator)
)
go

/*==============================================================*/
/* Index: PERSONALNA_RESTRIKCIJA2_FK                            */
/*==============================================================*/




create nonclustered index PERSONALNA_RESTRIKCIJA2_FK on "Personalna restrikcija" (Reg_Oznaka ASC,
  Atr_Reg_Identifikator ASC,
  "User ID" ASC,
  "Oznaka role" ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: PERSONALNA_RESTRIKCIJA3_FK                            */
/*==============================================================*/




create nonclustered index PERSONALNA_RESTRIKCIJA3_FK on "Personalna restrikcija" (Reg_Oznaka ASC,
  Atr_Reg_Identifikator ASC,
  Tab_Identifikator ASC)
go

/*==============================================================*/
/* Index: PERSONALNA_RESTRIKCIJA_FK                             */
/*==============================================================*/




create nonclustered index PERSONALNA_RESTRIKCIJA_FK on "Personalna restrikcija" (Reg_Oznaka ASC,
  Atr_Reg_Identifikator ASC,
  Atr_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Podaci o obrazovanju"                                */
/*==============================================================*/
create table "Podaci o obrazovanju" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         smallint             not null,
   Stepen_obrazovanja   numeric(1)           null,
   "Nivo obrazovanja"   smallint             null,
   "Oznaka spreme"      smallint             null,
   Zvanje               int                  not null,
   "Datum upisa"        datetime             null,
   "Datum završetka"    datetime             null,
   "Datum diplomiranja" datetime             null,
   "Boj diplome"        varchar(14)          null,
   constraint "PK_PODACI O OBRAZOVANJU" primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
)
go

/*==============================================================*/
/* Index: KOJA_USTANOVA_FK                                      */
/*==============================================================*/




create nonclustered index KOJA_USTANOVA_FK on "Podaci o obrazovanju" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: KOJA_SPREMA_FK                                        */
/*==============================================================*/




create nonclustered index KOJA_SPREMA_FK on "Podaci o obrazovanju" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC,
  "Oznaka spreme" ASC)
go

/*==============================================================*/
/* Index: STECENA_ZVANJA_FK                                     */
/*==============================================================*/




create nonclustered index STECENA_ZVANJA_FK on "Podaci o obrazovanju" (Reg_Oznaka ASC,
  Zvanje ASC)
go

/*==============================================================*/
/* Index: PODACI_O_OBRAZOVANJU_FK                               */
/*==============================================================*/




create nonclustered index PODACI_O_OBRAZOVANJU_FK on "Podaci o obrazovanju" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Table: Podnesak                                              */
/*==============================================================*/
create table Podnesak (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   "Broj rocišta"       int                  not null,
   "Oznaka uloge"       char(3)              not null,
   "Identifikacioni broj stranke" varchar(50)          not null,
   "Oznaka tipa"        varchar(3)           not null,
   "Broj podneska"      int                  not null,
   Naziv                varchar(200)         not null,
   Sadraj              varbinary(MAX)                 not null,
   constraint PK_PODNESAK primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka tipa", "Oznaka uloge", "Identifikacioni broj stranke", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta", "Broj podneska")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_31_FK on Podnesak (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator faze na predmetu" ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Oznaka faze" ASC,
  "Broj rocišta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_32_FK on Podnesak ("Oznaka uloge" ASC,
  Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Identifikacioni broj stranke" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_33_FK on Podnesak ("Oznaka tipa" ASC)
go

/*==============================================================*/
/* Table: "Poslovni sistem"                                     */
/*==============================================================*/
create table "Poslovni sistem" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Dr_Oznaka           char(3)              not null,
   Nas_Oznaka           int                  not null,
   Prav_Reg_Oznaka      char(3)              null,
   Prav_Reg_Identifikator int                  null,
   Tip_Identifikator    numeric(1)           null,
   Naziv                varchar(120)         not null,
   Adresa               varchar(120)         null,
   email                varchar(60)          null,
   www                  varchar(60)          null,
   "Registracioni broj" char(10)             null,
   PIB                  char(11)             null,
   "Datum registracije" datetime             not null,
   "Do kad je postojala" datetime             null,
   Memorandum           image                null,
   constraint "PK_POSLOVNI SISTEM" primary key (Reg_Oznaka, Reg_Identifikator)
)
go

/*==============================================================*/
/* Index: REGISTROVANI_POSLOVNI_SISTEMI_FK                      */
/*==============================================================*/




create nonclustered index REGISTROVANI_POSLOVNI_SISTEMI_FK on "Poslovni sistem" (Reg_Oznaka ASC)
go

/*==============================================================*/
/* Index: SJEDISTE_POSLOVNOG_SISTEMA_FK                         */
/*==============================================================*/




create nonclustered index SJEDISTE_POSLOVNOG_SISTEMA_FK on "Poslovni sistem" (Dr_Oznaka ASC,
  Nas_Oznaka ASC)
go

/*==============================================================*/
/* Index: PRAVNI_SLJEDBENIK_FK                                  */
/*==============================================================*/




create nonclustered index PRAVNI_SLJEDBENIK_FK on "Poslovni sistem" (Prav_Reg_Oznaka ASC,
  Prav_Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: TIPIZACIJA_POSLOVNOG_SISTEMA_FK                       */
/*==============================================================*/




create nonclustered index TIPIZACIJA_POSLOVNOG_SISTEMA_FK on "Poslovni sistem" (Tip_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Potrebne spreme"                                     */
/*==============================================================*/
create table "Potrebne spreme" (
   Oznaka_Drz           char(3)              not null,
   Zanimanje            int                  not null,
   Stepen_obrazovanja   numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Oznaka spreme"      smallint             not null,
   constraint "PK_POTREBNE SPREME" primary key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme", Oznaka_Drz, Zanimanje)
)
go

/*==============================================================*/
/* Index: POTREBNE_SPREME2_FK                                   */
/*==============================================================*/




create nonclustered index POTREBNE_SPREME2_FK on "Potrebne spreme" (Oznaka_Drz ASC,
  Zanimanje ASC)
go

/*==============================================================*/
/* Index: POTREBNE_SPREME_FK                                    */
/*==============================================================*/




create nonclustered index POTREBNE_SPREME_FK on "Potrebne spreme" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC,
  "Oznaka spreme" ASC)
go

/*==============================================================*/
/* Table: "Povezana sa"                                         */
/*==============================================================*/
create table "Povezana sa" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Tab_Identifikator    int                  not null,
   Identifikator        int                  not null,
   constraint "PK_POVEZANA SA" primary key (Tab_Identifikator, Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: POVEZANA_SA2_FK                                       */
/*==============================================================*/




create nonclustered index POVEZANA_SA2_FK on "Povezana sa" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: POVEZANA_SA_FK                                        */
/*==============================================================*/




create nonclustered index POVEZANA_SA_FK on "Povezana sa" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Tab_Identifikator ASC)
go

/*==============================================================*/
/* Table: Pošta                                                 */
/*==============================================================*/
create table Pošta (
   "Broj pošiljke"      varchar(20)          not null,
   Datum                datetime             not null,
   Sadraj              varchar(500)         null,
   Povjerljivo          bit                  not null,
   "Tip pošiljke"       bit                  null,
   constraint PK_POŠTA primary key ("Broj pošiljke")
)
go

/*==============================================================*/
/* Table: "Pravni nasljednik"                                   */
/*==============================================================*/
create table "Pravni nasljednik" (
   Oznaka               char(3)              not null,
   Dr_Oznaka           char(3)              not null,
   constraint "PK_PRAVNI NASLJEDNIK" primary key (Dr_Oznaka, Oznaka)
)
go

/*==============================================================*/
/* Index: PRAVNI_NASLJEDNIK2_FK                                 */
/*==============================================================*/




create nonclustered index PRAVNI_NASLJEDNIK2_FK on "Pravni nasljednik" (Oznaka ASC)
go

/*==============================================================*/
/* Index: PRAVNI_NASLJEDNIK_FK                                  */
/*==============================================================*/




create nonclustered index PRAVNI_NASLJEDNIK_FK on "Pravni nasljednik" (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Table: "Pravno lice"                                         */
/*==============================================================*/
create table "Pravno lice" (
   PIB                  varchar(50)          not null,
   Dr_Oznaka           char(3)              not null,
   Oznaka               int                  not null,
   Naziv                varchar(120)         not null,
   constraint "PK_PRAVNO LICE" primary key (PIB)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_17_FK on "Pravno lice" (Dr_Oznaka ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Table: "Pravo na podsistem"                                  */
/*==============================================================*/
create table "Pravo na podsistem" (
   Reg_Oznaka           char(3)              not null,
   Sis_Reg_Identifikator int                  not null,
   Sis_Identifikator    int                  not null,
   "Oznaka role"        char(2)              not null,
   Pristup              bit                  not null,
   constraint "PK_PRAVO NA PODSISTEM" primary key (Reg_Oznaka, Sis_Reg_Identifikator, Sis_Identifikator, "Oznaka role")
)
go

/*==============================================================*/
/* Index: PRAVO_NA_PODSISTEM2_FK                                */
/*==============================================================*/




create nonclustered index PRAVO_NA_PODSISTEM2_FK on "Pravo na podsistem" (Reg_Oznaka ASC,
  Sis_Reg_Identifikator ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Index: PRAVO_NA_PODSISTEM_FK                                 */
/*==============================================================*/




create nonclustered index PRAVO_NA_PODSISTEM_FK on "Pravo na podsistem" (Reg_Oznaka ASC,
  Sis_Reg_Identifikator ASC,
  Sis_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Predefinisane role radnih mjesta"                    */
/*==============================================================*/
create table "Predefinisane role radnih mjesta" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Kat_Oznaka           numeric(4)           not null,
   "Oznaka role"        char(2)              not null,
   constraint "PK_PREDEFINISANE ROLE RADNIH M" primary key (Reg_Oznaka, Reg_Identifikator, Kat_Oznaka, "Oznaka role")
)
go

/*==============================================================*/
/* Index: PREDEFINISANE_ROLE_RADNIH_MJESTA2_FK                  */
/*==============================================================*/




create nonclustered index PREDEFINISANE_ROLE_RADNIH_MJESTA2_FK on "Predefinisane role radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Index: PREDEFINISANE_ROLE_RADNIH_MJESTA_FK                   */
/*==============================================================*/




create nonclustered index PREDEFINISANE_ROLE_RADNIH_MJESTA_FK on "Predefinisane role radnih mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Kat_Oznaka ASC)
go

/*==============================================================*/
/* Table: Predmet                                               */
/*==============================================================*/
create table Predmet (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   Naziv                varchar(64)          not null,
   Opis                 varchar(1000)        not null,
   "Pravni osnov"       varchar(1000)        not null,
   Napomena             varchar(1000)        null,
   constraint PK_PREDMET primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
)
go

/*==============================================================*/
/* Index: PREDMET_U_OKVIRU_SUDA_FK                              */
/*==============================================================*/




create nonclustered index PREDMET_U_OKVIRU_SUDA_FK on Predmet (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_39_FK on Predmet ("Oznaka vrste" ASC)
go

/*==============================================================*/
/* Table: "Pripadnost roli"                                     */
/*==============================================================*/
create table "Pripadnost roli" (
   Pos_Reg_Oznaka       char(3)              not null,
   Pos_Reg_Identifikator int                  not null,
   "User ID"            varchar(30)          not null,
   "Oznaka role"        char(2)              not null,
   Identifikator        int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_PRIPADNOST ROLI" primary key (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID", "Oznaka role", Identifikator)
)
go

/*==============================================================*/
/* Index: KO_JE_U_GRUPI_FK                                      */
/*==============================================================*/




create nonclustered index KO_JE_U_GRUPI_FK on "Pripadnost roli" (Pos_Reg_Oznaka ASC,
  Pos_Reg_Identifikator ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Index: SVRSTAN_U_GRUPU_FK                                    */
/*==============================================================*/




create nonclustered index SVRSTAN_U_GRUPU_FK on "Pripadnost roli" (Pos_Reg_Oznaka ASC,
  Pos_Reg_Identifikator ASC,
  "User ID" ASC)
go

/*==============================================================*/
/* Table: "Raspored na radna mjesta"                            */
/*==============================================================*/
create table "Raspored na radna mjesta" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         numeric(4)           not null,
   Oznaka_radnog_mjesta numeric(4)           not null,
   "Oznaka jedinice"    numeric(4)           null,
   Oznaka_Vrsta_radnog_odnosa char(2)              not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   "Sta godina"        numeric(2)           not null,
   "Sta mjeseci"       numeric(2)           not null,
   "Sta dana"          numeric              not null,
   constraint "PK_RASPORED NA RADNA MJESTA" primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
)
go

/*==============================================================*/
/* Index: RASPORED_ZAPOSLENOG_FK                                */
/*==============================================================*/




create nonclustered index RASPORED_ZAPOSLENOG_FK on "Raspored na radna mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Index: KO_JE_RASPORE_EN_FK                                   */
/*==============================================================*/




create nonclustered index KO_JE_RASPORE_EN_FK on "Raspored na radna mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Oznaka_radnog_mjesta ASC)
go

/*==============================================================*/
/* Index: KADROVI_U_JEDINICI_FK                                 */
/*==============================================================*/




create nonclustered index KADROVI_U_JEDINICI_FK on "Raspored na radna mjesta" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka jedinice" ASC)
go

/*==============================================================*/
/* Index: SA_VRSTOM_ANGAZOVANJA_FK                              */
/*==============================================================*/




create nonclustered index SA_VRSTOM_ANGAZOVANJA_FK on "Raspored na radna mjesta" (Oznaka_Vrsta_radnog_odnosa ASC)
go

/*==============================================================*/
/* Table: Region                                                */
/*==============================================================*/
create table Region (
   "Oznaka tipa"        char(1)              not null,
   "Oznaka regiona"     smallint             not null,
   Dr_Oznaka           char(3)              null,
   AdmSjediste          int                  null,
   "Naziv regiona"      varchar(120)         not null,
   constraint PK_REGION primary key ("Oznaka tipa", "Oznaka regiona")
)
go

/*==============================================================*/
/* Index: MATICNA_DRZAVA_FK                                     */
/*==============================================================*/




create nonclustered index MATICNA_DRZAVA_FK on Region (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Index: ADMINISTRATIVNO_SREDISTE_FK                           */
/*==============================================================*/




create nonclustered index ADMINISTRATIVNO_SREDISTE_FK on Region (Dr_Oznaka ASC,
  AdmSjediste ASC)
go

/*==============================================================*/
/* Index: TIPIZACIJA_REGIONA_FK                                 */
/*==============================================================*/




create nonclustered index TIPIZACIJA_REGIONA_FK on Region ("Oznaka tipa" ASC)
go

/*==============================================================*/
/* Table: "Registar gradana"                                    */
/*==============================================================*/
create table "Registar gradana" (
   ID                   varchar(50)          not null,
   Dr_Oznaka           char(3)              not null,
   Oznaka               int                  not null,
   Ime                  varchar(120)         not null,
   Prezime              varchar(120)         not null,
   "Ime oca"            varchar(120)         null,
   Adresa               varchar(120)         not null,
   Dosije               varbinary(MAX)                 not null,
   constraint "PK_REGISTAR GRAĞANA" primary key (ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_15_FK on "Registar gradana" (Dr_Oznaka ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Table: "Registar zaposlenih"                                 */
/*==============================================================*/
create table "Registar zaposlenih" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   Prezime              varchar(25)          not null,
   "Ime roditelja"      varchar(25)          null,
   Ime                  varchar(25)          not null,
   Pol                  char(1)              not null,
   "Maticni broj"       varchar(13)          null,
   constraint "PK_REGISTAR ZAPOSLENIH" primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
)
go

/*==============================================================*/
/* Index: ZAPOSLJAVA_FK                                         */
/*==============================================================*/




create nonclustered index ZAPOSLJAVA_FK on "Registar zaposlenih" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: Relationship_12                                       */
/*==============================================================*/
create table Relationship_12 (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   Sad_Oznaka           char(3)              not null,
   Sad_Identifikator    int                  not null,
   "Sad_Oznaka vrste"   varchar(4)           not null,
   "Sad_Broj predmeta"  int                  not null,
   "Sad_Identifikator odjeljenja" bit                  not null,
   "Sad_Godina pocetka predmeta" int                  not null,
   constraint PK_RELATIONSHIP_12 primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", Sad_Oznaka, Sad_Identifikator, "Sad_Oznaka vrste", "Sad_Broj predmeta", "Sad_Identifikator odjeljenja", "Sad_Godina pocetka predmeta")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_25_FK on Relationship_12 (Sad_Oznaka ASC,
  Sad_Identifikator ASC,
  "Sad_Oznaka vrste" ASC,
  "Sad_Broj predmeta" ASC,
  "Sad_Identifikator odjeljenja" ASC,
  "Sad_Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_12_FK on Relationship_12 (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Table: Relationship_13                                       */
/*==============================================================*/
create table Relationship_13 (
   Pre_Reg_Oznaka       char(3)              not null,
   Pre_Reg_Identifikator int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         numeric(4)           not null,
   constraint PK_RELATIONSHIP_13 primary key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_27_FK on Relationship_13 (Pre_Reg_Oznaka ASC,
  Pre_Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_13_FK on Relationship_13 (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC,
  "Redni broj" ASC)
go

/*==============================================================*/
/* Table: Relationship_24                                       */
/*==============================================================*/
create table Relationship_24 (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Identifikacioni broj dokaza" int                  not null,
   "Oznaka statusa"     char(3)              not null,
   constraint PK_RELATIONSHIP_24 primary key (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka statusa", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_30_FK on Relationship_24 (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Identifikacioni broj dokaza" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_24_FK on Relationship_24 ("Oznaka statusa" ASC)
go

/*==============================================================*/
/* Table: Relationship_67                                       */
/*==============================================================*/
create table Relationship_67 (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Cla_Tip_Oznaka       char(5)              not null,
   "Identifikator zaposlenog" int                  not null,
   "Cla_Redni broj"     int                  not null,
   Tip_Oznaka           char(5)              not null,
   "Redni broj sastanka" int                  not null,
   constraint PK_RELATIONSHIP_67 primary key (Cla_Tip_Oznaka, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Cla_Redni broj", Tip_Oznaka, "Redni broj sastanka")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_71_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_71_FK on Relationship_67 (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Tip_Oznaka ASC,
  "Redni broj sastanka" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_67_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_67_FK on Relationship_67 (Cla_Tip_Oznaka ASC,
  Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC,
  "Cla_Redni broj" ASC)
go

/*==============================================================*/
/* Table: "Restrikcija atributa"                                */
/*==============================================================*/
create table "Restrikcija atributa" (
   Reg_Oznaka           char(3)              not null,
   Atr_Reg_Identifikator int                  not null,
   Atr_Identifikator    int                  not null,
   "Oznaka role"        char(2)              not null,
   Dodavanje            bit                  not null,
   Izmjena              bit                  null,
   Brisanje             bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_RESTRIKCIJA ATRIBUTA" primary key (Reg_Oznaka, Atr_Reg_Identifikator, Atr_Identifikator, "Oznaka role")
)
go

/*==============================================================*/
/* Index: RESTRIKCIJA_ATRIBUTA2_FK                              */
/*==============================================================*/




create nonclustered index RESTRIKCIJA_ATRIBUTA2_FK on "Restrikcija atributa" (Reg_Oznaka ASC,
  Atr_Reg_Identifikator ASC,
  Atr_Identifikator ASC)
go

/*==============================================================*/
/* Index: RESTRIKCIJA_ATRIBUTA_FK                               */
/*==============================================================*/




create nonclustered index RESTRIKCIJA_ATRIBUTA_FK on "Restrikcija atributa" (Reg_Oznaka ASC,
  Atr_Reg_Identifikator ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Table: "Restrikcija nad tabelama"                            */
/*==============================================================*/
create table "Restrikcija nad tabelama" (
   Reg_Oznaka           char(3)              not null,
   Tab_Reg_Identifikator int                  not null,
   Tab_Identifikator    int                  not null,
   "Oznaka role"        char(2)              not null,
   Dodavanje            bit                  not null,
   Brisanje             bit                  not null,
   Izmjena              bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_RESTRIKCIJA NAD TABELAMA" primary key (Reg_Oznaka, Tab_Reg_Identifikator, Tab_Identifikator, "Oznaka role")
)
go

/*==============================================================*/
/* Index: RESTRIKCIJA_NAD_TABELAMA2_FK                          */
/*==============================================================*/




create nonclustered index RESTRIKCIJA_NAD_TABELAMA2_FK on "Restrikcija nad tabelama" (Reg_Oznaka ASC,
  Tab_Reg_Identifikator ASC,
  Tab_Identifikator ASC)
go

/*==============================================================*/
/* Index: RESTRIKCIJA_NAD_TABELAMA_FK                           */
/*==============================================================*/




create nonclustered index RESTRIKCIJA_NAD_TABELAMA_FK on "Restrikcija nad tabelama" (Reg_Oznaka ASC,
  Tab_Reg_Identifikator ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Table: Rola                                                  */
/*==============================================================*/
create table Rola (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka role"        char(2)              not null,
   Prioritet            smallint             not null,
   "Naziv role"         varchar(80)          not null,
   Opis                 varchar(1000)        null,
   constraint PK_ROLA primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_11_FK on Rola (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: Rocište                                               */
/*==============================================================*/
create table Rocište (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   "Broj rocišta"       int                  not null,
   Vrijeme              datetime             not null,
   Transkript           varbinary(MAX)                 null,
   constraint PK_ROCIŠTE primary key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta")
)
go

/*==============================================================*/
/* Index: ROCISTE_NA_PREDMETU_FK                                */
/*==============================================================*/




create nonclustered index ROCISTE_NA_PREDMETU_FK on Rocište (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator faze na predmetu" ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Oznaka faze" ASC)
go

/*==============================================================*/
/* Table: "Sa školskim spremama"                                */
/*==============================================================*/
create table "Sa školskim spremama" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Oznaka_Radnog_mjesta numeric(4)           not null,
   Stepen_obrazovanja   numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Oznaka spreme"      smallint             not null,
   constraint "PK_SA ŠKOLSKIM SPREMAMA" primary key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme", Reg_Oznaka, Reg_Identifikator, Oznaka_Radnog_mjesta)
)
go

/*==============================================================*/
/* Index: SA_SKOLSKIM_SPREMAMA2_FK                              */
/*==============================================================*/




create nonclustered index SA_SKOLSKIM_SPREMAMA2_FK on "Sa školskim spremama" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Oznaka_Radnog_mjesta ASC)
go

/*==============================================================*/
/* Index: SA_SKOLSKIM_SPREMAMA_FK                               */
/*==============================================================*/




create nonclustered index SA_SKOLSKIM_SPREMAMA_FK on "Sa školskim spremama" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC,
  "Oznaka spreme" ASC)
go

/*==============================================================*/
/* Table: "Sadri atribute"                                     */
/*==============================================================*/
create table "Sadri atribute" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Atr_Identifikator    int                  not null,
   Identifikator        int                  not null,
   constraint "PK_SADRI ATRIBUTE" primary key (Reg_Oznaka, Reg_Identifikator, Atr_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: SADRZI_ATRIBUTE2_FK                                   */
/*==============================================================*/




create nonclustered index SADRZI_ATRIBUTE2_FK on "Sadri atribute" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: SADRZI_ATRIBUTE_FK                                    */
/*==============================================================*/




create nonclustered index SADRZI_ATRIBUTE_FK on "Sadri atribute" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Atr_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Sadri podsisteme"                                   */
/*==============================================================*/
create table "Sadri podsisteme" (
   Sis_Reg_Oznaka       char(3)              not null,
   Sis_Reg_Identifikator int                  not null,
   Sis_Identifikator    int                  not null,
   Identifikator        int                  not null,
   constraint "PK_SADRI PODSISTEME" primary key (Sis_Reg_Oznaka, Sis_Reg_Identifikator, Sis_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: SADRZI_PODSISTEME2_FK                                 */
/*==============================================================*/




create nonclustered index SADRZI_PODSISTEME2_FK on "Sadri podsisteme" (Sis_Reg_Oznaka ASC,
  Sis_Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: SADRZI_PODSISTEME_FK                                  */
/*==============================================================*/




create nonclustered index SADRZI_PODSISTEME_FK on "Sadri podsisteme" (Sis_Reg_Oznaka ASC,
  Sis_Reg_Identifikator ASC,
  Sis_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Sadri tabele"                                       */
/*==============================================================*/
create table "Sadri tabele" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Tab_Identifikator    int                  not null,
   Identifikator        int                  not null,
   constraint "PK_SADRI TABELE" primary key (Reg_Oznaka, Reg_Identifikator, Tab_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: SADRZI_TABELE2_FK                                     */
/*==============================================================*/




create nonclustered index SADRZI_TABELE2_FK on "Sadri tabele" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: SADRZI_TABELE_FK                                      */
/*==============================================================*/




create nonclustered index SADRZI_TABELE_FK on "Sadri tabele" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Tab_Identifikator ASC)
go

/*==============================================================*/
/* Table: Sankcija                                              */
/*==============================================================*/
create table Sankcija (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   "Broj rocišta"       int                  not null,
   "Broj sankcije"      int                  not null,
   "Oznaka uloge"       char(3)              not null,
   "Identifikacioni broj stranke" varchar(50)          not null,
   Šifra                char(3)              not null,
   Vrijednost           varchar(50)          not null,
   constraint PK_SANKCIJA primary key (Reg_Identifikator, Reg_Oznaka, "Identifikator faze na predmetu", "Oznaka uloge", "Identifikacioni broj stranke", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta", "Broj sankcije")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_18_FK on Sankcija (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator faze na predmetu" ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Oznaka faze" ASC,
  "Broj rocišta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_19_FK on Sankcija ("Oznaka uloge" ASC,
  Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Identifikacioni broj stranke" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_20_FK on Sankcija (Šifra ASC)
go

/*==============================================================*/
/* Table: "Sastanak kolegijuma"                                 */
/*==============================================================*/
create table "Sastanak kolegijuma" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Tip_Oznaka           char(5)              not null,
   "Redni broj"         int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Vrijeme odrzavanja" datetime             not null,
   Zapisnik             text                 null,
   "Okvir izvjestaja"   varbinary(MAX)                 null,
   constraint "PK_SASTANAK KOLEGIJUMA" primary key (Reg_Oznaka, Reg_Identifikator, Tip_Oznaka, "Redni broj")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_62_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_62_FK on "Sastanak kolegijuma" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_63_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_63_FK on "Sastanak kolegijuma" (Tip_Oznaka ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_64_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_64_FK on "Sastanak kolegijuma" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Sastav drave"                                       */
/*==============================================================*/
create table "Sastav drave" (
   Drz_Oznaka           char(3)              not null,
   Clanica              char(3)              not null,
   "Redni broj"         numeric(3)           not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_SASTAV DRAVE" primary key (Clanica, Drz_Oznaka, "Redni broj")
)
go

/*==============================================================*/
/* Index: SLOZENA_DRZAVA_FK                                     */
/*==============================================================*/




create nonclustered index SLOZENA_DRZAVA_FK on "Sastav drave" (Drz_Oznaka ASC)
go

/*==============================================================*/
/* Index: DRZAVA_CLANICA_FK                                     */
/*==============================================================*/




create nonclustered index DRZAVA_CLANICA_FK on "Sastav drave" (Clanica ASC)
go

/*==============================================================*/
/* Table: "Sastav regiona"                                      */
/*==============================================================*/
create table "Sastav regiona" (
   "Reg_Oznaka tipa"    char(1)              not null,
   "Reg_Oznaka regiona" smallint             not null,
   "Oznaka tipa"        char(1)              not null,
   "Oznaka regiona"     smallint             not null,
   constraint "PK_SASTAV REGIONA" primary key ("Reg_Oznaka tipa", "Reg_Oznaka regiona", "Oznaka tipa", "Oznaka regiona")
)
go

/*==============================================================*/
/* Index: SASTAV_REGIONA2_FK                                    */
/*==============================================================*/




create nonclustered index SASTAV_REGIONA2_FK on "Sastav regiona" ("Oznaka tipa" ASC,
  "Oznaka regiona" ASC)
go

/*==============================================================*/
/* Index: SASTAV_REGIONA_FK                                     */
/*==============================================================*/




create nonclustered index SASTAV_REGIONA_FK on "Sastav regiona" ("Reg_Oznaka tipa" ASC,
  "Reg_Oznaka regiona" ASC)
go

/*==============================================================*/
/* Table: "Sistem ili podsistem"                                */
/*==============================================================*/
create table "Sistem ili podsistem" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint "PK_SISTEM ILI PODSISTEM" primary key (Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: RESURSI_SISTEMA_FK                                    */
/*==============================================================*/




create nonclustered index RESURSI_SISTEMA_FK on "Sistem ili podsistem" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: Sistematizacija                                       */
/*==============================================================*/
create table Sistematizacija (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Redni broj"         int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint PK_SISTEMATIZACIJA primary key (Reg_Oznaka, Reg_Identifikator, "Redni broj")
)
go

/*==============================================================*/
/* Index: SISTEMATIZACIJA_POSLOVNIH_JEDINICA_FK                 */
/*==============================================================*/




create nonclustered index SISTEMATIZACIJA_POSLOVNIH_JEDINICA_FK on Sistematizacija (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Sloeni poslovni sistem"                             */
/*==============================================================*/
create table "Sloeni poslovni sistem" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Sast_Reg_Oznaka      char(3)              not null,
   Sast_Reg_Identifikator int                  not null,
   Identifikator        smallint             not null,
   Tip_Identifikator    numeric(1)           not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_SLOENI POSLOVNI SISTEM" primary key (Reg_Oznaka, Reg_Identifikator, Sast_Reg_Oznaka, Sast_Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: MATICNI_POSLOVNI_SISTEM_FK                            */
/*==============================================================*/




create nonclustered index MATICNI_POSLOVNI_SISTEM_FK on "Sloeni poslovni sistem" (Sast_Reg_Oznaka ASC,
  Sast_Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: SISTEM_U_SASTAVU_FK                                   */
/*==============================================================*/




create nonclustered index SISTEM_U_SASTAVU_FK on "Sloeni poslovni sistem" (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Index: TIPIZACIJA_SLOZENOG_SISTEMA_FK                        */
/*==============================================================*/




create nonclustered index TIPIZACIJA_SLOZENOG_SISTEMA_FK on "Sloeni poslovni sistem" (Tip_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Status dokaza"                                       */
/*==============================================================*/
create table "Status dokaza" (
   "Oznaka statusa"     char(3)              not null,
   Naziv                varchar(120)         not null,
   constraint "PK_STATUS DOKAZA" primary key ("Oznaka statusa")
)
go

/*==============================================================*/
/* Table: "Status na predmetu"                                  */
/*==============================================================*/
create table "Status na predmetu" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka statusa"     varchar(4)           not null,
   constraint "PK_STATUS NA PREDMETU" primary key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka statusa")
)
go

/*==============================================================*/
/* Index: STATUS_NA_PREDMETU2_FK                                */
/*==============================================================*/




create nonclustered index STATUS_NA_PREDMETU2_FK on "Status na predmetu" ("Oznaka statusa" ASC)
go

/*==============================================================*/
/* Index: STATUS_NA_PREDMETU_FK                                 */
/*==============================================================*/




create nonclustered index STATUS_NA_PREDMETU_FK on "Status na predmetu" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Table: "Status predmeta"                                     */
/*==============================================================*/
create table "Status predmeta" (
   "Oznaka statusa"     varchar(4)           not null,
   Naziv                varchar(64)          not null,
   constraint "PK_STATUS PREDMETA" primary key ("Oznaka statusa")
)
go

/*==============================================================*/
/* Table: "Stranka na predmetu"                                 */
/*==============================================================*/
create table "Stranka na predmetu" (
   "Oznaka uloge"       char(3)              not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikacioni broj stranke" varchar(50)          not null,
   "Identifikator odjeljenja" bit                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Godina pocetka predmeta" int                  not null,
   ID                   varchar(50)          null,
   PIB                  varchar(50)          null,
   "Tip stranke"        char(1)              not null,
   constraint "PK_STRANKA NA PREDMETU" primary key ("Oznaka uloge", Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj stranke")
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_14_FK on "Stranka na predmetu" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_16_FK on "Stranka na predmetu" ("Oznaka uloge" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_41_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_41_FK on "Stranka na predmetu" (ID ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_42_FK on "Stranka na predmetu" (PIB ASC)
go

/*==============================================================*/
/* Table: "Struktura atributa"                                  */
/*==============================================================*/
create table "Struktura atributa" (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Atr_Identifikator    int                  not null,
   Identifikator        int                  not null,
   constraint "PK_STRUKTURA ATRIBUTA" primary key (Atr_Identifikator, Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: STRUKTURA_ATRIBUTA2_FK                                */
/*==============================================================*/




create nonclustered index STRUKTURA_ATRIBUTA2_FK on "Struktura atributa" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Index: STRUKTURA_ATRIBUTA_FK                                 */
/*==============================================================*/




create nonclustered index STRUKTURA_ATRIBUTA_FK on "Struktura atributa" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  Atr_Identifikator ASC)
go

/*==============================================================*/
/* Table: "Svrha izdavanja arhivske grade"                      */
/*==============================================================*/
create table "Svrha izdavanja arhivske grade" (
   Oznaka               varchar(3)           not null,
   Naziv                varchar(200)         not null,
   constraint "PK_SVRHA IZDAVANJA ARHIVSKE GR" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Tabela                                                */
/*==============================================================*/
create table Tabela (
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   Identifikator        int                  not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint PK_TABELA primary key (Reg_Oznaka, Reg_Identifikator, Identifikator)
)
go

/*==============================================================*/
/* Index: RESURSI_SISTEMA3_FK                                   */
/*==============================================================*/




create nonclustered index RESURSI_SISTEMA3_FK on Tabela (Reg_Oznaka ASC,
  Reg_Identifikator ASC)
go

/*==============================================================*/
/* Table: Tabele                                                */
/*==============================================================*/
create table Tabele (
   "Oznaka tabele"      int                  not null,
   Naziv                varchar(255)         not null,
   constraint PK_TABELE primary key ("Oznaka tabele")
)
go

/*==============================================================*/
/* Table: "Tip kolegijuma"                                      */
/*==============================================================*/
create table "Tip kolegijuma" (
   Oznaka               char(5)              not null,
   Naziv                varchar(120)         not null,
   constraint "PK_TIP KOLEGIJUMA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip naredbe"                                         */
/*==============================================================*/
create table "Tip naredbe" (
   "Oznaka naredbe"     char(5)              not null,
   Naziv                varchar(120)         not null,
   constraint "PK_TIP NAREDBE" primary key ("Oznaka naredbe")
)
go

/*==============================================================*/
/* Table: "Tip organizacione jedinice"                          */
/*==============================================================*/
create table "Tip organizacione jedinice" (
   Identifikator        numeric(1)           not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(1000)        null,
   constraint "PK_TIP ORGANIZACIONE JEDINICE" primary key (Identifikator)
)
go

/*==============================================================*/
/* Table: "Tip podneska"                                        */
/*==============================================================*/
create table "Tip podneska" (
   "Oznaka tipa"        varchar(3)           not null,
   Naziv                varchar(120)         not null,
   constraint "PK_TIP PODNESKA" primary key ("Oznaka tipa")
)
go

/*==============================================================*/
/* Table: "Tip poslovnog sistema"                               */
/*==============================================================*/
create table "Tip poslovnog sistema" (
   Identifikator        numeric(1)           not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(1000)        null,
   constraint "PK_TIP POSLOVNOG SISTEMA" primary key (Identifikator)
)
go

/*==============================================================*/
/* Table: "Tip regiona"                                         */
/*==============================================================*/
create table "Tip regiona" (
   "Oznaka tipa"        char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_TIP REGIONA" primary key ("Oznaka tipa")
)
go

/*==============================================================*/
/* Table: "Tip sloenog sistema"                                */
/*==============================================================*/
create table "Tip sloenog sistema" (
   Identifikator        numeric(1)           not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(1000)        null,
   constraint "PK_TIP SLOENOG SISTEMA" primary key (Identifikator)
)
go

/*==============================================================*/
/* Table: "Ucesnik u izvjestaju"                                */
/*==============================================================*/
create table "Ucesnik u izvjestaju" (
   "Izv_Oznaka izvjestaja" varchar(3)           not null,
   Izv_Reg_Oznaka       char(3)              not null,
   Izv_Reg_Identifikator int                  not null,
   "Identifikator faze na predmetu" int                  not null,
   "Oznaka vrste"       varchar(4)           not null,
   "Broj predmeta"      int                  not null,
   "Identifikator odjeljenja" bit                  not null,
   "Godina pocetka predmeta" int                  not null,
   "Oznaka faze"        varchar(4)           not null,
   "Broj izvještaja"    int                  not null,
   "Oznaka uloge"       varchar(3)           not null,
   Reg_Oznaka           char(3)              not null,
   Reg_Identifikator    int                  not null,
   "Identifikator zaposlenog" int                  not null,
   "Redni broj"         numeric(4)           not null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_47_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_47_FK on "Ucesnik u izvjestaju" (Reg_Oznaka ASC,
  Reg_Identifikator ASC,
  "Identifikator zaposlenog" ASC,
  "Redni broj" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_48_FK on "Ucesnik u izvjestaju" ("Izv_Oznaka izvjestaja" ASC,
  Izv_Reg_Oznaka ASC,
  Izv_Reg_Identifikator ASC,
  "Identifikator faze na predmetu" ASC,
  "Oznaka vrste" ASC,
  "Broj predmeta" ASC,
  "Identifikator odjeljenja" ASC,
  "Godina pocetka predmeta" ASC,
  "Oznaka faze" ASC,
  "Broj izvještaja" ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_49_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_49_FK on "Ucesnik u izvjestaju" ("Oznaka uloge" ASC)
go

/*==============================================================*/
/* Table: "Uloga na sudenju"                                    */
/*==============================================================*/
create table "Uloga na sudenju" (
   "Oznaka uloge"       char(3)              not null,
   Naziv                varchar(50)          not null,
   constraint "PK_ULOGA NA SUĞENJU" primary key ("Oznaka uloge")
)
go

/*==============================================================*/
/* Table: "Uloga u izvjestaju"                                  */
/*==============================================================*/
create table "Uloga u izvjestaju" (
   "Oznaka uloge"       varchar(3)           not null,
   Naziv                varchar(200)         not null,
   constraint "PK_ULOGA U IZVJESTAJU" primary key ("Oznaka uloge")
)
go

/*==============================================================*/
/* Table: "Vrsta izvjestaja"                                    */
/*==============================================================*/
create table "Vrsta izvjestaja" (
   "Oznaka izvjestaja"  varchar(3)           not null,
   Naziv                varchar(200)         not null,
   constraint "PK_VRSTA IZVJESTAJA" primary key ("Oznaka izvjestaja")
)
go

/*==============================================================*/
/* Table: "Vrsta kazne"                                         */
/*==============================================================*/
create table "Vrsta kazne" (
   "Oznaka kazne"       varchar(3)           not null,
   Naziv                varchar(100)         not null,
   constraint "PK_VRSTA KAZNE" primary key ("Oznaka kazne")
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('"Vrsta kazne"') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Vrsta kazne' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Glavna/Sporedna
   ', 
   'user', @CurrentUser, 'table', 'Vrsta kazne'
go

/*==============================================================*/
/* Table: "Vrsta predmeta"                                      */
/*==============================================================*/
create table "Vrsta predmeta" (
   "Oznaka vrste"       varchar(4)           not null,
   Naziv                varchar(64)          not null,
   constraint "PK_VRSTA PREDMETA" primary key ("Oznaka vrste")
)
go

/*==============================================================*/
/* Table: "Vrsta radnog odnosa"                                 */
/*==============================================================*/
create table "Vrsta radnog odnosa" (
   Oznaka               char(2)              not null,
   Naziv                varchar(40)          not null,
   constraint "PK_VRSTA RADNOG ODNOSA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Vrsta sankcije"                                      */
/*==============================================================*/
create table "Vrsta sankcije" (
   Šifra                char(3)              not null,
   Oznaka               varchar(100)         not null,
   constraint "PK_VRSTA SANKCIJE" primary key (Šifra)
)
go

/*==============================================================*/
/* Table: "Školske spreme"                                      */
/*==============================================================*/
create table "Školske spreme" (
   Stepen_obrazovanja   numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Oznaka spreme"      smallint             not null,
   "Naziv spreme"       varchar(80)          not null,
   constraint "PK_ŠKOLSKE SPREME" primary key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
)
go

/*==============================================================*/
/* Index: KOJE_SKOLSKE_SPREME_FK                                */
/*==============================================================*/




create nonclustered index KOJE_SKOLSKE_SPREME_FK on "Školske spreme" (Stepen_obrazovanja ASC,
  "Nivo obrazovanja" ASC)
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _ADRESA MJ_NASELJEN" foreign key (Reg_Oznaka, Oznaka_Naseljenog_mjesta)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _KOD DRUGO_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _KONTANT P_REGISTAR" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Arhivirani predmeti"
   add constraint FK_ARHIVIRA_RELATIONS_PREDMET foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table "Arhivirani predmeti"
   add constraint FK_ARHIVIRA_RELATIONS_ARHIVSKA foreign key ("Broj arhivske grade")
      references "Arhivska grada" ("Broj arhivske grade")
go

alter table Atribut
   add constraint "FK_ATRIBUT_RESURSI S_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Clanovi kolegijuma"
   add constraint "FK_CLANOVI _RELATIONS_REGISTAR" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Clanovi kolegijuma"
   add constraint "FK_CLANOVI _RELATIONS_TIP KOLE" foreign key (Tip_Oznaka)
      references "Tip kolegijuma" (Oznaka)
go

alter table Dokaz
   add constraint FK_DOKAZ_RELATIONS_PREDMET foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table Dokaz
   add constraint FK_DOKAZ_RELATIONS_REGISTAR2 foreign key (ID)
      references "Registar gradana" (ID)
go

alter table Dokaz
   add constraint "FK_DOKAZ_RELATIONS_PRAVNO L" foreign key (PIB)
      references "Pravno lice" (PIB)
go

alter table Dokaz
   add constraint FK_DOKAZ_RELATIONS_REGISTAR foreign key (Reg_ID)
      references "Registar gradana" (ID)
go

alter table Drava
   add constraint "FK_DRAVA_AKTUELNI _NASELJEN" foreign key (Oznaka_Drz_Nas, Oznaka_GGrad)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table Drava
   add constraint "FK_DRAVA_TEKUCE UR_DRAVNO" foreign key (Oznaka_Uredjenje)
      references "Dravno uredenje" (Oznaka)
go

alter table Dravljanstva
   add constraint FK_DRAVLJA_DRAVLJAN_REGISTAR foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table Dravljanstva
   add constraint FK_DRAVLJA_DRAVLJAN_DRAVA foreign key (Oznaka)
      references Drava (Oznaka)
go

alter table "Faza predmeta"
   add constraint "FK_FAZA PRE_VRSTA PRD_VRSTA PR" foreign key ("Oznaka vrste")
      references "Vrsta predmeta" ("Oznaka vrste")
go

alter table "Faze na predmetu"
   add constraint "FK_FAZE NA _FAZA NA P_FAZA PRE" foreign key ("Oznaka vrste", "Oznaka faze")
      references "Faza predmeta" ("Oznaka vrste", "Oznaka faze")
go

alter table "Faze na predmetu"
   add constraint "FK_FAZE NA _PREDMETI _PREDMET" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table "Glavni grad"
   add constraint "FK_GLAVNI G_DRAVA IM_DRAVA" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table "Glavni grad"
   add constraint "FK_GLAVNI G_GLAVNI GR_NASELJEN" foreign key (Dr_Oznaka, Nas_Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Istoija uredenja"
   add constraint "FK_ISTOIJA _KROZ ISTO_DRAVA" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table "Istoija uredenja"
   add constraint "FK_ISTOIJA _UREĞENJE _DRAVNO" foreign key (Oznaka_Uredjenje)
      references "Dravno uredenje" (Oznaka)
go

alter table "Izabrani tipovi organizacione jedinice"
   add constraint "FK_IZABRANI_TIPIZACIJ_TIP ORGA" foreign key (Tip_Identifikator)
      references "Tip organizacione jedinice" (Identifikator)
go

alter table "Izabrani tipovi organizacione jedinice"
   add constraint FK_IZABRANI_TIPIZACIJ_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Izdavanje kopije grade"
   add constraint FK_IZDAVANJ_RELATIONS_ARHIVSKA foreign key ("Broj arhivske grade")
      references "Arhivska grada" ("Broj arhivske grade")
go

alter table "Izdavanje kopije grade"
   add constraint FK_IZDAVANJ_RELATIONS_REGISTAR foreign key (ID)
      references "Registar gradana" (ID)
go

alter table "Izdavanje kopije grade"
   add constraint "FK_IZDAVANJ_RELATIONS_SVRHA IZ" foreign key (Oznaka)
      references "Svrha izdavanja arhivske grade" (Oznaka)
go

alter table Izvjestaj
   add constraint "FK_IZVJESTA_RELATIONS_VRSTA PR" foreign key ("Oznaka vrste")
      references "Vrsta predmeta" ("Oznaka vrste")
go

alter table Izvjestaj
   add constraint "FK_IZVJESTA_RELATIONS_VRSTA IZ" foreign key ("Oznaka izvjestaja")
      references "Vrsta izvjestaja" ("Oznaka izvjestaja")
go

alter table "Izvještaj na predmetu"
   add constraint "FK_IZVJEŠTA_RELATIONS_FAZE NA" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze")
      references "Faze na predmetu" (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze")
go

alter table "Izvještaj na predmetu"
   add constraint FK_IZVJEŠTA_RELATIONS_IZVJESTA foreign key ("Oznaka izvjestaja", "Oznaka vrste")
      references Izvjestaj ("Oznaka izvjestaja", "Oznaka vrste")
go

alter table "Katalog radnih mjesta"
   add constraint "FK_KATALOG _ZAPOŠLJAV_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Katalog radnih mjesta u organizacionoj jedinici"
   add constraint "FK_KATALOG _RADNA MJE_ORGANIZA" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka jedinice")
      references "Organizacione jedinice" (Reg_Oznaka, Reg_Identifikator, "Oznaka jedinice")
go

alter table "Katalog radnih mjesta u organizacionoj jedinici"
   add constraint "FK_KATALOG _RADNO MJE_KATALOG" foreign key (Reg_Oznaka, Reg_Identifikator, Oznaka_Radnog_mjesta)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table "Katalog zanimanja"
   add constraint "FK_KATALOG _REGISTROV_DRAVA" foreign key (Oznaka_Drz)
      references Drava (Oznaka)
go

alter table "Katalog zvanja"
   add constraint "FK_KATALOG _KATALOG Z_DRAVA" foreign key (Oznaka_Drz)
      references Drava (Oznaka)
go

alter table Kazna
   add constraint "FK_KAZNA_VRSTA KAZ_VRSTA KA" foreign key ("Oznaka kazne")
      references "Vrsta kazne" ("Oznaka kazne")
go

alter table "Kazne u predmetu"
   add constraint "FK_KAZNE U _IZRECENA _KAZNA" foreign key ("Oznaka kazne", Šifra)
      references Kazna ("Oznaka kazne", Šifra)
go

alter table "Kazne u predmetu"
   add constraint "FK_KAZNE U _IZRECENE _PREDMET" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table "Korisnicki nalog"
   add constraint "FK_KORISNIC_NALOG ZAP_REGISTAR" foreign key (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Korisnicki nalog"
   add constraint FK_KORISNIC_REGISTROV_POSLOVNI foreign key (Pos_Reg_Oznaka, Pos_Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Kretanje dokaza"
   add constraint FK_KRETANJE_RELATIONS_DOKAZ foreign key (Dok_Reg_Oznaka, Dok_Reg_Identifikator, Dok_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
      references Dokaz (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
go

alter table "Kretanje dokaza"
   add constraint FK_KRETANJE_RELATIONS_RASPORED foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
      references "Raspored na radna mjesta" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
go

alter table "Lista zvanja"
   add constraint "FK_LISTA ZV_LISTA ZVA_ŠKOLSKE" foreign key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
      references "Školske spreme" (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
go

alter table "Lista zvanja"
   add constraint "FK_LISTA ZV_LISTA ZVA_KATALOG" foreign key (Oznaka_Drz, Zvanje)
      references "Katalog zvanja" (Oznaka_Drz, Zvanje)
go

alter table "Logovi akcija"
   add constraint "FK_LOGOVI A_KORISNICK_KORISNIC" foreign key (Reg_Oznaka, Reg_Identifikator, "User ID")
      references "Korisnicki nalog" (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
go

alter table "Logovi akcija"
   add constraint "FK_LOGOVI A_LOGOVI AK_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Logovi akcija"
   add constraint "FK_LOGOVI A_TABELE NA_TABELE" foreign key ("Oznaka tabele")
      references Tabele ("Oznaka tabele")
go

alter table "Logovi izmjena"
   add constraint "FK_LOGOVI I_KOEISNICK_KORISNIC" foreign key (Reg_Oznaka, Reg_Oznaka, "User ID")
      references "Korisnicki nalog" (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
go

alter table "Logovi izmjena"
   add constraint "FK_LOGOVI I_LOGOVI IZ_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Logovi izmjena"
   add constraint "FK_LOGOVI I_TABELE NA_TABELE" foreign key ("Oznaka tabele")
      references Tabele ("Oznaka tabele")
go

alter table "Logovi pristupa"
   add constraint "FK_LOGOVI P_KORISNICK_KORISNIC" foreign key (Reg_Oznaka, Reg_Oznaka, "User ID")
      references "Korisnicki nalog" (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
go

alter table "Logovi pristupa"
   add constraint "FK_LOGOVI P_LOGOVI PR_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Logovi pristupa"
   add constraint "FK_LOGOVI P_TABELE KO_TABELE" foreign key ("Oznaka tabele")
      references Tabele ("Oznaka tabele")
go

alter table "Mjesna zajednica"
   add constraint "FK_MJESNA Z_IMA MJESN_OPŠTINA" foreign key (Drz_Oznaka, "Oznaka opštine")
      references Opština (Drz_Oznaka, "Oznaka opštine")
go

alter table "Mjesna zajednica"
   add constraint "FK_MJESNA Z_MJESNA KA_NASELJEN" foreign key (Drz_Oznaka, Oznaka_sjedista)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Mjesto pokrivanja naselja"
   add constraint "FK_MJESTO P_MJESTO PO_NASELJEN" foreign key (Dr_Oznaka, Nas_Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Mjesto pokrivanja naselja"
   add constraint "FK_MJESTO P_MJESTO PO_MJESNA Z" foreign key (Dr_Oznaka, "Oznaka opštine", Identifikator)
      references "Mjesna zajednica" (Drz_Oznaka, "Oznaka opštine", Identifikator)
go

alter table Naredba
   add constraint "FK_NAREDBA_NAREDBA N_PREDMET" foreign key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table Naredba
   add constraint "FK_NAREDBA_RELATIONS_TIP NARE" foreign key ("Oznaka naredbe")
      references "Tip naredbe" ("Oznaka naredbe")
go

alter table Naredba
   add constraint FK_NAREDBA_RELATIONS_REGISTAR foreign key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, Identifikator_izvrsioca)
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table Naredba
   add constraint FK_NAREDBA_RELATIONS_REGISTAR2 foreign key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, Identifikator_Izdavaoca)
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Naseljena mjesta"
   add constraint "FK_NASELJEN_SADRI NA_DRAVA" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table "Obhvata naselja"
   add constraint "FK_OBHVATA _OBHVATA N_NASELJEN" foreign key (Dr_Oznaka, Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Obhvata naselja"
   add constraint "FK_OBHVATA _OBHVATA N_REGION" foreign key ("Oznaka tipa", "Oznaka regiona")
      references Region ("Oznaka tipa", "Oznaka regiona")
go

alter table "Obrazuju za"
   add constraint "FK_OBRAZUJU_OBRAZUJU _ŠKOLSKE" foreign key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
      references "Školske spreme" (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
go

alter table "Obrazuju za"
   add constraint "FK_OBRAZUJU_OBRAZUJU _POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Obuhvata opštine"
   add constraint "FK_OBUHVATA_OBUHVATA _OPŠTINA" foreign key (Dr_Oznaka, "Oznaka opštine")
      references Opština (Drz_Oznaka, "Oznaka opštine")
go

alter table "Obuhvata opštine"
   add constraint "FK_OBUHVATA_OBUHVATA _NASELJEN" foreign key (Dr_Oznaka, Nas_Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Odnos radnih mjesta"
   add constraint "FK_ODNOS RA_NADREDJEN_KATALOG" foreign key (Reg_Oznaka, Reg_Identifikator, Oznaka_nadredjenog)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table "Odnos radnih mjesta"
   add constraint "FK_ODNOS RA_ODNOS RAD_SISTEMAT" foreign key (Reg_Oznaka, Reg_Identifikator, "Redni broj_Sistematizacije")
      references Sistematizacija (Reg_Oznaka, Reg_Identifikator, "Redni broj")
go

alter table "Odnos radnih mjesta"
   add constraint "FK_ODNOS RA_PODREDJEN_KATALOG" foreign key (Reg_Oznaka, Reg_Identifikator, Oznaka_podredjenog)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table Opština
   add constraint "FK_OPŠTINA_LOKALNA S_DRAVA" foreign key (Drz_Oznaka)
      references Drava (Oznaka)
go

alter table Opština
   add constraint "FK_OPŠTINA_SJEDIŠTE _NASELJEN" foreign key (Drz_Oznaka, Oznaka_Sjedista)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Organizacione jedinice"
   add constraint "FK_ORGANIZA_SJEDIŠTE _NASELJEN" foreign key (Reg_Oznaka, Nas_Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Organizacione jedinice"
   add constraint FK_ORGANIZA_TIPIZACIJ_IZABRANI foreign key (Tip_Identifikator, Reg_Oznaka, Reg_Identifikator, Identifikator)
      references "Izabrani tipovi organizacione jedinice" (Tip_Identifikator, Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Organizacione jedinice"
   add constraint FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_ATRIBUT foreign key (Reg_Oznaka, Atr_Reg_Identifikator, Atr_Identifikator)
      references Atribut (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_PRIPADNO foreign key (Reg_Oznaka, Atr_Reg_Identifikator, "User ID", "Oznaka role", Identifikator)
      references "Pripadnost roli" (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID", "Oznaka role", Identifikator)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_TABELA foreign key (Reg_Oznaka, Atr_Reg_Identifikator, Tab_Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_KOJA SPRE_ŠKOLSKE" foreign key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
      references "Školske spreme" (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_KOJA USTA_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_PODACI O _REGISTAR" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_STECENA Z_KATALOG" foreign key (Reg_Oznaka, Zvanje)
      references "Katalog zvanja" (Oznaka_Drz, Zvanje)
go

alter table Podnesak
   add constraint FK_PODNESAK_RELATIONS_ROCIŠTE foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta")
      references Rocište (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta")
go

alter table Podnesak
   add constraint FK_PODNESAK_RELATIONS_STRANKA foreign key ("Oznaka uloge", Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj stranke")
      references "Stranka na predmetu" ("Oznaka uloge", Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj stranke")
go

alter table Podnesak
   add constraint "FK_PODNESAK_RELATIONS_TIP PODN" foreign key ("Oznaka tipa")
      references "Tip podneska" ("Oznaka tipa")
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_PRAVNI SL_POSLOVNI" foreign key (Prav_Reg_Oznaka, Prav_Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Poslovni sistem"
   add constraint FK_POSLOVNI_REGISTROV_DRAVA foreign key (Reg_Oznaka)
      references Drava (Oznaka)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_SJEDIŠTE _NASELJEN" foreign key (Dr_Oznaka, Nas_Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_TIPIZACIJ_TIP POSL" foreign key (Tip_Identifikator)
      references "Tip poslovnog sistema" (Identifikator)
go

alter table "Potrebne spreme"
   add constraint "FK_POTREBNE_POTREBNE _ŠKOLSKE" foreign key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
      references "Školske spreme" (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
go

alter table "Potrebne spreme"
   add constraint "FK_POTREBNE_POTREBNE _KATALOG" foreign key (Oznaka_Drz, Zanimanje)
      references "Katalog zanimanja" (Oznaka_Drz, Zanimanje)
go

alter table "Povezana sa"
   add constraint "FK_POVEZANA_POVEZANA _TABELA" foreign key (Reg_Oznaka, Reg_Identifikator, Tab_Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Povezana sa"
   add constraint "FK_POVEZANA_POVEZANA _TABELA2" foreign key (Reg_Oznaka, Reg_Identifikator, Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Pravni nasljednik"
   add constraint "FK_PRAVNI N_PRAVNI NA_DRAVA" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table "Pravni nasljednik"
   add constraint "FK_PRAVNI N_PRAVNI NA_DRAVA2" foreign key (Oznaka)
      references Drava (Oznaka)
go

alter table "Pravno lice"
   add constraint "FK_PRAVNO L_RELATIONS_NASELJEN" foreign key (Dr_Oznaka, Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Pravo na podsistem"
   add constraint "FK_PRAVO NA_PRAVO NA _SISTEM I" foreign key (Reg_Oznaka, Sis_Reg_Identifikator, Sis_Identifikator)
      references "Sistem ili podsistem" (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Pravo na podsistem"
   add constraint "FK_PRAVO NA_PRAVO NA _ROLA" foreign key (Reg_Oznaka, Sis_Reg_Identifikator, "Oznaka role")
      references Rola (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
go

alter table "Predefinisane role radnih mjesta"
   add constraint FK_PREDEFIN_PREDEFINI_KATALOG foreign key (Reg_Oznaka, Reg_Identifikator, Kat_Oznaka)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table "Predefinisane role radnih mjesta"
   add constraint FK_PREDEFIN_PREDEFINI_ROLA foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
      references Rola (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
go

alter table Predmet
   add constraint "FK_PREDMET_PREDMET U_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table Predmet
   add constraint "FK_PREDMET_RELATIONS_VRSTA PR" foreign key ("Oznaka vrste")
      references "Vrsta predmeta" ("Oznaka vrste")
go

alter table "Pripadnost roli"
   add constraint "FK_PRIPADNO_KO JE U G_ROLA" foreign key (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "Oznaka role")
      references Rola (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
go

alter table "Pripadnost roli"
   add constraint "FK_PRIPADNO_SVRSTAN U_KORISNIC" foreign key (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
      references "Korisnicki nalog" (Pos_Reg_Oznaka, Pos_Reg_Identifikator, "User ID")
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_KADROVI U_ORGANIZA" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka jedinice")
      references "Organizacione jedinice" (Reg_Oznaka, Reg_Identifikator, "Oznaka jedinice")
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_KO JE RAS_KATALOG" foreign key (Reg_Oznaka, Reg_Identifikator, Oznaka_radnog_mjesta)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_RASPORED _REGISTAR" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_SA VRSTOM_VRSTA RA" foreign key (Oznaka_Vrsta_radnog_odnosa)
      references "Vrsta radnog odnosa" (Oznaka)
go

alter table Region
   add constraint FK_REGION_ADMINISTR_NASELJEN foreign key (Dr_Oznaka, AdmSjediste)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table Region
   add constraint "FK_REGION_MATICNA D_DRAVA" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table Region
   add constraint "FK_REGION_TIPIZACIJ_TIP REGI" foreign key ("Oznaka tipa")
      references "Tip regiona" ("Oznaka tipa")
go

alter table "Registar gradana"
   add constraint FK_REGISTAR_RELATIONS_NASELJEN foreign key (Dr_Oznaka, Oznaka)
      references "Naseljena mjesta" (Dr_Oznaka, Oznaka)
go

alter table "Registar zaposlenih"
   add constraint FK_REGISTAR_ZAPOŠLJAV_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table Relationship_12
   add constraint FK_RELATION_RELATIONS_PREDMET3 foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table Relationship_12
   add constraint FK_RELATION_RELATIONS_PREDMET2 foreign key (Sad_Oznaka, Sad_Identifikator, "Sad_Oznaka vrste", "Sad_Broj predmeta", "Sad_Identifikator odjeljenja", "Sad_Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table Relationship_13
   add constraint FK_RELATION_RELATIONS_RASPORED foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
      references "Raspored na radna mjesta" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
go

alter table Relationship_13
   add constraint FK_RELATION_RELATIONS_PREDMET foreign key (Pre_Reg_Oznaka, Pre_Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table Relationship_24
   add constraint "FK_RELATION_RELATIONS_STATUS D" foreign key ("Oznaka statusa")
      references "Status dokaza" ("Oznaka statusa")
go

alter table Relationship_24
   add constraint FK_RELATION_RELATIONS_DOKAZ foreign key (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
      references Dokaz (Reg_Oznaka, Reg_Identifikator, Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj dokaza")
go

alter table Relationship_67
   add constraint FK_RELATION_RELATIONS_CLANOVI foreign key (Cla_Tip_Oznaka, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Cla_Redni broj")
      references "Clanovi kolegijuma" (Tip_Oznaka, Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
go

alter table Relationship_67
   add constraint FK_RELATION_RELATIONS_SASTANAK foreign key (Reg_Oznaka, Reg_Identifikator, Tip_Oznaka, "Redni broj sastanka")
      references "Sastanak kolegijuma" (Reg_Oznaka, Reg_Identifikator, Tip_Oznaka, "Redni broj")
go

alter table "Restrikcija atributa"
   add constraint FK_RESTRIKC_RESTRIKCI_ROLA2 foreign key (Reg_Oznaka, Atr_Reg_Identifikator, "Oznaka role")
      references Rola (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
go

alter table "Restrikcija atributa"
   add constraint FK_RESTRIKC_RESTRIKCI_ATRIBUT foreign key (Reg_Oznaka, Atr_Reg_Identifikator, Atr_Identifikator)
      references Atribut (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Restrikcija nad tabelama"
   add constraint FK_RESTRIKC_RESTRIKCI_ROLA foreign key (Reg_Oznaka, Tab_Reg_Identifikator, "Oznaka role")
      references Rola (Reg_Oznaka, Reg_Identifikator, "Oznaka role")
go

alter table "Restrikcija nad tabelama"
   add constraint FK_RESTRIKC_RESTRIKCI_TABELA foreign key (Reg_Oznaka, Tab_Reg_Identifikator, Tab_Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table Rola
   add constraint FK_ROLA_RELATIONS_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table Rocište
   add constraint "FK_ROCIŠTE_ROCIŠTE N_FAZE NA" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze")
      references "Faze na predmetu" (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze")
go

alter table "Sa školskim spremama"
   add constraint "FK_SA ŠKOLS_SA ŠKOLSK_ŠKOLSKE" foreign key (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
      references "Školske spreme" (Stepen_obrazovanja, "Nivo obrazovanja", "Oznaka spreme")
go

alter table "Sa školskim spremama"
   add constraint "FK_SA ŠKOLS_SA ŠKOLSK_KATALOG" foreign key (Reg_Oznaka, Reg_Identifikator, Oznaka_Radnog_mjesta)
      references "Katalog radnih mjesta" (Reg_Oznaka, Reg_Identifikator, Oznaka)
go

alter table "Sadri atribute"
   add constraint "FK_SADRI A_SADRI AT_ATRIBUT" foreign key (Reg_Oznaka, Reg_Identifikator, Atr_Identifikator)
      references Atribut (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Sadri atribute"
   add constraint "FK_SADRI A_SADRI AT_TABELA" foreign key (Reg_Oznaka, Reg_Identifikator, Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Sadri podsisteme"
   add constraint "FK_SADRI P_SADRI PO_SISTEM I" foreign key (Sis_Reg_Oznaka, Sis_Reg_Identifikator, Sis_Identifikator)
      references "Sistem ili podsistem" (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Sadri podsisteme"
   add constraint "FK_SADRI P_SADRI PO_SISTEM I2" foreign key (Sis_Reg_Oznaka, Sis_Reg_Identifikator, Identifikator)
      references "Sistem ili podsistem" (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Sadri tabele"
   add constraint "FK_SADRI T_SADRI TA_TABELA" foreign key (Reg_Oznaka, Reg_Identifikator, Tab_Identifikator)
      references Tabela (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Sadri tabele"
   add constraint "FK_SADRI T_SADRI TA_SISTEM I" foreign key (Reg_Oznaka, Reg_Identifikator, Identifikator)
      references "Sistem ili podsistem" (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table Sankcija
   add constraint FK_SANKCIJA_RELATIONS_ROCIŠTE foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta")
      references Rocište (Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj rocišta")
go

alter table Sankcija
   add constraint FK_SANKCIJA_RELATIONS_STRANKA foreign key ("Oznaka uloge", Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj stranke")
      references "Stranka na predmetu" ("Oznaka uloge", Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Identifikacioni broj stranke")
go

alter table Sankcija
   add constraint "FK_SANKCIJA_RELATIONS_VRSTA SA" foreign key (Šifra)
      references "Vrsta sankcije" (Šifra)
go

alter table "Sastanak kolegijuma"
   add constraint FK_SASTANAK_RELATIONS_REGISTAR foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
      references "Registar zaposlenih" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog")
go

alter table "Sastanak kolegijuma"
   add constraint "FK_SASTANAK_RELATIONS_TIP KOLE" foreign key (Tip_Oznaka)
      references "Tip kolegijuma" (Oznaka)
go

alter table "Sastanak kolegijuma"
   add constraint FK_SASTANAK_RELATIONS_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Sastav drave"
   add constraint "FK_SASTAV D_DRAVA CL_DRAVA" foreign key (Clanica)
      references Drava (Oznaka)
go

alter table "Sastav drave"
   add constraint "FK_SASTAV D_SLOENA D_DRAVA" foreign key (Drz_Oznaka)
      references Drava (Oznaka)
go

alter table "Sastav regiona"
   add constraint "FK_SASTAV R_SASTAV RE_REGION" foreign key ("Reg_Oznaka tipa", "Reg_Oznaka regiona")
      references Region ("Oznaka tipa", "Oznaka regiona")
go

alter table "Sastav regiona"
   add constraint "FK_SASTAV R_SASTAV RE_REGION2" foreign key ("Oznaka tipa", "Oznaka regiona")
      references Region ("Oznaka tipa", "Oznaka regiona")
go

alter table "Sistem ili podsistem"
   add constraint "FK_SISTEM I_RESURSI S_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table Sistematizacija
   add constraint FK_SISTEMAT_SISTEMATI_POSLOVNI foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _MATICNI P_POSLOVNI" foreign key (Sast_Reg_Oznaka, Sast_Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _SISTEM U _POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _TIPIZACIJ_TIP SLO" foreign key (Tip_Identifikator)
      references "Tip sloenog sistema" (Identifikator)
go

alter table "Status na predmetu"
   add constraint "FK_STATUS N_STATUS NA_PREDMET" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table "Status na predmetu"
   add constraint "FK_STATUS N_STATUS NA_STATUS P" foreign key ("Oznaka statusa")
      references "Status predmeta" ("Oznaka statusa")
go

alter table "Stranka na predmetu"
   add constraint "FK_STRANKA _RELATIONS_PREDMET" foreign key (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
      references Predmet (Reg_Oznaka, Reg_Identifikator, "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta")
go

alter table "Stranka na predmetu"
   add constraint "FK_STRANKA _RELATIONS_ULOGA NA" foreign key ("Oznaka uloge")
      references "Uloga na sudenju" ("Oznaka uloge")
go

alter table "Stranka na predmetu"
   add constraint "FK_STRANKA _RELATIONS_REGISTAR" foreign key (ID)
      references "Registar gradana" (ID)
go

alter table "Stranka na predmetu"
   add constraint "FK_STRANKA _RELATIONS_PRAVNO L" foreign key (PIB)
      references "Pravno lice" (PIB)
go

alter table "Struktura atributa"
   add constraint FK_STRUKTUR_STRUKTURA_ATRIBUT foreign key (Reg_Oznaka, Reg_Identifikator, Atr_Identifikator)
      references Atribut (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table "Struktura atributa"
   add constraint FK_STRUKTUR_STRUKTURA_ATRIBUT2 foreign key (Reg_Oznaka, Reg_Identifikator, Identifikator)
      references Atribut (Reg_Oznaka, Reg_Identifikator, Identifikator)
go

alter table Tabela
   add constraint "FK_TABELA_RESURSI S_POSLOVNI" foreign key (Reg_Oznaka, Reg_Identifikator)
      references "Poslovni sistem" (Reg_Oznaka, Reg_Identifikator)
go

alter table "Ucesnik u izvjestaju"
   add constraint "FK_UCESNIK _RELATIONS_RASPORED" foreign key (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
      references "Raspored na radna mjesta" (Reg_Oznaka, Reg_Identifikator, "Identifikator zaposlenog", "Redni broj")
go

alter table "Ucesnik u izvjestaju"
   add constraint "FK_UCESNIK _RELATIONS_IZVJEŠTA" foreign key ("Izv_Oznaka izvjestaja", Izv_Reg_Oznaka, Izv_Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj izvještaja")
      references "Izvještaj na predmetu" ("Oznaka izvjestaja", Reg_Oznaka, Reg_Identifikator, "Identifikator faze na predmetu", "Oznaka vrste", "Broj predmeta", "Identifikator odjeljenja", "Godina pocetka predmeta", "Oznaka faze", "Broj izvještaja")
go

alter table "Ucesnik u izvjestaju"
   add constraint "FK_UCESNIK _RELATIONS_ULOGA U" foreign key ("Oznaka uloge")
      references "Uloga u izvjestaju" ("Oznaka uloge")
go

alter table "Školske spreme"
   add constraint "FK_ŠKOLSKE _KOJE ŠKOL_NIVO OBR" foreign key (Stepen_obrazovanja, "Nivo obrazovanja")
      references "Nivo obrazovanja" (Stepen, "Nivo obrazovanja")
go

