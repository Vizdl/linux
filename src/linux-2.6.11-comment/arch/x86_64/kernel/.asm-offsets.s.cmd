cmd_arch/x86_64/kernel/asm-offsets.s := gcc -Wp,-MD,arch/x86_64/kernel/.asm-offsets.s.d -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -D__KERNEL__ -Iinclude  -Wall -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -ffreestanding -O2     -fomit-frame-pointer  -mno-red-zone -mcmodel=kernel -pipe -fno-reorder-blocks	 -Wno-sign-compare -fno-asynchronous-unwind-tables -funit-at-a-time -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -Wdeclaration-after-statement -Wno-pointer-sign    -DKBUILD_BASENAME=asm_offsets -DKBUILD_MODNAME=asm_offsets -S -o arch/x86_64/kernel/asm-offsets.s arch/x86_64/kernel/asm-offsets.c 

deps_arch/x86_64/kernel/asm-offsets.s := \
  arch/x86_64/kernel/asm-offsets.c \
    $(wildcard include/config/ia32/emulation.h) \
  include/linux/sched.h \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/magic/sysrq.h) \
    $(wildcard include/config/pm.h) \
  include/asm/param.h \
  include/linux/config.h \
    $(wildcard include/config/h.h) \
  include/linux/capability.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
  include/linux/compiler-gcc+.h \
  include/linux/compiler-gcc.h \
  include/asm/posix_types.h \
  include/asm/types.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/lockmeter.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
  include/linux/linkage.h \
  include/asm/linkage.h \
  include/linux/thread_info.h \
  include/linux/bitops.h \
  include/asm/bitops.h \
  include/asm/thread_info.h \
  include/asm/page.h \
    $(wildcard include/config/discontigmem.h) \
  include/asm/bug.h \
  include/linux/stringify.h \
  include/asm-generic/bug.h \
  include/asm/pda.h \
  include/linux/cache.h \
  include/linux/kernel.h \
    $(wildcard include/config/debug/spinlock/sleep.h) \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h \
  include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  include/asm/mmsegment.h \
  include/asm/processor.h \
  include/asm/segment.h \
  include/asm/sigcontext.h \
  include/asm/cpufeature.h \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
  include/asm/msr.h \
  include/asm/current.h \
  include/asm/system.h \
    $(wildcard include/config/unordered/io.h) \
  include/asm/percpu.h \
  include/linux/personality.h \
  include/asm/spinlock.h \
    $(wildcard include/config/x86/oostore.h) \
    $(wildcard include/config/x86/ppro/fence.h) \
  include/asm/atomic.h \
  include/asm/rwlock.h \
  include/linux/timex.h \
    $(wildcard include/config/time/interpolation.h) \
  include/linux/time.h \
  include/linux/seqlock.h \
  include/asm/timex.h \
  include/asm/8253pit.h \
  include/asm/vsyscall.h \
  include/asm/hpet.h \
    $(wildcard include/config/hpet/emulate/rtc.h) \
  include/linux/jiffies.h \
  include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/rbtree.h \
  include/linux/cpumask.h \
  include/linux/bitmap.h \
  include/linux/string.h \
  include/asm/string.h \
  include/linux/errno.h \
  include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/asm/semaphore.h \
  include/linux/wait.h \
  include/linux/list.h \
  include/linux/prefetch.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/asm/ptrace.h \
  include/asm/mmu.h \
  include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/smp.h \
  include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
  include/asm/fixmap.h \
  include/asm/apicdef.h \
  include/asm/vsyscall32.h \
  include/asm/mpspec.h \
    $(wildcard include/config/acpi/boot.h) \
  include/asm/io_apic.h \
    $(wildcard include/config/pci/msi.h) \
  include/asm/apic.h \
    $(wildcard include/config/x86/good/apic.h) \
  include/linux/pm.h \
  include/linux/sem.h \
    $(wildcard include/config/sysvipc.h) \
  include/linux/ipc.h \
  include/asm/ipcbuf.h \
  include/asm/sembuf.h \
  include/linux/signal.h \
  include/asm/signal.h \
  include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/resource.h \
  include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/securebits.h \
  include/linux/fs_struct.h \
  include/linux/completion.h \
  include/linux/pid.h \
  include/linux/percpu.h \
  include/linux/slab.h \
    $(wildcard include/config/.h) \
  include/linux/gfp.h \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
  include/linux/numa.h \
  include/asm/numnodes.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
  include/asm/topology.h \
    $(wildcard include/config/acpi/numa.h) \
  include/asm-generic/topology.h \
  include/asm/mmzone.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/kmalloc_sizes.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/large/allocs.h) \
  include/linux/param.h \
  include/linux/timer.h \
  include/linux/aio.h \
  include/linux/workqueue.h \
  include/linux/aio_abi.h \
  include/linux/hardirq.h \
    $(wildcard include/config/preempt/bkl.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/smp_lock.h \
    $(wildcard include/config/lock/kernel.h) \
  include/asm/hardirq.h \
  include/linux/irq.h \
    $(wildcard include/config/arch/s390.h) \
    $(wildcard include/config/generic/hardirqs.h) \
  include/asm/irq.h \
  include/asm/hw_irq.h \
  include/linux/profile.h \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/profiling.h) \
  include/linux/irq_cpustat.h \
  include/linux/suspend.h \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/frv.h) \
  include/asm/suspend.h \
    $(wildcard include/config/acpi/sleep.h) \
  include/asm/desc.h \
  include/asm/ldt.h \
  include/asm/i387.h \
  include/asm/user.h \
  include/asm/uaccess.h \
  include/linux/swap.h \
    $(wildcard include/config/swap.h) \
  include/linux/notifier.h \
  include/asm/ia32.h \
    $(wildcard include/config/ia32/support.h) \
  include/linux/compat.h \
    $(wildcard include/config/compat.h) \
  include/linux/stat.h \
  include/asm/stat.h \
  include/asm/compat.h \
  include/asm/sigcontext32.h \

arch/x86_64/kernel/asm-offsets.s: $(deps_arch/x86_64/kernel/asm-offsets.s)

$(deps_arch/x86_64/kernel/asm-offsets.s):
