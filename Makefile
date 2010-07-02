all: rom run

rom: odc2.rom

run: odc2.rom
	o2em odc2.rom

odc2.rom: odc2.p
	p2bin $< $@ -r \$$400-\$$fff

%.p: %.a48
	asl -a -u -q -i .. $< -o $@

cos_table.inc: cos_table.py
	python cos_table.py >$@

clean:
	rm -f odc2.p cos_table.inc

# dependencies
odc2.p: g7000.h cos_table.inc

