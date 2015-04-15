"syn match ErrorLeadSpace /^ \+/
syn match ErrorTailSpace /\s\+$/
"match Error80 /\%>80v.\+/
set textwidth=78

syn keyword cOperator likely unlikely __typeof__ __builtin_constant_p
syn keyword cOperator BUG BUG_ON assert_spin_locked might_sleep WARN_ON WARN
syn keyword cStorageClass __attribute__ __always_inline __user

syn keyword cStorageClass __list_add list_add list_add_tail __list_del list_del list_replace list_replace_init list_del_init list_move list_move_tail list_is_last list_empty list_empty_careful list_rotate_left list_is_singular __list_cut_position list_cut_position __list_splice list_splice list_splice_tail list_splice_init list_splice_tail_init list_entry list_first_entry list_prepare_entry list_safe_reset_next hlist_unhashed hlist_empty __hlist_del hlist_del hlist_del_init hlist_add_head hlist_add_before hlist_add_after hlist_move_list hlist_entry __set_bit __clear_bit
syn keyword cRepeat list_for_each list_for_each_entry list_for_each_entry_continue list_for_each_entry_safe __list_for_each list_for_each_prev list_for_each_safe list_for_each_prev_safe list_for_each_entry_reverse list_for_each_entry_continue_reverse list_for_each_entry_from list_for_each_entry_safe_continue list_for_each_entry_safe_from list_for_each_entry_safe_reverse for_each_online_cpu for_each_possible_cpu
syn keyword cRepeat hlist_for_each hlist_for_each_safe hlist_for_each_entry hlist_for_each_entry_continue hlist_for_each_entry_from hlist_for_each_entry_safe
syn keyword cStorageClass __list_add_rcu list_add_rcu list_add_tail_rcu list_del_rcu hlist_del_init_rcu list_replace_rcu list_splice_init_rcu list_entry_rcu list_first_entry_rcu hlist_del_rcu hlist_replace_rcu hlist_add_head_rcu hlist_add_before_rcu hlist_add_after_rcu
syn keyword cRepeat __list_for_each_rcu list_for_each_entry_rcu list_for_each_continue_rcu list_for_each_entry_continue_rcu __hlist_for_each_rcu hlist_for_each_entry_rcu hlist_for_each_entry_rcu_bh hlist_for_each_entry_continue_rcu hlist_for_each_entry_continue_rcu_bh

