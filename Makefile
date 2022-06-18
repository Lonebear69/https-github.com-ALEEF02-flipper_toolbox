


FILES=create_sub_dat.py \
	gen_url_nfc.py gen_all_ir_codes.py \
	prox2flip.py subghz_histogram.py

all: pylint

pylint:
	for targ in ${FILES} ; do \
		echo $$targ ; \
		pylint $$targ  ; \
	done

# python -m py_compile $$targ ; \

clean:
	@/bin/rm -fr *sub *.ir *.nfc touch_tunes-???