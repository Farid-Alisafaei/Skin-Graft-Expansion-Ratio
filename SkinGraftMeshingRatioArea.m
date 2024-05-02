clear all
clc
%
%--------------------------------------------------------------------------
% Defining the coordinates for nodes on the left, top, right, and bottom sides.
% LeftNodes, TopNodes, RightNodes, and BottomNodes represent sets of node
% coordinates where first and second rows contain initial x-y coordinates,
% while third and fourth rows contain x-y coordinates after deformation.
%--------------------------------------------------------------------------
%

% Coordinates for the left nodes
LeftNodes = [0	5.91	0	3.81702
0	5.32	2.27E-38	3.19904
0	2.52	1.71E-38	1.85883
0	1.4	2.24E-38	6.86E-01
0	5.7625	0	3.66952
0	5.615	0	3.52217
0	5.4675	-3.22E-37	3.3738
0	2.36	-2.13E-37	1.67341
0	2.2	0	1.51347
0	2.04	0	1.3536
0	1.88	0	1.19359
0	1.72	0	1.03366
0	1.56	-1.79E-37	8.73E-01
0	1.8	0	1.1136
0	2.44	-1.36E-38	1.75956
0	5.54125	0	3.44833
0	5.68875	0	3.5958
0	5.83625	0	3.74327
0	5.39375	0	3.29092
0	2.28	0	1.59339
0	1.48	0	7.86E-01
0	1.64	0	9.54E-01
0	1.96	0	1.27359
0	2.12	0	1.43357] ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Coordinates for the top nodes
TopNodes = [3.9006	5.91	42.5086	5.91
3.9005	5.91	42.5085	5.91
1.01E-01	5.91	2.09113	3.81739
3.00E-01	5.91	2.29013	3.81744
3.01E-01	5.91	4.2824	3.81746
5.00E-01	5.91	4.4814	3.8175
5.01E-01	5.91	6.47354	3.81746
7.00E-01	5.91	6.67254	3.81749
7.01E-01	5.91	8.66455	3.81743
9.00E-01	5.91	8.86355	3.81745
9.01E-01	5.91	10.8554	3.81738
1.0995	5.91	11.0544	3.81739
1.1005	5.91	13.046	3.81731
1.2995	5.91	13.245	3.81731
1.3005	5.91	15.2364	3.81722
1.4995	5.91	15.4354	3.8172
1.5005	5.91	17.4265	3.81711
1.6995	5.91	17.6255	3.81708
1.7005	5.91	19.6163	3.81698
1.8995	5.91	19.8153	3.81692
1.9005	5.91	21.8055	3.81686
2.0995	5.91	22.0045	3.81678
2.1005	5.91	23.9941	3.81682
2.2995	5.91	24.1931	3.81673
2.3005	5.91	26.1818	3.81714
2.4995	5.91	26.3808	3.81705
2.5005	5.91	28.3683	3.81852
2.6995	5.91	28.5673	3.81854
2.7005	5.91	30.5526	3.82292
2.8995	5.91	30.7516	3.82332
2.9005	5.91	32.7328	3.83557
3.0995	5.91	32.9318	3.83709
3.1005	5.91	34.904	3.87014
3.2995	5.91	35.1029	3.8748
3.3005	5.91	37.053	3.96154
3.4995	5.91	37.2516	3.97462
3.5005	5.91	39.1442	4.19187
3.6995	5.91	39.3402	4.22625
3.7005	5.91	41.1035	4.7078
3.8995	5.91	41.287	4.78487
0	5.91	0	3.81702
9.95E-02	5.91	9.95E-02	3.81702
0	5.32	2.27E-38	3.19904
0	5.7625	0	3.66952
0	5.615	0	3.52217
0	5.4675	-3.22E-37	3.3738
3.90055	5.91	42.5086	5.91
2.00E-01	5.91	2.19063	3.81742
4.00E-01	5.91	4.3819	3.81748
6.00E-01	5.91	6.57304	3.81748
8.00E-01	5.91	8.76405	3.81744
1	5.91	10.9549	3.81738
1.2	5.91	13.1455	3.81731
1.4	5.91	15.3359	3.81721
1.6	5.91	17.526	3.81709
1.8	5.91	19.7158	3.81695
2	5.91	21.905	3.81682
2.2	5.91	24.0936	3.81678
2.4	5.91	26.2813	3.8171
2.6	5.91	28.4678	3.81853
2.8	5.91	30.6521	3.82312
3	5.91	32.8323	3.83633
3.2	5.91	35.0034	3.87247
3.4	5.91	37.1523	3.96808
3.6	5.91	39.2422	4.20906
3.8	5.91	41.1952	4.74634
4.98E-02	5.91	4.97E-02	3.81702
0	5.54125	0	3.44833
0	5.68875	0	3.5958
0	5.83625	0	3.74327
0	5.39375	0	3.29092];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Coordinates for the right nodes
RightNodes = [3.9006	5.91	42.5086	5.91
3.9006	0	42.5086	0
3.9006	5.75846	42.5086	5.75846
3.9006	5.60692	42.5086	5.60692
3.9006	5.45538	42.5086	5.45538
3.9006	5.30385	42.5086	5.30385
3.9006	5.15231	42.5086	5.15232
3.9006	5.00077	42.5084	5.00086
3.9006	4.84923	42.5072	4.84969
3.9006	4.69769	42.5014	4.69757
3.9006	4.54615	42.4879	4.54639
3.9006	4.39462	42.5155	4.38723
3.9006	4.24308	42.5091	4.23743
3.9006	4.09154	42.5087	4.0893
3.9006	3.94	42.5086	3.93876
3.9006	3.78846	42.5086	3.78714
3.9006	3.63692	42.509	3.63418
3.9006	3.48538	42.5067	3.47428
3.9006	3.33385	42.5058	3.31949
3.9006	3.18231	42.5068	3.18744
3.9006	3.03077	42.5089	3.03078
3.9006	2.87923	42.5086	2.8792
3.9006	2.72769	42.5086	2.72769
3.9006	2.57615	42.5086	2.57615
3.9006	2.42462	42.5086	2.42462
3.9006	2.27308	42.5086	2.27308
3.9006	2.12154	42.5086	2.12154
3.9006	1.97	42.5086	1.97
3.9006	1.81846	42.5086	1.81846
3.9006	1.66692	42.5086	1.66692
3.9006	1.51538	42.5086	1.51538
3.9006	1.36385	42.5086	1.36385
3.9006	1.21231	42.5086	1.21231
3.9006	1.06077	42.5086	1.06077
3.9006	9.09E-01	42.5084	9.09E-01
3.9006	7.58E-01	42.5064	7.59E-01
3.9006	6.06E-01	42.4925	6.20E-01
3.9006	4.55E-01	42.5103	4.57E-01
3.9006	3.03E-01	42.5087	3.03E-01
3.9006	1.52E-01	42.5086	1.52E-01
3.9006	3.10654	42.5056	3.1049
3.9006	2.955	42.5086	2.95498
3.9006	2.80346	42.5086	2.80345
3.9006	2.65192	42.5086	2.65192
3.9006	2.50038	42.5086	2.50038
3.9006	2.34885	42.5086	2.34885
3.9006	2.19731	42.5086	2.19731
3.9006	5.83423	42.5086	5.83423
3.9006	5.68269	42.5086	5.68269
3.9006	5.53115	42.5086	5.53115
3.9006	5.37962	42.5086	5.37962
3.9006	5.22808	42.5086	5.22808
3.9006	5.07654	42.5087	5.07655
3.9006	4.925	42.5092	4.92503
3.9006	4.77346	42.5117	4.77561
3.9006	4.62192	42.519	4.61778
3.9006	4.47038	42.4996	4.46807
3.9006	4.31885	42.5102	4.31128
3.9006	4.16731	42.5086	4.16394
3.9006	4.01577	42.5086	4.01424
3.9006	3.86423	42.5086	3.86309
3.9006	3.71269	42.5086	3.71098
3.9006	3.56115	42.5093	3.55625
3.9006	3.40962	42.5005	3.39043
3.9006	3.25808	42.5083	3.25895
3.9006	3.06865	42.5102	3.06814
3.9006	2.91712	42.5086	2.91708
3.9006	2.76558	42.5086	2.76557
3.9006	2.61404	42.5086	2.61404
3.9006	2.4625	42.5086	2.4625
3.9006	2.31096	42.5086	2.31096
3.9006	2.15942	42.5086	2.15942
3.9006	2.04577	42.5086	2.04577
3.9006	1.89423	42.5086	1.89423
3.9006	1.74269	42.5086	1.74269
3.9006	1.59115	42.5086	1.59115
3.9006	1.43962	42.5086	1.43962
3.9006	1.28808	42.5086	1.28808
3.9006	1.13654	42.5086	1.13654
3.9006	9.85E-01	42.5087	9.85E-01
3.9006	8.33E-01	42.5093	8.33E-01
3.9006	6.82E-01	42.5148	6.78E-01
3.9006	5.30E-01	42.5058	5.39E-01
3.9006	3.79E-01	42.5091	3.79E-01
3.9006	2.27E-01	42.5086	2.27E-01
3.9006	7.58E-02	42.5086	7.58E-02
3.9006	3.14442	42.5142	3.14148
3.9006	2.99288	42.5087	2.99291
3.9006	2.84135	42.5086	2.84133
3.9006	2.68981	42.5086	2.68981
3.9006	2.53827	42.5086	2.53827
3.9006	2.38673	42.5086	2.38673
3.9006	2.23519	42.5086	2.23519];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Coordinates for the bottom nodes
BottomNodes = [3.9006	0	42.5086	0
5.00E-04	0	9.97E-01	0
2.00E-01	0	1.19612	0
2.01E-01	0	3.19035	0
4.00E-01	0	3.38936	0
4.01E-01	0	5.38355	0
6.00E-01	0	5.58255	0
6.01E-01	0	7.57677	0
8.00E-01	0	7.77578	0
8.01E-01	0	9.77005	0
1.00E+00	0	9.96906	0
1.0005	0	11.9634	0
1.1995	0	12.1624	0
1.2005	0	14.1569	0
1.3995	0	14.3559	0
1.4005	0	16.3505	0
1.5995	0	16.5495	0
1.6005	0	18.5443	0
1.7995	0	18.7433	0
1.8005	0	20.7383	0
1.9995	0	20.9373	0
2.0005	0	22.9324	0
2.1995	0	23.1314	0
2.2005	0	25.1268	0
2.3995	0	25.3258	0
2.4005	0	27.3214	0
2.5995	0	27.5204	0
2.6005	0	29.5162	0
2.7995	0	29.7151	0
2.8005	0	31.7112	0
2.9995	0	31.91	0
3.0005	0	33.9064	0
3.1995	0	34.1049	2.74E-38
3.2005	0	36.1016	0
3.3995	0	36.2991	7.30E-38
3.4005	0	38.2939	0
3.5995	0	38.4889	1.94E-37
3.6005	0	40.466	0
3.7995	0	40.6546	5.50E-37
3.8005	0	42.4085	0
3.85055	0	42.4586	0
1.00E-01	0	1.09662	0
3.00E-01	0	3.28986	0
5.00E-01	0	5.48305	0
7.00E-01	0	7.67627	0
9.00E-01	0	9.86955	0
1.1	0	12.0629	0
1.3	0	14.2564	0
1.5	0	16.45	0
1.7	0	18.6438	0
1.9	0	20.8378	0
2.1	0	23.0319	0
2.3	0	25.2263	0
2.5	0	27.4209	0
2.7	0	29.6156	0
2.9	0	31.8106	0
3.1	0	34.0057	0
3.3	0	36.2004	0
3.5	0	38.3915	0
3.7	0	40.5604	0];

