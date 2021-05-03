/*
 *
 *	Generic internet FLOW.
 *
 */

#ifndef _NET_FLOW_H
#define _NET_FLOW_H

#include <linux/in6.h>
#include <asm/atomic.h>

/**
 * flowi从某种程度上讲类似于访问控制列表（ACL）：它是基于从L3与L4包头中选择的诸如IP地址、L4端口号等字段值来定义一个流量集。
 * 可以将它用做路由查找时的搜索key。
 */
struct flowi {
	/**
	 * Egress设备ID和ingress设备ID。
	 */
	int	oif;
	int	iif;

	/**
	 * 该联合的各个字段是可用于指定L3参数取值的结构。目前支持的协议为IPv4，IPv6和DECnet。
	 */
	union {
		struct {
			__u32			daddr;
			__u32			saddr;
			__u32			fwmark;
			__u8			tos;
			__u8			scope;
		} ip4_u;
		
		struct {
			struct in6_addr		daddr;
			struct in6_addr		saddr;
			__u32			flowlabel;
		} ip6_u;

		struct {
			__u16			daddr;
			__u16			saddr;
			__u32			fwmark;
			__u8			scope;
		} dn_u;
	} nl_u;
#define fld_dst		nl_u.dn_u.daddr
#define fld_src		nl_u.dn_u.saddr
#define fld_fwmark	nl_u.dn_u.fwmark
#define fld_scope	nl_u.dn_u.scope
#define fl6_dst		nl_u.ip6_u.daddr
#define fl6_src		nl_u.ip6_u.saddr
#define fl6_flowlabel	nl_u.ip6_u.flowlabel
#define fl4_dst		nl_u.ip4_u.daddr
#define fl4_src		nl_u.ip4_u.saddr
#define fl4_fwmark	nl_u.ip4_u.fwmark
#define fl4_tos		nl_u.ip4_u.tos
#define fl4_scope	nl_u.ip4_u.scope

	/**
	 * L4协议。
	 */
	__u8	proto;
	/**
	 * 该变量只定义了一个标志，FLOWI_FLAG_MULTIPATHOLDROUTE，它最初用于多路径代码，但已不再被使用。
	 */
	__u8	flags;
	/**
	 * 该联合的各个字段是可用于指定L4参数取值的主要结构。目前支持的协议为TCP,UDP，ICMP，DECnet和IPsec协议套件（suite）。
	 */
	union {
		struct {
			__u16	sport;
			__u16	dport;
		} ports;

		struct {
			__u8	type;
			__u8	code;
		} icmpt;

		struct {
			__u16	sport;
			__u16	dport;
			__u8	objnum;
			__u8	objnamel; /* Not 16 bits since max val is 16 */
			__u8	objname[16]; /* Not zero terminated */
		} dnports;

		__u32		spi;
	} uli_u;
#define fl_ip_sport	uli_u.ports.sport
#define fl_ip_dport	uli_u.ports.dport
#define fl_icmp_type	uli_u.icmpt.type
#define fl_icmp_code	uli_u.icmpt.code
#define fl_ipsec_spi	uli_u.spi
} __attribute__((__aligned__(BITS_PER_LONG/8)));

#define FLOW_DIR_IN	0
#define FLOW_DIR_OUT	1
#define FLOW_DIR_FWD	2

typedef void (*flow_resolve_t)(struct flowi *key, u16 family, u8 dir,
			       void **objp, atomic_t **obj_refp);

extern void *flow_cache_lookup(struct flowi *key, u16 family, u8 dir,
			       flow_resolve_t resolver);
extern void flow_cache_flush(void);
extern atomic_t flow_cache_genid;

#endif
