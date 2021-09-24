

#for((i=1;i<=100;i=i+4));
#do
#    for((j=i+1;j<=i+3;j++));
#    do
#    python main.py \
#        --is_train False \
#        --input_dir D:/SRNTT/ClassB_ceshi/aks/input/BasketballDrive33_x2/SRNTT$j.png \
#        --ref_dir D:/SRNTT/ClassB_ceshi/aks/ref/BasketballDrive43/SRNTT$i.png \
#        --use_init_model_only False \
#        --result_dir D:/SRNTT/ClassB_ceshi/aks/jieguo/QP43SRNTT/$j \
#        --save_dir init_epoch2+epoch30+CUFED_epoch5
#    done
#done


##array=(1 6	11	15	20	24	28	33	38	44	49	54	58	62	66	71	75	80	84	89	94	98	103)
##array=(1	7	13	19	24	30	36	43	51	59	64	69	73	76	80	85	90	96	102	)
##array=(1	5	9	13	17	21	25	29	33	37	41	45	49	53	57	61	65	69	73	77	81	85	89	93	97 101)
#array=(1 3	5	7	9	11	13	15	17	19	21	23	25	27	29	31	33	35	37	39	41	43	45	47	49	51	53	55	57	59	61	63	65	67	69	71	73	75	77	79	81	83	85	87	89	91	93	95 97	99 101)
##array=(95 97)
#array1=(39 43 47 51)
#array2=(37 41 45 49)
#y=${#array[*]};
#for((s=0;s<=3;s++));
#do
#    for((t=0;t<y;t++));
#    do
#      o=$t;
#      for((m=array1[s],n=array2[s],i=array[o],j=i+1;j<array[o+1];j++));
#      do
#          python main.py \
#              --is_train False \
#              --input_dir C:/Users/yl/Desktop/ceshi/input/RaceHorsesx2_$m/SRNTT$j.png \
#              --ref_dir C:/Users/yl/Desktop/ceshi/ref/RaceHorses$n/SRNTT$i.png \
#              --use_init_model_only False \
#              --result_dir C:/Users/yl/Desktop/ceshi/RaceHorses/SRNTTQP$n/$j \
#              --save_dir init_epoch2+epoch30+CUFED_epoch5
#      done
#    done
#done

#array0=(BasketballPass BlowingBubbles BQSquare RaceHorses)
array0=(RaceHorses)
#array0=(FourPeople Johnny KristenAndSara)
#array0=(BasketballDrill BQMall PartyScene RaceHorses)
#array0=(Kimono1 ParkScene Cactus BasketballDrive BQTerrace)
#array0=(PeopleOnStreet Traffic)
array1=(32 35 38 41)
array2=(41 44 47 50)
#y=${#array[*]};
for((k=0;k<1;k=k+1));
do
  for((s=0;s<=3;s++));
  do
      for((m=array1[s],n=array2[s],j=2;j<=100;j=j+2));
      do
          python main.py \
              --is_train False \
              --input_dir D:/SRNTT/AI/ClassD_ceshi/${array0[k]}/input/x2_$m/SRNTT$j.png \
              --ref_dir D:/SRNTT/AI/ClassD_ceshi/${array0[k]}/ref1/$n/SRNTT$j.png \
              --use_init_model_only False \
              --result_dir D:/SRNTT/AI/ClassD_ceshi/jieguo1/${array0[k]}/SRNTTQP$n/$j \
              --save_dir init_epoch2+epoch30+CUFED_epoch5
      done
  done
done

#    python main.py \
#        --is_train False \
#        --input_dir D:/SRNTT/AI/ClassD_ceshi/BasketballPass/input1/x2_32/SRNTT2.png \
#        --ref_dir D:/SRNTT/AI/ClassD_ceshi/BasketballPass/ref/42/SRNTT2.png \
#        --use_init_model_only False \
#        --result_dir D:/SRNTT/AI/ClassD_ceshi/BasketballPass/42_1/\
#        --save_dir init_epoch2+epoch30+CUFED_epoch5


