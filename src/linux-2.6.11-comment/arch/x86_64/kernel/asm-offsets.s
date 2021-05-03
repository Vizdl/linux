	.file	"asm-offsets.c"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
#APP
# 26 "arch/x86_64/kernel/asm-offsets.c" 1
	
->tsk_state $0 offsetof(struct task_struct, state)
# 0 "" 2
# 27 "arch/x86_64/kernel/asm-offsets.c" 1
	
->tsk_flags $24 offsetof(struct task_struct, flags)
# 0 "" 2
# 28 "arch/x86_64/kernel/asm-offsets.c" 1
	
->tsk_thread $784 offsetof(struct task_struct, thread)
# 0 "" 2
# 29 "arch/x86_64/kernel/asm-offsets.c" 1
	
->tsk_pid $244 offsetof(struct task_struct, pid)
# 0 "" 2
# 30 "arch/x86_64/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 33 "arch/x86_64/kernel/asm-offsets.c" 1
	
->threadinfo_flags $16 offsetof(struct thread_info, flags)
# 0 "" 2
# 34 "arch/x86_64/kernel/asm-offsets.c" 1
	
->threadinfo_addr_limit $32 offsetof(struct thread_info, addr_limit)
# 0 "" 2
# 35 "arch/x86_64/kernel/asm-offsets.c" 1
	
->threadinfo_preempt_count $28 offsetof(struct thread_info, preempt_count)
# 0 "" 2
# 36 "arch/x86_64/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 39 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_kernelstack $24 offsetof(struct x8664_pda, kernelstack)
# 0 "" 2
# 40 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_oldrsp $32 offsetof(struct x8664_pda, oldrsp)
# 0 "" 2
# 41 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_pcurrent $0 offsetof(struct x8664_pda, pcurrent)
# 0 "" 2
# 42 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_irqrsp $40 offsetof(struct x8664_pda, irqrsp)
# 0 "" 2
# 43 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_irqcount $48 offsetof(struct x8664_pda, irqcount)
# 0 "" 2
# 44 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_cpunumber $52 offsetof(struct x8664_pda, cpunumber)
# 0 "" 2
# 45 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pda_irqstackptr $56 offsetof(struct x8664_pda, irqstackptr)
# 0 "" 2
# 46 "arch/x86_64/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 50 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_eax $44 offsetof(struct sigcontext_ia32, eax)
# 0 "" 2
# 51 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_ebx $32 offsetof(struct sigcontext_ia32, ebx)
# 0 "" 2
# 52 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_ecx $40 offsetof(struct sigcontext_ia32, ecx)
# 0 "" 2
# 53 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_edx $36 offsetof(struct sigcontext_ia32, edx)
# 0 "" 2
# 54 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_esi $20 offsetof(struct sigcontext_ia32, esi)
# 0 "" 2
# 55 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_edi $16 offsetof(struct sigcontext_ia32, edi)
# 0 "" 2
# 56 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_ebp $24 offsetof(struct sigcontext_ia32, ebp)
# 0 "" 2
# 57 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_esp $28 offsetof(struct sigcontext_ia32, esp)
# 0 "" 2
# 58 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_SIGCONTEXT_eip $56 offsetof(struct sigcontext_ia32, eip)
# 0 "" 2
# 59 "arch/x86_64/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 61 "arch/x86_64/kernel/asm-offsets.c" 1
	
->IA32_RT_SIGFRAME_sigcontext $164 offsetof (struct rt_sigframe32, uc.uc_mcontext)
# 0 "" 2
# 63 "arch/x86_64/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 65 "arch/x86_64/kernel/asm-offsets.c" 1
	
->SIZEOF_PBE $32 sizeof(struct pbe)
# 0 "" 2
# 66 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pbe_address $0 offsetof(struct pbe, address)
# 0 "" 2
# 67 "arch/x86_64/kernel/asm-offsets.c" 1
	
->pbe_orig_address $8 offsetof(struct pbe, orig_address)
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.5-4ubuntu8) 4.8.5"
	.section	.note.GNU-stack,"",@progbits
