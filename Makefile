obj-m += hello.o

KDIR = /usr/src/linux-headers-5.15.0-113-generic

all:
		$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
clean:
		rm -rf *.o *.ko *.mod.* *.symvers *.order