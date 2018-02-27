include make.config
all:main
	@echo "Done"
	$(CC) $(CFLAGS) recast/recast.a main/main.a -o $(TARGET)
	./$(TARGET)


.PHONY: clean recast main

recast:
	@echo "==> Make\t$@" && $(MAKE) -C $@

main:recast
	@echo "==> Make\t$@" && $(MAKE) -C $@

clean:
	rm $(TARGET)
	@$(MAKE) -C recast $@
	@$(MAKE) -C main $@
