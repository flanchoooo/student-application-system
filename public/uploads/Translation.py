from encodings import utf_8
from PIL import Image 
import pytesseract 
from googletrans import Translator

pytesseract.pytesseract.tesseract_cmd = '/Program Files/Tesseract-OCR/tesseract.exe'

img = Image.open('portu.jpg')
result = pytesseract.image_to_string(img)
#print(result)

p = Translator() 
p_translated = p.translate(result, dest='english') 
translated = str(p_translated.text)


#print (result + "\n\n\n" + translated)

with open('reads.txt', mode ='w') as file: 
   file.write(result + "\n\n\n" + translated) 
   #print(translated)

   # detect a language
detection = p.detect(result)

#print(detection)
#print(translated)
print("Language code:", detection.lang)
print("Confidence:", detection.confidence)
# print the detected language
#print("Language:", result.LANGUAGES[detection.lang])