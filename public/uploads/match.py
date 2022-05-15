

def find_match(file,aos):
 with open("out_text.txt", encoding="utf8") as f:
     data=f.read()
     s=aos
     length=0
     occurance=1
     word=s.split(" ")
     for w in word:
       if w in data:
         occurance+=1
       length+=1

     #return(occurance/length*100)
     return(occurance/length*100)
