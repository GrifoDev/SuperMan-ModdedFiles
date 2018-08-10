.class public Landroid/net/util/PrefixUtils;
.super Ljava/lang/Object;
.source "PrefixUtils.java"


# static fields
.field public static final DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

.field private static final MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/IpPrefix;

    const-string/jumbo v1, "127.0.0.0/8"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "169.254.0.0/16"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "::/3"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "fe80::/64"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "fc00::/7"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ff02::/8"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/util/PrefixUtils;->MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;

    const-string/jumbo v0, "192.168.49.0/24"

    invoke-static {v0}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v0

    sput-object v0, Landroid/net/util/PrefixUtils;->DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNonForwardablePrefixes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/net/util/PrefixUtils;->MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;
    .locals 3

    new-instance v0, Landroid/net/IpPrefix;

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public static getNonForwardablePrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Landroid/net/util/PrefixUtils;->addNonForwardablePrefixes(Ljava/util/Set;)V

    return-object v0
.end method

.method public static ipAddressAsPrefix(Ljava/net/InetAddress;)Landroid/net/IpPrefix;
    .locals 2

    instance-of v1, p0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p0, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public static localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/net/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static pfx(Ljava/lang/String;)Landroid/net/IpPrefix;
    .locals 1

    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
