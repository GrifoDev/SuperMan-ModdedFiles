.class public Landroid/net/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[%s]:%d"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "%s:%d"

    goto :goto_0
.end method

.method private static checksum(Ljava/nio/ByteBuffer;III)I
    .locals 10

    const v9, 0xffff

    move v6, p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v7, p3, p2

    div-int/lit8 v4, v7, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v5, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    invoke-static {v7}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr p2, v7

    if-eq p3, p2, :cond_2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-short v0, v7

    if-gez v0, :cond_1

    add-int/lit16 v7, v0, 0x100

    int-to-short v0, v7

    :cond_1
    mul-int/lit16 v7, v0, 0x100

    add-int/2addr v6, v7

    :cond_2
    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v9

    and-int v8, v6, v9

    add-int v6, v7, v8

    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v9

    add-int/2addr v7, v6

    and-int v6, v7, v9

    not-int v3, v6

    int-to-short v7, v3

    invoke-static {v7}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v7

    return v7
.end method

.method private static intAbs(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static ipChecksum(Ljava/nio/ByteBuffer;I)S
    .locals 3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v0, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v1}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    return v1
.end method

.method private static ipversion(Ljava/nio/ByteBuffer;I)B
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, -0x10

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method public static isValidUdpOrTcpPort(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .locals 2

    add-int v0, p2, p3

    add-int/lit8 v1, p1, 0xc

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x12

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .locals 3

    add-int v1, p2, p3

    const/16 v0, 0x8

    :goto_0
    const/16 v2, 0x28

    if-ge v0, v2, :cond_0

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .locals 1

    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v0, p1, p2, p3}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method

.method private static transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .locals 5

    if-gez p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport length < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0, p2}, Landroid/net/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    move-result v0

    :goto_0
    add-int v2, p3, p4

    invoke-static {p0, v0, p3, v2}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v0

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    int-to-short v2, v0

    return v2

    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Checksum must be IPv4 or IPv6"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static udpChecksum(Ljava/nio/ByteBuffer;II)S
    .locals 2

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p0, v1, p1, p2, v0}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v1

    return v1
.end method
