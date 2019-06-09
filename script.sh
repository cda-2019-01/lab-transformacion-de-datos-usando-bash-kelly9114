# Escriba su código aquí


for filename in *csv ; do  cp $filename inicial-$filename; done


sed "$ d" inicial-data1.csv  > s1.csv
sed "1 d" inicial-data2.csv > s2.csv


awk 'BEGIN{i=1} /.*/{printf "%d,% s\n",i,$0; i++}' s1.csv > ndata1.csv
awk 'BEGIN{i=1} /.*/{printf "%d,% s\n",i,$0; i++}' s2.csv > ndata2.csv
awk 'BEGIN{i=1} /.*/{printf "%d,% s\n",i,$0; i++}' inicial-data3.csv > ndata3.csv


for f in n*.csv; do  sed -i " s/^/$f,/" "$f" ; done


sed 's/n//g' ndata1.csv > final1.csv
sed 's/n//g' ndata2.csv > final2.csv
sed 's/n//g' ndata3.csv > final3.csv



sed 's/\s/,/' final1.csv > p1.csv
sed 's/\s/,/' final2.csv > c2.csv
sed 's/\s/,/' final3.csv > p3.csv
sed 's/\s //' c2.csv > p2.csv
rm c2.csv



for LINEA in p1.csv ; do  
awk -F, '{print $1","$2","$3","$4}' p1.csv; 
awk -F, '{print $1","$2","$3","$5}' p1.csv; 
awk -F, '{print $1","$2","$3","$6}' p1.csv; 
awk -F, '{print $1","$2","$3","$7}' p1.csv; 
awk -F, '{print $1","$2","$3","$8}' p1.csv; 
awk -F, '{print $1","$2","$3","$9}' p1.csv; done > out1.csv


for LINEA in p2.csv ; do  
awk -F, '{print $1","$2","$3","$4}' p2.csv; 
awk -F, '{print $1","$2","$3","$5}' p2.csv; 
awk -F, '{print $1","$2","$3","$6}' p2.csv; 
awk -F, '{print $1","$2","$3","$7}' p2.csv;
awk -F, '{print $1","$2","$3","$8}' p2.csv;  
awk -F, '{print $1","$2","$3","$9}' p2.csv; done > out2.csv



for LINEA in p3.csv ; do  
awk -F, '{print $1","$2","$3","$4}' p3.csv; 
awk -F, '{print $1","$2","$3","$5}' p3.csv; 
awk -F, '{print $1","$2","$3","$6}' p3.csv; 
awk -F, '{print $1","$2","$3","$7}' p3.csv;
awk -F, '{print $1","$2","$3","$8}' p3.csv;  
awk -F, '{print $1","$2","$3","$9}' p3.csv; done > out3.csv



sed '/,$/d' out1.csv > term1.csv
sed '/,$/d' out2.csv > term2.csv
sed '/,$/d' out3.csv > term3.csv


sort -t, -s  -n -k 2,2 term1.csv > final_1.csv
sort -t, -s  -n -k 2,2 term2.csv > final_2.csv
sort -t, -s  -n -k 2,2 term3.csv > final_3.csv


cat final_1.csv final_2.csv final_3.csv 

#Eliminar archivos
rm o*.csv
rm p*.csv
rm t*.csv
rm f*.csv
rm s*.csv
rm i*.csv
rm n*.csv
