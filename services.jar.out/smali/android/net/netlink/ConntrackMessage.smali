.class public Landroid/net/netlink/ConntrackMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "ConntrackMessage.java"


# static fields
.field public static final CTA_IP_V4_DST:S = 0x2s

.field public static final CTA_IP_V4_SRC:S = 0x1s

.field public static final CTA_PROTO_DST_PORT:S = 0x3s

.field public static final CTA_PROTO_NUM:S = 0x1s

.field public static final CTA_PROTO_SRC_PORT:S = 0x2s

.field public static final CTA_TIMEOUT:S = 0x7s

.field public static final CTA_TUPLE_IP:S = 0x1s

.field public static final CTA_TUPLE_ORIG:S = 0x1s

.field public static final CTA_TUPLE_PROTO:S = 0x2s

.field public static final CTA_TUPLE_REPLY:S = 0x2s

.field public static final IPCTNL_MSG_CT_NEW:S = 0x0s

.field public static final NFNL_SUBSYS_CTNETLINK:S = 0x1s

.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field protected mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    new-instance v0, Landroid/net/netlink/StructNfGenMsg;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Landroid/net/netlink/StructNfGenMsg;-><init>(B)V

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    return-void
.end method

.method public static newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B
    .locals 14

    new-instance v4, Landroid/net/netlink/StructNlAttr;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/net/netlink/StructNlAttr;

    new-instance v8, Landroid/net/netlink/StructNlAttr;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/net/netlink/StructNlAttr;

    new-instance v10, Landroid/net/netlink/StructNlAttr;

    const/4 v11, 0x1

    invoke-direct {v10, v11, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Landroid/net/netlink/StructNlAttr;

    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x1

    invoke-direct {v8, v10, v9}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Landroid/net/netlink/StructNlAttr;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/net/netlink/StructNlAttr;

    new-instance v10, Landroid/net/netlink/StructNlAttr;

    int-to-byte v11, p0

    const/4 v12, 0x1

    invoke-direct {v10, v12, v11}, Landroid/net/netlink/StructNlAttr;-><init>(SB)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Landroid/net/netlink/StructNlAttr;

    move/from16 v0, p2

    int-to-short v11, v0

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v13, 0x2

    invoke-direct {v10, v13, v11, v12}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    new-instance v10, Landroid/net/netlink/StructNlAttr;

    move/from16 v0, p4

    int-to-short v11, v0

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v13, 0x3

    invoke-direct {v10, v13, v11, v12}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const/4 v10, 0x2

    invoke-direct {v8, v10, v9}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-direct {v4, v8, v7}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v8, 0x7

    move/from16 v0, p5

    invoke-direct {v3, v8, v0, v7}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v8

    add-int v6, v7, v8

    add-int/lit8 v7, v6, 0x14

    new-array v2, v7, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v5, Landroid/net/netlink/ConntrackMessage;

    invoke-direct {v5}, Landroid/net/netlink/ConntrackMessage;-><init>()V

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    array-length v8, v2

    iput v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x100

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x105

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/4 v8, 0x1

    iput v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {v5, v1}, Landroid/net/netlink/ConntrackMessage;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4, v1}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3, v1}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    return-object v2
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNfGenMsg;->pack(Ljava/nio/ByteBuffer;)V

    return-void
.end method
