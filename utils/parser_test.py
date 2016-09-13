import urllib


for i in range(1, 294, 1):
    urllib.urlretrieve("image.slidesharecdn.com/el114digitallogicdesignbymorrismano-solutions-150226001220-conversion-gate02/95/digital-logic-design-by-morris-mano-solutions-manual-" + str(i) + "-638.jpg?cb=1424909835", str(i) + ".jpg")
print "exit succeeded !\n"
