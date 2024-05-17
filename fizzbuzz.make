define FIZZ_BUZZ
$(if $(word 100, ${i}),,\
	$(eval FizzBuzz+=1)\
	$(eval Buzz+=|)\
	$(eval Fizz+=l)\
	$(eval i+=I)\
	$(if $(word 15, ${FizzBuzz}),\
		$(info FizzBuzz)\
		$(eval FizzBuzz=)\
		$(eval Buzz=)\
		$(eval Fizz=)\
		$(call FIZZ_BUZZ)\
	,\
		$(if $(word 5, ${Buzz}),\
			$(info Buzz)\
			$(eval Buzz=)\
			$(call FIZZ_BUZZ)\
		,\
			$(if $(word 3, ${Fizz}),\
				$(info Fizz)$(eval Fizz=)\
				$(call FIZZ_BUZZ)\
			,\
				$(info $(words $(i)))\
				$(call FIZZ_BUZZ)
			)\
		)\
	)\
)
endef
FIZZBUZZ: $(call FIZZ_BUZZ)
	