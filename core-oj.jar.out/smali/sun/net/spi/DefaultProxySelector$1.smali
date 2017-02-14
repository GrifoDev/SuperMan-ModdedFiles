.class Lsun/net/spi/DefaultProxySelector$1;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/spi/DefaultProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Proxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/spi/DefaultProxySelector;

.field final synthetic val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field final synthetic val$proto:Ljava/lang/String;

.field final synthetic val$urlhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/spi/DefaultProxySelector$1;->run()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/Proxy;
    .locals 15

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    array-length v11, v11

    if-ge v1, v11, :cond_11

    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    aget-object v11, v11, v14

    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v2, 0x1

    :goto_1
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    if-ge v2, v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Host"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    :cond_1
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v11

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    monitor-enter v12

    if-nez v4, :cond_8

    :try_start_0
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v6, Lsun/misc/RegexpPool;

    invoke-direct {v6}, Lsun/misc/RegexpPool;-><init>()V

    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v11, "|"

    const/4 v13, 0x0

    invoke-direct {v9, v4, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v11, v13}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lsun/misc/REException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_5
    :try_start_2
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v6, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    :cond_6
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    iget-object v13, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lsun/misc/RegexpPool;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_9

    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return-object v11

    :cond_7
    :try_start_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v13, 0x0

    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v13, 0x0

    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "|localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_2

    :cond_9
    monitor-exit v12

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Port"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_c

    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_c

    const/4 v3, 0x1

    :goto_4
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_c

    if-eq v3, v2, :cond_b

    if-nez v7, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Port"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    if-nez v7, :cond_d

    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_e

    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    const-string/jumbo v12, "socket"

    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v7

    :cond_d
    :goto_5
    invoke-static {v5, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_f

    const-string/jumbo v11, "socksProxyVersion"

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v8, v10}, Lsun/net/SocksProxy;->create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;

    move-result-object v11

    return-object v11

    :cond_e
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_f
    new-instance v11, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v11, v12, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v11

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v11
.end method
