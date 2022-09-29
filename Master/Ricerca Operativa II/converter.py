import os
import pikepdf
files = [f for f in os.listdir('.') if os.path.isfile(f)]
for f in files:
	print(f)
	if f.endswith(".pdf"):
		pdf = pikepdf.open(f,allow_overwriting_input=True)
		pdf.save(f)
		continue