%--------------------------------------------------------------------------
% Sorting nodes and preparing for plotting
%--------------------------------------------------------------------------
%
% node coordinate before stretching
%
x_LeftNodes = LeftNodes(:,1) ;
y_LeftNodes = LeftNodes(:,2) ;
[y_LeftNodes_Sorted , Index_y_LeftNodes] = sort( y_LeftNodes );
x_LeftNodes_Sorted = x_LeftNodes(Index_y_LeftNodes);
%
x_TopNodes = TopNodes(:,1) ;
y_TopNodes = TopNodes(:,2) ;
[x_TopNodes_Sorted , Index_x_TopNodes] = sort( x_TopNodes ) ;
y_TopNodes_Sorted = y_TopNodes(Index_x_TopNodes) ;
%
x_RightNodes = RightNodes(:,1) ;
y_RightNodes = RightNodes(:,2) ;
[y_RightNodes_Sorted , Index_y_RightNodes] = sort( y_RightNodes ) ;
x_RightNodes_Sorted = x_RightNodes(Index_y_RightNodes) ;
%
x_BottomNodes = BottomNodes(:,1) ;
y_BottomNodes = BottomNodes(:,2) ;
[x_BottomNodes_Sorted , Index_x_BottomNodes] = sort( x_BottomNodes ) ;
y_BottomNodes_Sorted = y_BottomNodes(Index_x_BottomNodes) ;
%
% Plotting the sorted nodes for visualization
figure
plot( x_LeftNodes_Sorted   , y_LeftNodes_Sorted   , 'bo-' )
hold on
plot( x_TopNodes_Sorted    , y_TopNodes_Sorted    , 'ro-' )
hold on
plot( x_RightNodes_Sorted  , y_RightNodes_Sorted  , 'ko-' )
hold on
plot( x_BottomNodes_Sorted , y_BottomNodes_Sorted , 'mo-' )
set(gca,'box','off')
%
%--------------------------------------------------------------------------
%
% node coordinate after stretching
%
X_LeftNodes = LeftNodes(:,3) ;
Y_LeftNodes = LeftNodes(:,4) ;
[Y_LeftNodes_Sorted , Index_Y_LeftNodes] = sort( Y_LeftNodes ) ;
X_LeftNodes_Sorted = X_LeftNodes(Index_Y_LeftNodes) ;
%
X_TopNodes = TopNodes(:,3) 
Y_TopNodes = TopNodes(:,4) 
[X_TopNodes_Sorted , Index_X_TopNodes] = sort( X_TopNodes ); 
Y_TopNodes_Sorted = Y_TopNodes(Index_X_TopNodes) 
%
X_RightNodes = RightNodes(:,3) ;
Y_RightNodes = RightNodes(:,4) ;
[Y_RightNodes_Sorted , Index_Y_RightNodes] = sort( Y_RightNodes ) ;
X_RightNodes_Sorted = X_RightNodes(Index_Y_RightNodes) ;
%
X_BottomNodes = BottomNodes(:,3) ;
Y_BottomNodes = BottomNodes(:,4) ;
[X_BottomNodes_Sorted , Index_X_BottomNodes] = sort( X_BottomNodes ) ;
Y_BottomNodes_Sorted = Y_BottomNodes(Index_X_BottomNodes) ;
%
% Plotting the sorted nodes for visualization
figure
plot( X_LeftNodes_Sorted   , Y_LeftNodes_Sorted   , 'bo-' )
hold on
plot( X_TopNodes_Sorted    , Y_TopNodes_Sorted    , 'ro-' )
hold on
plot( X_RightNodes_Sorted  , Y_RightNodes_Sorted  , 'ko-' )
hold on
plot( X_BottomNodes_Sorted , Y_BottomNodes_Sorted , 'mo-' )
hold on
plot( [X_TopNodes_Sorted(1),X_TopNodes_Sorted(end)]       , [Y_TopNodes_Sorted(1),Y_TopNodes_Sorted(end)]       , 'g-' )
hold on
plot( [X_BottomNodes_Sorted(1),X_BottomNodes_Sorted(end)] , [Y_BottomNodes_Sorted(1),Y_BottomNodes_Sorted(end)] , 'g-' )
set(gca,'box','off')
%
%--------------------------------------------------------------------------
%
% calculating the areas
%
% areas before stretching
area_LeftNodes_Sorted   = integration_discrete_data( x_LeftNodes_Sorted   , y_LeftNodes_Sorted   ) 
area_TopNodes_Sorted    = integration_discrete_data( x_TopNodes_Sorted    , y_TopNodes_Sorted    ) 
area_RightNodes_Sorted  = integration_discrete_data( x_RightNodes_Sorted  , y_RightNodes_Sorted  ) 
area_BottomNodes_Sorted = integration_discrete_data( x_BottomNodes_Sorted , y_BottomNodes_Sorted ) 
%
disp('---------')
%
% areas after stretching
Area_LeftNodes_Sorted   = integration_discrete_data( X_LeftNodes_Sorted   , Y_LeftNodes_Sorted   ) 
Area_TopNodes_Sorted    = integration_discrete_data( X_TopNodes_Sorted    , Y_TopNodes_Sorted    ) 
Area_RightNodes_Sorted  = integration_discrete_data( X_RightNodes_Sorted  , Y_RightNodes_Sorted  ) 
Area_BottomNodes_Sorted = integration_discrete_data( X_BottomNodes_Sorted , Y_BottomNodes_Sorted ) 
%
% areas after stretching assuming straigth cut
Area_TopNodes_Sorted_StraightCut    = integration_discrete_data( [X_TopNodes_Sorted(1),X_TopNodes_Sorted(end)]       , [Y_TopNodes_Sorted(1),Y_TopNodes_Sorted(end)]       ) 
Area_BottomNodes_Sorted_StraightCut = integration_discrete_data( [X_BottomNodes_Sorted(1),X_BottomNodes_Sorted(end)] , [Y_BottomNodes_Sorted(1),Y_BottomNodes_Sorted(end)] ) 
%
disp('---------')
%
% total area
total_area = area_TopNodes_Sorted - area_BottomNodes_Sorted
Total_Area = Area_TopNodes_Sorted - Area_BottomNodes_Sorted
%
% total area assuming straigth cut
Total_Area_StraightCut = Area_TopNodes_Sorted_StraightCut - Area_BottomNodes_Sorted_StraightCut
%
disp('---------')
%
% actual mesh ratio
Actual_Ratio = Total_Area / total_area
%
% actual mesh ratio assuming straigth cut
Actual_Ratio_StraightCut = Total_Area_StraightCut / total_area






