#!/bin/bash

# This is a bash script that makes an HTML index to display all images
# downloaded from website.tar.gz

# Create array of all files in images folder

image_directory=(/home/markherrera/Desktop/1D-Computing-Basics-mooqita-challenge/challenge-repo/website/images/*)

# Remove spaces from image filenames

#cd $image_directory
#
#for i in * ; do
#	mv "$i" `echo $i | tr ' ' '_'`
#done

##^^This is commented out to avoid rerunning during testing of other parts of the script.

# Loop through array of image file names and print each one

counter=0
for i in ${image_directory[@]} ; do
	echo "$i"
	counter=$((counter+1))
done

# Print length of image_files array

echo "Counter:"
echo "There are $counter image files."
echo ""
echo "Length of image_files array:"
echo ${#image_directory[@]}

# List the first three items in the image_files array

echo ""
echo ${image_directory[0]}
echo ${image_directory[1]}
echo ${image_directory[2]}

# Create file using HTML from given index.html file

#cat << FILE
#	<!doctype html>
#	<html>
#	  <head>
#	    <title>This is the title of the webpage!</title>
#	  </head>
#	  <body>
#	   <center>
#	    <h1>MATH COLLECTION</h1>
#	   </center>
#
#	  <table border="5" bordercolor="red" align="center">
#	    <tr>
#	        <th colspan="3">PICTURES</th>
#	    </tr>
#	    <tr>
#	        <td><img src="images/CircleGradient2GoldenRectangle.png" alt="" border=>
#	        <td><img src="Gráfico de dos funciones 01.jpg" alt="" border=3 height=1>
#	        <td><img src="images/Calculus- the graph of y = 4-5x^3 - 2x^2 + 1.png" >
#	    </tr>
#	    <tr>
#	        <td><img src="images/1-6 Rossler Skeleton.png" alt="" border=3 height=1>
#	        <td><img src="images/CUADRATURA DEL CIRCULO FACIL.png" alt="" border=3 >
#	    </tr>
#	  </table>
#	  </body>
#	</html>
#FILE
##
