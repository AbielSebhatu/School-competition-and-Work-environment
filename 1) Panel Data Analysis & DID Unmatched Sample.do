
*set directory for dataset
cd "...your directory..."

*insert data
use "1) Panel Dataset & DID Unmatched.dta", clear


*MAIN PANEL DATA ANALYSIS


*Results: Panel data analysis
		
	*Upper secondary school, LSM fe
	xtmixed complaints lsm_herf lsm_density lsm_sistud i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
	outreg2 using "main2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) replace  ctitle(Complaints)
	xtmixed disorder lsm_herf lsm_density lsm_sistud i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
	outreg2 using "main2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Disorder)
	xtmixed violence lsm_herf lsm_density lsm_sistud i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
	outreg2 using "main2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Violence)
	seeout using "main2.txt", label
						
			*APPENDIX, each competition variable separately
			xtmixed complaints lsm_herf   i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u1.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) replace  ctitle(Complaints)
			xtmixed disorder lsm_herf  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u1.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Disorder)
			xtmixed violence lsm_herf  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u1.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Violence)
			seeout using "main2u1.txt", label
		
			xtmixed complaints lsm_density   i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) replace  ctitle(Complaints)
			xtmixed disorder lsm_density  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Disorder)
			xtmixed violence lsm_density  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || lsmarket:, || lsmarket:, ml var
			outreg2 using "main2u2.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Violence)
			seeout using "main2u2.txt", label

			xtmixed complaints lsm_sistud   i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u3.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) replace  ctitle(Complaints)
			xtmixed disorder lsm_sistud  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u3.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Disorder)
			xtmixed violence lsm_sistud  i.edu_trac hs_forbac hs_edupar lsm_minclog lsm_crime i.orgform hs_ctea hs_sctea s_sizelog i.year i.lsmarket if school_type==2 & year>1998, || school_id:, || lsmarket:, ml var
			outreg2 using "main2u3.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(Year dummies, YES) addstat ("-2LL",e(ll),"df",e(df_m)) append  ctitle(Violence)
			seeout using "main2u3.txt", label

			
*DIFFERENCE IN DIFFERENCE UNMATCHED SAMPLE

*complaints
	xtreg complaints hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	seeout using "didnm1a.txt", label	
*disorder
	xtreg disorder hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1b", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Disorder)
	xtreg disorder hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1b", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Disorder)
	xtreg disorder hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1b", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Disorder)
	xtreg disorder hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1b", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Disorder)
	seeout using "didnm1b", label	
*violence
	xtreg violence hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1c", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Violence)
	xtreg violence hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1c", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Violence)
	xtreg violence hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1c", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Violence)
	xtreg violence hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , fe i(school_id) cl(municipality)
	outreg2 using "didnm1c", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Violence)
	seeout using "didnm1c", label	



*ROBUSTNESS TEST Table 8 model 1
	replace hs_post=1 if hs_comp==3 & hs_density>1 
	replace hs_post=0 if hs_comp==3 & hs_density==1 
	replace hs_post=. if hs_comp==3 & municipality==1287
	replace hs_post=. if hs_comp==3 & municipality==1494
	replace hs_post=. if hs_comp==3 & municipality==1760
	replace hs_post=. if hs_comp==3 & municipality==1907
	replace hs_post=. if hs_comp==3 & municipality==2181
	replace hs_post=. if hs_comp==3 & municipality==2184
	replace hs_post=. if hs_comp==3 & municipality==2280

	sort municipality school_id year
	gen postpost =year if hs_comp==3 & hs_density==1 & hs_density[_n-1]>1 & school_id==school_id[_n-1]
	egen maxpostpost=max(postpost), by(municipality)
	replace hs_post=. if hs_comp==3 & year>=maxpostpost
		drop postpost maxpost

	*table 8 model 1
	xtreg complaints hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm4a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm4a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm4a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm4a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	seeout using "didnm4a.txt", label	
	seeout using "didnm4a", label

	*Table 8 model 2
	replace hs_post=. if municipality==761
	replace hs_post=. if municipality==1060
	replace hs_post=. if municipality==1315
	replace hs_post=. if municipality==1781
	
	xtreg complaints hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm5a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm5a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm5a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm5a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	seeout using "didnm5a.txt", label	
	seeout using "didnm5a", label

	*Table 8  model 3
	replace hs_post=. if municipality==140
	replace hs_post=. if municipality==187 /*unsure*/
	replace hs_post=. if municipality==604
	replace hs_post=. if municipality==1270
	xtreg complaints hs_post i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm6a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) replace  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm6a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm6a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	xtreg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar  s_sizelog minclog crime poplog i.edu_trac i.year if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 | year>1998 & school_type==2 & hs_comp==3 & municipality!=586 & municipality!=1315, fe i(school_id) cl(municipality)
	outreg2 using "didnm6a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) addsta(Adjusted R-square, e(r2_a), F, e(F), Within R-square, e(r2_w), Between R-square, e(r2_b), Overall R-square, e(r2_o), Log likelihood, e(ll)) append  ctitle(Complaints)
	seeout using "didnm6a.txt", label	
	
	
*Propensity Score Weighting (PSW)

*Table 9 model 1: school & municipality SES + school & municipality size
logit hs_post hs_forbac hs_edupar minclog crime s_sizelog poplog if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 
predict preprob2, pr
gen psweight=.
replace psweight=(1/preprob2) if hs_post==1
replace psweight=(1/(1-preprob2)) if hs_post==0

reg complaints hs_post i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm8a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) replace  ctitle(Complaints)
reg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm8a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
reg complaints hs_post  minclog crime poplog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm8a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
reg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog minclog crime poplog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm8a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
seeout using "didnm8a", label

*Table 9 model 2: alla covariates
drop preprob2 psweight
logit hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog minclog crime poplog i.edu_trac if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 
predict preprob2, pr
gen psweight=.
replace psweight=(1/preprob2) if hs_post==1
replace psweight=(1/(1-preprob2)) if hs_post==0

reg complaints hs_post i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm9a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) replace  ctitle(Complaints)
reg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm9a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
reg complaints hs_post  minclog crime poplog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm9a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
reg complaints hs_post hs_ctea hs_sctea hs_forbac hs_edupar s_sizelog minclog crime poplog i.edu_trac i.year i.school_id [pweight=psweight] if year>1998 & school_type==2 & hs_comp==0 & municipality!=586 & municipality!=1315  | year>1998 & school_type==2 & hs_comp==1 & municipality!=586 & municipality!=1315 , cl(municipality)
outreg2 using "didnm9a.txt", label bdec(3) rdec(3) excel symbol(***, **, *, +) alpha(0.001, 0.01, 0.05, 0.10) addtext(School FE, YES, Municipality FE, NO, Year dummies, YES, Regression Model, GLS) append  ctitle(Complaints)
seeout using "didnm9a", label