" XNU keywords
syn keyword cOperator assert panic
syn keyword cStorageClass __assert_only __unused __inline__
syn keyword cRepeat queue_init queue_head_init queue_chain_init queue_first queue_last queue_prev queue_next queue_end queue_empty movqueue enqueue dequeue enqueue_head enqueue_tail dequeue_head dequeue_tail remqueue insque remque re_queue_head re_queue_tail qe_element qe_foreach qe_foreach_safe qe_foreach_element qe_foreach_element_safe
syn keyword cRepeat SLIST_EMPTY SLIST_FOREACH SLIST_FOREACH_SAFE SLIST_FOREACH_PREVPTR SLIST_INIT SLIST_INSERT_AFTER SLIST_INSERT_HEAD SLIST_NEXT SLIST_REMOVE SLIST_REMOVE_AFTER SLIST_REMOVE_HEAD
syn keyword cRepeat STAILQ_CONCAT STAILQ_EMPTY STAILQ_INIT STAILQ_INSERT_AFTER STAILQ_INSERT_HEAD STAILQ_INSERT_TAIL STAILQ_FIRST STAILQ_FOREACH STAILQ_FOREACH_SAFE STAILQ_LAST STAILQ_NEXT STAILQ_REMOVE STAILQ_REMOVE_HEAD STAILQ_REMOVE_HEAD_UNTIL STAILQ_REMOVE_AFTER STAILQ_SWAP
syn keyword cRepeat LIST_INIT LIST_FIRST LIST_EMPTY LIST_FOREACH LIST_FOREACH_SAFE LIST_INSERT_AFTER LIST_INSERT_BEFORE LIST_INSERT_HEAD LIST_NEXT LIST_REMOVE LIST_SWAP
syn keyword cRepeat TAILQ_CONCAT TAILQ_EMPTY TAILQ_FIRST TAILQ_FOREACH TAILQ_FOREACH_SAFE TAILQ_FOREACH_REVERSE TAILQ_FOREACH_REVERSE_SAFE TAILQ_INIT TAILQ_INSERT_AFTER TAILQ_INSERT_BEFORE TAILQ_INSERT_TAIL TAILQ_LAST TAILQ_NEXT TAILQ_PREV TAILQ_REMOVE TAILQ_SWAP
syn keyword Keyword SLIST_HEAD SLIST_ENTRY SLIST_HEAD_INITIALIZER STAILQ_HEAD STAILQ_HEAD_INITIALIZER STAILQ_ENTRY LIST_HEAD LIST_HEAD_INITIALIZER LIST_ENTRY TAILQ_HEAD TAILQ_ENTRY
syn keyword cPreCondit lck_mtx_lock lck_mtx_unlock lck_mtx_try_lock lck_mtx_yield lck_mtx_try_lock_spin lck_mtx_try_lock_spin_always lck_mtx_lock_spin_always lck_mtx_lock_spin lck_mtx_convert_spin lck_mtx_assert lck_mtx_sleep lck_mtx_lock_wait lck_mtx_lock_acquire lck_mtx_unlock_wakeup lck_mtx_unlockspin_wakeup lck_mtx_ilk_unlock lck_mtx_ilk_try_lock
syn keyword cPreCondit lck_spin_sleep lck_spin_sleep_deadline lck_spin_lock lck_spin_unlock lck_spin_try_lock lck_spin_is_acquired
syn keyword cPreCondit lck_rw_lock lck_rw_unlock lck_rw_lock_shared lck_rw_unlock_shared lck_rw_lock_exclusive lck_rw_unlock_exclusive lck_rw_assert lck_rw_clear_promotion lck_rw_done lck_rw_sleep lck_rw_sleep_deadline lck_rw_lock_shared_to_exclusive lck_rw_lock_exclusive_to_shared lck_rw_try_lock_shared lck_rw_try_lock_exclusive
syn keyword cPreCondit OSSpinLockTry OSSpinLockUnlock
syn keyword cPreCondit OSCompareAndSwap64 OSAddAtomic64 OSDecrementAtomic64 OSIncrementAtomic64 OSAddAtomicLong OSIncrementAtomicLong OSDecrementAtomicLong OSCompareAndSwap8 OSCompareAndSwap16 OSCompareAndSwap OSCompareAndSwapPtr OSAddAtomic OSAddAtomic16 OSAddAtomic8 OSIncrementAtomic OSDecrementAtomic OSIncrementAtomc16 OSIncrementAtomc8 OSDecrementAtomic16 OSDecrementAtomic8 OSBitAndAtomic OSBitAndAtomic16 OSBitAndAtomic8 OSBitOrAtomic OSBitOrAtomic16 OSBitOrAtomic8 OSBitXorAtomic OSBitXorAtomic16 OSBitXorAtomic8 OSTestAndSet OSTestAndClear
syn keyword cPreCondit kalloc kalloc_noblock kalloc_zone kfree kmem_alloc kmem_realloc kmem_alloc_contig kmem_alloc_pages kmem_remap_pages kmem_alloc_kobject kmem_alloc_aligned kmem_alloc_pageable kmem_free kmem_suballoc kernel_memory_allocate kernel_memory_populate kernel_memory_depopulate

syn keyword cConstant KMA_HERE KMA_NOPAGEWAIT KMA_KOBJECT KMA_LOMEM KMA_GUARD_FIRST KMA_GUARD_LAST KMA_PERMANENT KMA_NOENCRYPT KMA_KSTACK KMA_VAONLY KMA_COMPRESSOR
syn keyword cConstnat ERECYCLE EJUSTRETURN EDRIVEOPEN EKEEPLOOKING ERESERVEDNAME ECVCERROR ECVPERROR EQSUSPENDED EBADEXEC EBADARCH ESHLIBVERS EBADMACHO EPWROFF EDEVERR EFTYPE EAUTH ENEEDAUTH EPROCUNAVAIL EPROGMISMATCH EPROGUNAVAIL ERPCMISMATCH EBADRPC


syn keyword cType __s8 __u8 __s16 __u16 __s32 __u32 __s64 __u64 s8 u8 s16 u16 s32 u32 s64 u64 loff_t

