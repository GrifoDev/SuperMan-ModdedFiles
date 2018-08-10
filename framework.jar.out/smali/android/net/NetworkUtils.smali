.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native attachControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native attachDhcpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native attachRaFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static native bindProcessToNetwork(I)Z
.end method

.method public static native bindProcessToNetworkForHostResolution(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native bindSocketToNetwork(II)I
.end method

.method public static native getBoundNetworkForProcess()I
.end method

.method public static getImplicitNetmask(Ljava/net/Inet4Address;)I
    .locals 3

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    const/16 v1, 0x8

    return v1

    :cond_0
    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    const/16 v1, 0x10

    return v1

    :cond_1
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_2

    const/16 v1, 0x18

    return v1

    :cond_2
    const/16 v1, 0x20

    return v1
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNetworkPart error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s:%s:%s:%s:%s:%s:%s:%s"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0x8

    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/16 v4, 0x10

    const/16 v5, 0x14

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/16 v4, 0x14

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/16 v4, 0x18

    const/16 v5, 0x1c

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const/16 v4, 0x1c

    const/16 v5, 0x20

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in hexToInet6Address("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inetAddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [B

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static maskRawAddress([BI)V
    .locals 6

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IP address with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes has invalid prefix length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    div-int/lit8 v1, p1, 0x8

    rem-int/lit8 v2, p1, 0x8

    rsub-int/lit8 v3, v2, 0x8

    const/16 v4, 0xff

    shl-int v3, v4, v3

    int-to-byte v0, v3

    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-byte v3, p0, v1

    and-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    aput-byte v5, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static netmaskIntToPrefixLength(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    .locals 6

    invoke-static {p0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    rsub-int/lit8 v3, v1, 0x20

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-contiguous netmask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return v1
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected static parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "/"

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid IP address and mask "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v1, 0x20

    if-le p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    rsub-int/lit8 v1, p0, 0x20

    const/4 v2, -0x1

    shl-int v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method public static native protectFromVpn(I)Z
.end method

.method public static protectFromVpn(Ljava/io/FileDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0

    return v0
.end method

.method public static native queryUserAccess(II)Z
.end method

.method public static native setupRaSocket(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-eq v5, v7, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_4

    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    return-object p0

    :cond_2
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v6, :cond_3

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return-object p0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    return-object v2
.end method
