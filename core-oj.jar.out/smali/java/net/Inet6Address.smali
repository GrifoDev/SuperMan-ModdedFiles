.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field static final INADDRSZ:I = 0x10

.field private static final INT16SZ:I = 0x2

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private ifname:Ljava/lang/String;

.field ipaddress:[B

.field private scope_id:I

.field private scope_id_set:Z

.field private transient scope_ifname:Ljava/net/NetworkInterface;

.field private scope_ifname_set:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x0

    new-instance v0, Ljava/net/Inet6Address;

    const-string/jumbo v1, "::"

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet6Address;

    const-string/jumbo v1, "localhost"

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    :array_0
    .array-data 1
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
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
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
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    iput-object v1, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    :cond_0
    if-lez p3, :cond_1

    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-void
.end method

.method private deriveNumericScope(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/net/Inet6Address;

    invoke-direct {p0, v4}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Ljava/net/Inet6Address;->scope_id:I

    return v6

    :catch_0
    move-exception v2

    new-instance v6, Ljava/net/UnknownHostException;

    const-string/jumbo v7, "could not enumerate local network interfaces"

    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v6, Ljava/net/UnknownHostException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No matching address found for interface : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private deriveNumericScope(Ljava/net/NetworkInterface;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {p0, v2}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Ljava/net/Inet6Address;->scope_id:I

    return v3

    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "no scope_id found"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private differentLocalAddressTypes(Ljava/net/Inet6Address;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-direct {p0, p3}, Ljava/net/Inet6Address;->deriveNumericScope(Ljava/net/NetworkInterface;)I

    move-result v0

    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    :cond_1
    return-void
.end method

.method private initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SocketException thrown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    iget-object v3, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid address length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    iget-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    const/4 v2, 0x0

    iput v2, p0, Ljava/net/Inet6Address;->scope_id:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-direct {p0, v2}, Ljava/net/Inet6Address;->deriveNumericScope(Ljava/net/NetworkInterface;)I

    move-result v2

    iput v2, p0, Ljava/net/Inet6Address;->scope_id:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v2

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    if-eq v2, v3, :cond_5

    new-instance v2, Ljava/io/InvalidObjectException;

    const-string/jumbo v3, "invalid address family type"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    return v4

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public getAddress()[B
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()I
    .locals 1

    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    return v0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x10

    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    if-ge v2, v6, :cond_0

    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v5, v5, v2

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public isAnyLocalAddress()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v3, v3, v0

    or-int/2addr v3, v1

    int-to-byte v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 6

    const/16 v5, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v4, v4, v0

    or-int/2addr v4, v1

    int-to-byte v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v4, v4, v5

    if-ne v4, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isMCGlobal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMCSiteLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isMulticastAddress()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
