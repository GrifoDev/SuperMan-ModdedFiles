.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static ARP_HEADER_OFFSET:I = 0x0

.field private static final ARP_IPV4_REQUEST_HEADER:[B

.field private static ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x0

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_NEIGHBOR_ANNOUNCEMENT:I = 0x88

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mHardwareAddress:[B

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkInterface:Ljava/net/NetworkInterface;

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/net/apf/ApfFilter;)J
    .locals 2

    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/net/apf/ApfFilter;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->processRa([BI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    const/16 v0, 0xe

    sput v0, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    const/16 v0, 0x26

    sput v0, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    return-void
.end method

.method private beginProgramLocked()Landroid/net/apf/ApfGenerator;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    const-string/jumbo v2, "skipArpFilters"

    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v3, "skipIPv4Filters"

    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v1, "IPv6Filters"

    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v6, "__PASS__"

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v4, "__DROP__"

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    return-object v0
.end method

.method private static curTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static findIPv4Address(Landroid/net/LinkProperties;)[B
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_1

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    return-object v6

    :cond_3
    return-object v3
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget v1, Landroid/net/apf/ApfFilter;->ARP_HEADER_OFFSET:I

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ARP_IPV4_REQUEST_HEADER:[B

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget v1, Landroid/net/apf/ApfFilter;->ARP_TARGET_IP_ADDRESS_OFFSET:I

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    :cond_0
    const-string/jumbo v0, "__PASS__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    return-void
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0xe0

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v1, "__DROP__"

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0x1fff

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v0, "__DROP__"

    const/16 v1, 0x44

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    :cond_0
    const-string/jumbo v0, "__PASS__"

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    const/16 v4, 0x26

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_0

    const-string/jumbo v0, "skipIPv6MulticastFilter"

    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    :goto_0
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x36

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    const/16 v2, 0x88

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    return-void

    :cond_0
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0
.end method

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_3

    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unacceptably small APF limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v0, v1, :cond_4

    return-object v3

    :cond_4
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported APF version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)V

    return-object v0
.end method

.method private maybeInstallNewProgramLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long v0, v2, v4

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    :cond_1
    return-void
.end method

.method private declared-synchronized processRa([BI)V
    .locals 6

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->maybeInstallNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "ApfFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing RA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receive thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RUNNING"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Multicast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DROP"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IPv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const-string/jumbo v3, "No program installed."

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string/jumbo v3, "STOPPED"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "ALLOW"

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Program updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RA filters:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v3, "Seen: %d, last %ds ago"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Last match:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v3, "Last program:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method installNewProgramLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    const-wide v4, 0x7fffffffffffffffL

    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v8

    iget-object v9, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v9, v9, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-le v8, v9, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v3, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v8, "ApfFilter"

    const-string/jumbo v9, "Program failed to generate: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_1
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iput-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    iput-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    iget v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    iget-object v8, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v8, v2}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    return-void
.end method

.method maybeStartFilter()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    sget v3, Landroid/system/OsConstants;->AF_PACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v3, v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0

    throw v3
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ApfFilter"

    const-string/jumbo v4, "Error starting filter"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4Address(Landroid/net/LinkProperties;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
