Make=$(MAKE) -s

Dest=/home/ubuntu/tmp/out
Src=/home/ubuntu/tmp/in

$(Out)/%.html : %(In)/%.md
	pandoc -o $@  $<

$(Out)/% : $(In)/%
	(echo 111; cat $<) >  $@

test:
	$(Make) In=$(PWD) Out=$(PWD) debug 

Heres=$(shell ls * | awk '{print "'$(Pwd)'/" $$1}')
=$(subst 
debug:
	echo $(files)
