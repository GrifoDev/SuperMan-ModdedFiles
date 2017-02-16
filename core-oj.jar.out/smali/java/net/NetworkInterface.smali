.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final defaultIndex:I

.field private static final defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private addrs:[Ljava/net/InetAddress;

.field private bindings:[Ljava/net/InterfaceAddress;

.field private childs:[Ljava/net/NetworkInterface;

.field private displayName:Ljava/lang/String;

.field private hardwareAddr:[B

.field private index:I

.field private name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;

.field private virtual:Z


# direct methods
.method static synthetic -get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:[Ljava/net/NetworkInterface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    .line 58
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    .line 43
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "addrs"    # [Ljava/net/InetAddress;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 75
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 76
    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    .line 77
    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 74
    return-void
.end method

.method private static native getAll()[Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 283
    if-gez p0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Interface index can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex0(I)Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method private static native getByIndex0(I)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 311
    if-nez p0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 314
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/Inet6Address;

    :goto_0
    if-nez v0, :cond_2

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress0(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method private static native getByInetAddress0(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 268
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method private static native getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static getDefault()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private static native getMTU0(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 336
    .local v0, "netifs":[Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    .line 337
    return-object v1

    .line 339
    :cond_0
    new-instance v1, Ljava/net/NetworkInterface$1;

    invoke-direct {v1, v0}, Ljava/net/NetworkInterface$1;-><init>([Ljava/net/NetworkInterface;)V

    return-object v1
.end method

.method private static native isLoopback0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isP2P0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isUp0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native supportsMulticast0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 492
    instance-of v8, p1, Ljava/net/NetworkInterface;

    if-nez v8, :cond_0

    .line 493
    return v7

    :cond_0
    move-object v4, p1

    .line 495
    check-cast v4, Ljava/net/NetworkInterface;

    .line 496
    .local v4, "that":Ljava/net/NetworkInterface;
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 497
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v9, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 498
    return v7

    .line 501
    :cond_1
    iget-object v8, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 502
    return v7

    .line 506
    :cond_2
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_4

    .line 507
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    .line 508
    :cond_4
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_5

    .line 509
    return v7

    .line 514
    :cond_5
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v8, v8

    iget-object v9, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v9, v9

    if-eq v8, v9, :cond_6

    .line 515
    return v7

    .line 518
    :cond_6
    iget-object v5, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 519
    .local v5, "thatAddrs":[Ljava/net/InetAddress;
    array-length v0, v5

    .line 521
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_a

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "found":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_7

    .line 524
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    aget-object v8, v8, v2

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 525
    const/4 v1, 0x1

    .line 529
    :cond_7
    if-nez v1, :cond_9

    .line 530
    return v7

    .line 523
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 521
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 533
    .end local v1    # "found":Z
    .end local v3    # "j":I
    :cond_a
    return v6
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, ""

    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHardwareAddress()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 437
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    .line 438
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "NetworkInterface doesn\'t exist anymore"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_0
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 164
    .local v3, "sec":Ljava/lang/SecurityManager;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 166
    if-eqz v3, :cond_0

    .line 167
    :try_start_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 169
    :cond_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public getMTU()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->getMTU0(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/net/NetworkInterface$1subIFs;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1subIFs;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isLoopback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isLoopback0(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPointToPoint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isP2P0(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isUp0(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return v0
.end method

.method public supportsMulticast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->supportsMulticast0(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 541
    const-string/jumbo v0, "name:"

    .line 542
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    :cond_0
    return-object v0

    .line 542
    :cond_1
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    goto :goto_0
.end method
