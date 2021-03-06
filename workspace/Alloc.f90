!  ***    Zone des ALLOCATIONS DYNAMIQUES DE MEMOIRE  ****

compt_alloc=0
nb_tab_dyn=136
allocate( alloc_stat(nb_tab_dyn))   !Tableau pour sauvegarde resultats des allocations. 

allocate( matno(nelem),         stat = alloc_stat(compt_alloc+1))     !Tableau 1
allocate( coord(npoin,ndim),    stat = alloc_stat(compt_alloc+2))     !Tableau 2
allocate( lnods(nelem,nnode),   stat = alloc_stat(compt_alloc+3))     !Tableau 3
allocate( presc0(nvfix,ndofn),  stat = alloc_stat(compt_alloc+4))     !Tableau 4
allocate( iffix(ntotv),         stat = alloc_stat(compt_alloc+5))     !Tableau 5
allocate( nofix(nvfix),         stat = alloc_stat(compt_alloc+6))     !Tableau 6
allocate( props(nmats,nprop),   stat = alloc_stat(compt_alloc+7))     !Tableau 7
allocate( ndfro(nelem),         stat = alloc_stat(compt_alloc+8))     !Tableau 8
allocate( asdis(ntotv),         stat = alloc_stat(compt_alloc+9))     !Tableau 9
allocate( rload(nelem,nevab),   stat = alloc_stat(compt_alloc+10))    !Tableau 10
allocate( gradb(npoin,4),       stat = alloc_stat(compt_alloc+11))    !Tableau 11
allocate( ngrad(nelem,4),       stat = alloc_stat(compt_alloc+12))    !Tableau 12
allocate( delz(npoin),          stat = alloc_stat(compt_alloc+13))    !Tableau 13
allocate( eload(nelem,nevab),   stat = alloc_stat(compt_alloc+14))    !Tableau 14
allocate( tload(nelem,nevab),   stat = alloc_stat(compt_alloc+15))    !Tableau 15
allocate( tdisp(ntotv),         stat = alloc_stat(compt_alloc+16))    !Tableau 16
allocate( treac(nvfix,ndofn),   stat = alloc_stat(compt_alloc+17))    !Tableau 17
allocate( epstn(ntotg),         stat = alloc_stat(compt_alloc+18))    !Tableau 18
allocate( effst(ntotg),         stat = alloc_stat(compt_alloc+19))    !Tableau 19
allocate( strsg(nstr1,ntotg),   stat = alloc_stat(compt_alloc+20))    !Tableau 20
allocate( fixed(ntotv),         stat = alloc_stat(compt_alloc+21))    !Tableau 21
allocate( eldis(ndofn,nnode),       stat = alloc_stat(compt_alloc+22))    !Tableau 22
allocate( tofor(ntotv),         stat = alloc_stat(compt_alloc+23))    !Tableau 23
allocate( stfor(ntotv),         stat = alloc_stat(compt_alloc+24))    !Tableau 24
allocate( estif(nevab,nevab),   stat = alloc_stat(compt_alloc+25))    !Tableau 25
allocate( posgp(ngaus),       stat = alloc_stat(compt_alloc+26))    !Tableau 26
allocate( weigp(ngaus),       stat = alloc_stat(compt_alloc+27))    !Tableau 27
allocate( treac2(npoin,ndofn),       stat = alloc_stat(compt_alloc+28))    !Tableau 28
allocate( elcod(ndofn,nnode),       stat = alloc_stat(compt_alloc+32))    !Tableau 22

allocate( dmatx(4,4),       stat = alloc_stat(compt_alloc+33))    !Tableau 22
allocate( bmatx(4,2*nnode),       stat = alloc_stat(compt_alloc+34))    !Tableau 22
allocate( bmatx_tr(2*nnode,4),       stat = alloc_stat(compt_alloc+34))    !Tableau 22

allocate( stran(4),       stat = alloc_stat(compt_alloc+34))    !Tableau 22
allocate( stres(4),       stat = alloc_stat(compt_alloc+34))    !Tableau 22
allocate( eload_temp(4),       stat = alloc_stat(compt_alloc+34))    !Tableau 22
allocate( sigma(4),       stat = alloc_stat(compt_alloc+34))    !Tableau 22
allocate( strsg_out(nelem*nstr1,(ngaus*ngaus)+1),       stat = alloc_stat(compt_alloc+40))    !Tableau 22
allocate( defsg(nstr1,ntotg),   stat = alloc_stat(compt_alloc+56))    !Tableau 20

allocate( young_gp(ntotg),         stat = alloc_stat(compt_alloc+18))    !Tableau 18

! allocate(gpcod_all_global(nelem,2*ngaus))    !Tableau 22

!allocate( gstif(mfron,mfron),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( gstif_temp(mfron,mfron),       stat = alloc_stat(compt_alloc+30))    !Tableau 30
!allocate( rgstif(nvfix,nvfix),       stat = alloc_stat(compt_alloc+31))    !Tableau 29
!allocate( gload(ntotv),       stat = alloc_stat(compt_alloc+32))    !Tableau 28
!allocate( gload_temp(ntotv),       stat = alloc_stat(compt_alloc+33))    !Tableau 29
!allocate( asdis_temp(ntotv),       stat = alloc_stat(compt_alloc+34))    !Tableau 28
!allocate( rgload(nvfix),       stat = alloc_stat(compt_alloc+35))    !Tableau 29
!allocate( rasdis(nvfix),       stat = alloc_stat(compt_alloc+36))    !Tableau 28


!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( ngrad(melem,4),       stat = alloc_stat(compt_alloc+29))    !Tableau 29





!allocate( dbmat(nnode,nevab),       stat = alloc_stat(compt_alloc+28))    !Tableau 28
!allocate( bmatx(nnode,nevab),       stat = alloc_stat(compt_alloc+29))    !Tableau 29
!allocate( dmatx(nnode,nnode),       stat = alloc_stat(compt_alloc+30))    !Tableau 30

!print *, "Nombre de tableaux dynamiques",SIZE(alloc_stat)


! Verification du succes des allocations
!do icompt=1,SIZE(alloc_stat)
!	if (alloc_stat(icompt) /= 0) then                   
!		print *, "Tableau n°",icompt,"Allocation dynamique: ERROR"
!		stop 
!	end if
!end do
!print *, " " !Mise en page de la sortie console

!  ***    FIN Zone des ALLOCATIONS DYNAMIQUES DE MEMOIRE   ****
