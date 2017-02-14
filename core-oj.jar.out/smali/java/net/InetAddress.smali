.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$1;,
        Ljava/net/InetAddress$InetAddressHolder;
    }
.end annotation


# static fields
.field private static final BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

.field static final NETID_UNSET:I = 0x0

.field static final impl:Ljava/net/InetAddressImpl;

.field private static final nameService:Lsun/net/spi/nameservice/NameService;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private transient canonicalHostName:Ljava/lang/String;

.field transient holder:Ljava/net/InetAddress$InetAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/net/Inet6AddressImpl;

    invoke-direct {v0}, Ljava/net/Inet6AddressImpl;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    new-instance v0, Ljava/net/InetAddress$1;

    invoke-direct {v0}, Ljava/net/InetAddress$1;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hostName"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "address"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "family"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    new-instance v0, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v0}, Ljava/net/InetAddress$InetAddressHolder;-><init>()V

    iput-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    return-void
.end method

.method static anyLocalAddress()Ljava/net/InetAddress;
    .locals 1

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static clearDnsCache()V
    .locals 1

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->clearAddressCache()V

    return-void
.end method

.method static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method static getAllByName0(Ljava/lang/String;Z)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/net/Inet4Address;

    invoke-direct {v1, p0, p1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_1
    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/net/Inet4Address;

    invoke-direct {v1, p0, v0}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    invoke-direct {v1, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v1

    :cond_3
    new-instance v1, Ljava/net/UnknownHostException;

    const-string/jumbo v2, "addr is of illegal length"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, v1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p1}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lsun/net/spi/nameservice/NameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/net/InetAddress;->nameService:Lsun/net/spi/nameservice/NameService;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lsun/net/spi/nameservice/NameService;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-nez v4, :cond_0

    array-length v5, v0

    if-ge v3, v5, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v1

    iget-object v0, v1, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    sget-object v1, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v1, v0, v2}, Ljava/net/InetAddressImpl;->lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 2

    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0}, Ljava/net/InetAddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v1

    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    sget v4, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v4, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v1, v5}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    aget-object v3, v0, v6

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    sget-object v5, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "invalid address type"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    const-string/jumbo v4, "hostName"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "address"

    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "family"

    invoke-virtual {v2, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/net/InetAddress$InetAddressHolder;

    invoke-direct {v4, v3, v0, v1}, Ljava/net/InetAddress$InetAddressHolder;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    return-void
.end method

.method private readObjectNoData(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Ljava/net/InetAddress;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "invalid address type"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "hostName"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget-object v2, v2, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "address"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "family"

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->canonicalHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-static {p0}, Ljava/net/InetAddress;->getHostFromNameService(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostName(Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method holder()Ljava/net/InetAddress$InetAddressHolder;
    .locals 1

    iget-object v0, p0, Ljava/net/InetAddress;->holder:Ljava/net/InetAddress$InetAddressHolder;

    return-object v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ttl can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljava/net/InetAddress;->impl:Ljava/net/InetAddressImpl;

    invoke-interface {v0, p0, p3, p1, p2}, Ljava/net/InetAddressImpl;->isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z

    move-result v0

    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
