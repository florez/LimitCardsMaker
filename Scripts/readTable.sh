counter=1
limitCard=zprimeETau_dataCard
while read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    counter=`expr $counter + 1`

    for sig in 2 3 4
    do

     eval signalcol=\$col$sig
       
     cp $limitCard".txt" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:SIGNAL:$signalcol:g"   $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DATA:$col1:g"     $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:WJETS:$col5:g"    $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DYTOLL:$col6:g"   $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:TTBAR:$col7:g"    $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DIBOSON:$col8:g" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:QCD:$col9:g" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:HIGGS:$col10:g" $limitCard"_signal_"$sig"_"$counter".txt"
    done
done < output_eTau_yields_new.txt

counter=1
while read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    counter=`expr $counter + 1`

    for sig in 2 3 4
    do

     eval signalcol=\$col$sig

     sed -i .bak "s:DUMMY0:$signalcol:g"   $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY1:$col5:g"    $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY2:$col6:g"    $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY3:$col7:g"   $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY4:$col8:g" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY5:$col9:g" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:DUMMY6:$col10:g" $limitCard"_signal_"$sig"_"$counter".txt"
     sed -i .bak "s:BIN:$counter:g" $limitCard"_signal_"$sig"_"$counter".txt"
    done
done < output_eTau_uncer_new.txt
rm *.bak

