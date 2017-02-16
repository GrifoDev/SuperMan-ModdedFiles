.class Ljava/net/Inet6AddressImpl;
.super Ljava/lang/Object;
.source "Inet6AddressImpl.java"

# interfaces
.implements Ljava/net/InetAddressImpl;


# static fields
.field private static final addressCache:Ljava/net/AddressCache;

.field private static anyLocalAddress:Ljava/net/InetAddress;

.field private static loopbackAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getHostByAddr0([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method private native isReachable0([BII[BII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 88
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1}, Ljava/net/AddressCache;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "cachedResult":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 90
    instance-of v6, v2, [Ljava/net/InetAddress;

    if-eqz v6, :cond_0

    .line 92
    check-cast v2, [Ljava/net/InetAddress;

    .end local v2    # "cachedResult":Ljava/lang/Object;
    return-object v2

    .line 95
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_0
    new-instance v6, Ljava/net/UnknownHostException;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "cachedResult":Ljava/lang/Object;
    invoke-direct {v6, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    .restart local v2    # "cachedResult":Ljava/lang/Object;
    :cond_1
    :try_start_0
    new-instance v5, Landroid/system/StructAddrinfo;

    invoke-direct {v5}, Landroid/system/StructAddrinfo;-><init>()V

    .line 100
    .local v5, "hints":Landroid/system/StructAddrinfo;
    sget v6, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 101
    sget v6, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_family:I

    .line 105
    sget v6, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v6, v5, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 106
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p0, v5, p1}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v1

    .line 108
    .local v1, "addresses":[Ljava/net/InetAddress;
    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 109
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v8

    iput-object p0, v8, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object v1

    .line 113
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "hints":Landroid/system/StructAddrinfo;
    :catch_0
    move-exception v4

    .line 117
    .local v4, "gaiException":Landroid/system/GaiException;
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Landroid/system/ErrnoException;

    if-eqz v6, :cond_3

    .line 118
    invoke-virtual {v4}, Landroid/system/GaiException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Landroid/system/ErrnoException;

    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_3

    .line 119
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Permission denied (missing INTERNET permission?)"

    invoke-direct {v6, v7, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 123
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to resolve host \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v8, v4, Landroid/system/GaiException;->error:I

    invoke-interface {v7, v8}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "detailMessage":Ljava/lang/String;
    sget-object v6, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v6, p0, p1, v3}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    invoke-virtual {v4, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v6

    throw v6
.end method


# virtual methods
.method public anyLocalAddress()Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 188
    const-class v2, Ljava/net/Inet6AddressImpl;

    monitor-enter v2

    .line 193
    :try_start_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 194
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0}, Ljava/net/Inet6Address;-><init>()V

    .line 195
    .local v0, "anyAddress":Ljava/net/Inet6Address;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const-string/jumbo v3, "::"

    iput-object v3, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 196
    sput-object v0, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;

    .line 199
    .end local v0    # "anyAddress":Ljava/net/Inet6Address;
    :cond_0
    sget-object v1, Ljava/net/Inet6AddressImpl;->anyLocalAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearAddressCache()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Ljava/net/Inet6AddressImpl;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 137
    return-void
.end method

.method public getHostByAddr([B)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 133
    invoke-direct {p0, p1}, Ljava/net/Inet6AddressImpl;->getHostByAddr0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReachable(Ljava/net/InetAddress;ILjava/net/NetworkInterface;I)Z
    .locals 11
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "timeout"    # I
    .param p3, "netif"    # Ljava/net/NetworkInterface;
    .param p4, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "ifaddr":[B
    const/4 v2, -0x1

    .line 145
    .local v2, "scope":I
    const/4 v6, -0x1

    .line 146
    .local v6, "netif_scope":I
    if-eqz p3, :cond_2

    .line 153
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    .line 154
    .local v9, "it":Ljava/util/Enumeration;
    const/4 v7, 0x0

    .line 155
    :cond_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 157
    .local v7, "inetaddr":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 159
    .local v4, "ifaddr":[B
    instance-of v0, v7, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    move-object v0, v7

    .line 160
    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v6

    .line 165
    .end local v4    # "ifaddr":[B
    .end local v7    # "inetaddr":Ljava/net/InetAddress;
    :cond_1
    if-nez v4, :cond_2

    .line 168
    return v10

    .line 171
    .end local v9    # "it":Ljava/util/Enumeration;
    :cond_2
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 172
    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    .line 174
    :cond_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/net/Inet6AddressImpl;->isReachable0([BII[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 181
    :catch_0
    move-exception v8

    .line 182
    .local v8, "ioe":Ljava/io/IOException;
    return v10
.end method

.method public lookupAllHostAddr(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6AddressImpl;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 66
    .local v0, "result":Ljava/net/InetAddress;
    if-eqz v0, :cond_3

    .line 67
    invoke-static {p1, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 74
    :cond_3
    invoke-static {p1, p2}, Ljava/net/Inet6AddressImpl;->lookupHostByName(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public loopbackAddresses()[Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 205
    const-class v1, Ljava/net/Inet6AddressImpl;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;

    .line 214
    :cond_0
    sget-object v0, Ljava/net/Inet6AddressImpl;->loopbackAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
