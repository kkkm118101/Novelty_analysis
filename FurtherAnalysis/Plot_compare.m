
XTick={'H1'	'H2'	'N1'	'N2'	'N3'	'N4'	'N5'	'N6'	'N7'	'N8'	'N9'	'N10'	'N11'	'N12'};
%XTick={'H1'	'H2'	'N1'	'N2'};
X=1:14;
Y_dis=[0.0162786821	0.0086115895	0.0583365743	0.0663925774	0.1062836824	0.071726207	0.0840046669	0.081671204	0.0870048336	0.0568364909	0.0548363798	0.0714484138	0.0627812656	0.0822267904;
0.0207233735	0.0123340186	0.1754541919	0.0877826546	0.102783488	0.0898383244	0.076226457	0.0269459414	0.0521140063	0.0998388799	0.1270070559	0.0839491083	0.0547808212	0.0972276238;
0.0172787377	0.0243346853	0.1802322351	0.0671703984	0.0805044725	0.1811211734	0.1895105284	0.1107839324	0.1185065837	0.1607311517	0.0540030002	0.0947830435	0.0553919662	0.0564475804;
0.0305016945	0.0166675926	0.0219456636	0.0073337408	0.0106117007	0.0055003056	0.013667426	0.0179454414	0.0321128952	0.0382799044	0.0345574754	0.089116062	0.0713928552	0.0401688983;
0.0202789044	0.0540585588	0.0267237069	0.0245569198	0.0237790988	0.0284460248	0.0336685371	0.0410578365	0.0320017779	0.031057281	0.0352241791	0.0315017501	0.03027946	0.0526140341;
0.0263347964	0.0075559753	0.0253347408	0.0364464692	0.0222790155	0.0290016112	0.0350019446	0.0365575865	0.0380576699	0.0435024168	0.0201122285	0.020334463	0.0387799322	0.0298905495;]

Y_ang=[0.0392244014	0.0581143397	0.0854491916	0.1019501083	0.0612256236	0.068781599	0.0805044725	0.0787265959	0.0993944108	0.0601144508	0.0789488305	0.0973942997	0.1100616701	0.0901716762;
0.0342241236	0.0411133952	0.1005611423	0.0564475804	0.0832268459	0.0761708984	0.0436135341	0.0364464692	0.0755597533	0.0556697594	0.111006167	0.1030057225	0.0392244014	0.0465025835;
0.0342796822	0.0446691483	0.1093394077	0.0559475526	0.0646702595	0.1002833491	0.1233957442	0.0996166454	0.0951163954	0.1016723151	0.0681704539	0.0865048058	0.0642257903	0.1113950775;
0.0422801267	0.0326684816	0.0997277627	0.0655591977	0.0372242902	0.0380021112	0.0467803767	0.0411133952	0.0576698705	0.055891994	0.0521140063	0.0572254014	0.0510583921	0.0515028613;
0.0645035835	0.0837268737	0.170009445	0.0830046114	0.1187843769	0.1051169509	0.0695038613	0.0675593089	0.0751152842	0.1101727874	0.0708372687	0.0942830157	0.1302294572	0.0761153397;
0.0303905773	0.0397799878	0.0976165343	0.0857269848	0.0436690927	0.0486138119	0.055891994	0.0560031113	0.0867270404	0.0847824879	0.0571698428	0.0521140063	0.0837268737	0.059003278;]


condavg=mean(Y_dis(1:3,:));
studavg=mean(Y_dis(4:6,:));

conaavg=mean(Y_ang(1:3,:));
stuaavg=mean(Y_ang(4:6,:));

condstd=std(Y_dis(1:3,:));
studstd=std(Y_dis(4:6,:));

conastd=std(Y_ang(1:3,:));
stuastd=std(Y_ang(4:6,:));


disfig=figure(1)
errorbar(X,studavg,studstd)
hold on
errorbar(X,condavg,condstd)
hold on
scatter(X,Y_dis(4,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_dis(5,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_dis(6,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_dis(1,:),'Marker','o','MarkerFaceColor','r')
hold on
scatter(X,Y_dis(2,:),'Marker','o','MarkerFaceColor','r')
hold on
scatter(X,Y_dis(3,:),'Marker','o','MarkerFaceColor','r')
title('Time spent at obj in first 10 min (percentage) Radius=50 (8.6cm)')
ylabel('Percentage')
legend('Stimulus','Contextual')
xticks(X);
xticklabels(XTick);
axis([X(1)-0.5 X(end)+0.5 0 max(max(Y_dis))+0.1]);


angfig=figure(2)
errorbar(X,stuaavg,stuastd)
hold on
errorbar(X,conaavg,conastd)
hold on
scatter(X,Y_ang(4,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_ang(5,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_ang(6,:),'Marker','o','MarkerFaceColor','b')
hold on
scatter(X,Y_ang(1,:),'MarkerFaceColor','r')
hold on
scatter(X,Y_ang(2,:),'Marker','o','MarkerFaceColor','r')
hold on
scatter(X,Y_ang(3,:),'Marker','o','MarkerFaceColor','r')

title('Orientation at obj in first 10 min (percentage) Radius=+-15 degree')
ylabel('Percentage')
legend('Stimulus','Contextual')
xticks(X);
xticklabels(XTick);
axis([X(1)-0.5 X(end)+0.5 0 max(max(Y_ang))+0.1]);

saveas(disfig,'Distance_compare.png')
saveas(angfig,'Angle_compare.png')