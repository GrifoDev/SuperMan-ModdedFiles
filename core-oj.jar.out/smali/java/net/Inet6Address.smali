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

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 174
    new-instance v0, Ljava/net/Inet6Address;

    const-string/jumbo v1, "::"

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    .line 173
    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 177
    new-instance v0, Ljava/net/Inet6Address;

    const-string/jumbo v1, "localhost"

    .line 178
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    .line 177
    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 169
    return-void

    .line 174
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

    .line 178
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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 191
    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 197
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 203
    iput-object v1, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 209
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 215
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 216
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 217
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 213
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 203
    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 238
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "scope_id"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 224
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 225
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 230
    :cond_0
    if-lez p3, :cond_1

    .line 231
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 223
    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 247
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    .line 246
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 243
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    .line 242
    return-void
.end method

.method private deriveNumericScope(Ljava/lang/String;)I
    .locals 9
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 383
    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 384
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 385
    .local v5, "ifc":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 387
    .local v1, "addresses":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 388
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 389
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_1

    move-object v4, v0

    .line 392
    check-cast v4, Ljava/net/Inet6Address;

    .line 394
    .local v4, "ia6_addr":Ljava/net/Inet6Address;
    invoke-direct {p0, v4}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    iget v6, v4, Ljava/net/Inet6Address;->scope_id:I

    return v6

    .line 380
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Enumeration;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v4    # "ia6_addr":Ljava/net/Inet6Address;
    .end local v5    # "ifc":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/net/SocketException;
    new-instance v6, Ljava/net/UnknownHostException;

    const-string/jumbo v7, "could not enumerate local network interfaces"

    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 403
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
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
    .param p1, "ifc"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 359
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 361
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 364
    check-cast v2, Ljava/net/Inet6Address;

    .line 366
    .local v2, "ia6_addr":Ljava/net/Inet6Address;
    invoke-direct {p0, v2}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iget v3, v2, Ljava/net/Inet6Address;->scope_id:I

    return v3

    .line 373
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ia6_addr":Ljava/net/Inet6Address;
    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    const-string/jumbo v4, "no scope_id found"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private differentLocalAddressTypes(Ljava/net/Inet6Address;)Z
    .locals 2
    .param p1, "other"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_2
    return v1

    .line 352
    :cond_3
    return v1
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 302
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 307
    :cond_0
    if-eqz p1, :cond_1

    .line 308
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 309
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    return-object v0

    .line 312
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 278
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    return-object v0

    .line 281
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "addr is of illegal length"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 329
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 331
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 333
    :cond_0
    if-eqz p3, :cond_1

    .line 334
    iput-object p3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 335
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 336
    invoke-direct {p0, p3}, Ljava/net/Inet6Address;->deriveNumericScope(Ljava/net/NetworkInterface;)I

    move-result v0

    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 337
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 327
    :cond_1
    return-void
.end method

.method private initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 318
    .local v1, "nif":Ljava/net/NetworkInterface;
    if-nez v1, :cond_0

    .line 319
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

    .line 322
    .end local v1    # "nif":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/net/SocketException;
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

    .line 321
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "nif":Ljava/net/NetworkInterface;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # [B

    .prologue
    .line 751
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 752
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 753
    shl-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    .line 754
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 753
    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 757
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 413
    iput-object v3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 414
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 416
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 417
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 422
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    iget-object v3, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 448
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_4

    .line 449
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid address length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 450
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v4, v4

    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_2
    :try_start_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    .line 425
    iget-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    if-nez v2, :cond_3

    .line 428
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 429
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 430
    const/4 v2, 0x0

    iput v2, p0, Ljava/net/Inet6Address;->scope_id:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/SocketException;
    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/net/SocketException;
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

    .line 434
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 453
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_4
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    move-result v2

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    if-eq v2, v3, :cond_5

    .line 454
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string/jumbo v3, "invalid address family type"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_5
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 776
    :try_start_0
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 779
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 774
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 705
    if-eqz p1, :cond_0

    .line 706
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 709
    check-cast v1, Ljava/net/Inet6Address;

    .line 711
    .local v1, "inetAddr":Ljava/net/Inet6Address;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 712
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 713
    return v4

    .line 707
    .end local v0    # "i":I
    .end local v1    # "inetAddr":Ljava/net/Inet6Address;
    :cond_0
    return v4

    .line 711
    .restart local v0    # "i":I
    .restart local v1    # "inetAddr":Ljava/net/Inet6Address;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public getAddress()[B
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    return v0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 666
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    if-eqz v4, :cond_2

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, "hash":I
    const/4 v2, 0x0

    .line 670
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 671
    const/4 v3, 0x0

    .line 672
    .local v3, "j":I
    const/4 v0, 0x0

    .line 673
    .local v0, "component":I
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    if-ge v2, v6, :cond_0

    .line 674
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v5, v5, v2

    add-int v0, v4, v5

    .line 675
    add-int/lit8 v3, v3, 0x1

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 678
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 680
    .end local v0    # "component":I
    .end local v3    # "j":I
    :cond_1
    return v1

    .line 683
    .end local v1    # "hash":I
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public isAnyLocalAddress()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "test":B
    const/4 v0, 0x0

    .end local v1    # "test":B
    .local v0, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 482
    iget-object v3, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v3, v3, v0

    or-int/2addr v3, v1

    int-to-byte v1, v3

    .line 481
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "test":B
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 734
    return v3

    .line 736
    :cond_0
    return v2
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 512
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    .line 513
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 512
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 513
    goto :goto_0

    :cond_1
    move v0, v1

    .line 512
    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "test":B
    const/4 v0, 0x0

    .end local v1    # "test":B
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 498
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v4, v4, v0

    or-int/2addr v4, v1

    int-to-byte v1, v4

    .line 497
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "test":B
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

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 539
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 540
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 539
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 540
    goto :goto_0

    :cond_1
    move v0, v1

    .line 539
    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 567
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 568
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 567
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 568
    goto :goto_0

    :cond_1
    move v0, v1

    .line 567
    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 554
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_0

    .line 553
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 554
    goto :goto_0

    :cond_1
    move v0, v1

    .line 553
    goto :goto_0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 597
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 596
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 597
    goto :goto_0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method public isMCSiteLocal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 581
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 582
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 581
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 582
    goto :goto_0

    :cond_1
    move v0, v1

    .line 581
    goto :goto_0
.end method

.method public isMulticastAddress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 469
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

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 525
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    .line 526
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    .line 525
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 526
    goto :goto_0

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0
.end method