syn keyword cPreCondit mutex_lock mutex_lock_nested mutex_unlock mutex_lock_interruptible_nested
syn keyword cPreCondit spin_lock spin_unlock spin_lock_irqsave spin_unlock_irqrestore spin_lock_nested spin_lock_irq spin_unlock_irq write_lock_irq write_unlock_irq spin_lock_bh spin_unlock_bh
syn keyword cPreCondit read_lock read_unlock read_lock_irq read_unlock_irq
syn keyword cPreCondit rcu_read_lock rcu_read_unlock
syn keyword cPreCondit atomic_dec_and_lock

"syn keyword cPreCondit kmalloc vmalloc kfree vfree kzalloc __get_free_pages kmem_cache_alloc kmem_cache_free
"syn keyword cPreCondit up_write down_write up_read down_read down_read_nested down_write_nested
"syn keyword cPreCondit rcu_synchronize schedule schedule_timeout


"syn keyword cConstant GFP_ZONEMASK GFP_NOWAIT GFP_ATOMIC GFP_NOIO GFP_NOFS GFP_KERNEL GFP_TEMPORARY GFP_USER GFP_HIGHUSER GFP_HIGHUSER_MOVABLE GFP_IOFS GFP_THISNODE GFP_THISNODE GFP_MOVABLE_MASK GFP_RECLAIM_MASK GFP_BOOT_MASK GFP_CONSTRAINT_MASK GFP_SLAB_BUG_MASK GFP_DMA GFP_DMA32 GFP_ZONE_TABLE GFP_ZONE_BAD __GFP_ZERO
"syn keyword cConstant SCHED_FIFO SCHED_NORMAL SCHED_RR SCHED_IDLE SCHED_BATCH
"syn keyword Keyword LIST_HEAD INIT_LIST_HEAD LIST_HEAD_INIT ATOMIC_INIT

" Operators
syn match cOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match cOperator "<<\|>>\|&&\|||\|++\|--\|->"
syn match cOperator "[.!~*&%<>^|=,+-]"
syn match cOperator "/[^/*=]"me=e-1
syn match cOperator "/$"
syn match cOperator "&&\|||"
syn match cOperator "[][]"

" Functions
syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cType
syn match cUserFunctionPointer "(\s*\*\s*\h\w*\s*)\(\s\|\n\)*("me=e-1 contains=cDelimiter,cOperator
hi def link cUserFunction Function
hi def link cUserFunctionPointer Function

syn keyword cConstant ERESTARTSYS ERESTARTNOINTR ERESTARTNOHAND ENOIOCTLCMD ERESTART_RESTARTBLOCK EDIVERGE ENODATA ENOTBLK ETXTBSY ELOOP EWOULDBLOCK ENOMSG EIDRM ECHRNG EL2NSYNC EL3HLT EL3RST ELNRNG EUNATCH ENOCSI EL2HLT EBADE EBADR EXFULL ENOANO EBADRQC EBADSLT EDEADLOCK EBFONT ENOSTR ETIME ENOSR ENONET ENOPKG EREMOTE ENOLINK EADV ESRMNT ECOMM EPROTO EMULTIHOP EDOTDOT EOVERFLOW ENOTUNIQ EBADFD EREMCHG ELIBACC ELIBBAD ELIBSCN ELIBMAX ELIBEXEC ERESTART ESTRPIPE EUSERS ENOTSOCK EDESTADDRREQ EPROTOTYPE ENOPROTOOPT EPROTONOSUPPORT ESOCKTNOSUPPORT EOPNOTSUPP EPFNOSUPPORT EAFNOSUPPORT EADDRINUSE EADDRNOTAVAIL ENETDOWN ENETUNREACH ENETRESET ECONNABORTED ECONNRESET ENOBUFS EISCONN ENOTCONN ESHUTDOWN ETOOMANYREFS ECONNREFUSED EHOSTDOWN EHOSTUNREACH EALREADY ESTALE EUCLEAN ENOTNAM ENAVAIL EISNAM EREMOTEIO EDQUOT ENOMEDIUM EMEDIUMTYPE ENOKEY EKEYEXPIRED EKEYREVOKED EKEYREJECTED EOWNERDEAD ENOTRECOVERABLE ERFKILL EHWPOISON ELAST

set nofoldenable
set foldmethod=syntax
