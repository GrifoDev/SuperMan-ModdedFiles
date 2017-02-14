.class public Landroid/net/dhcp/SemDhcpClientUtil;
.super Ljava/lang/Object;
.source "SemDhcpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DHCP_CONFIG_FILE:Ljava/lang/String;

.field private static final KEY_BSSID:Ljava/lang/String; = "bssid"

.field private static final KEY_IP:Ljava/lang/String; = "ip"

.field private static final KEY_PREFIX:Ljava/lang/String; = "ip_prefix"

.field private static final KEY_SERVER_IP:Ljava/lang/String; = "server_ip"

.field private static final KEY_UPDATED:Ljava/lang/String; = "last_updated"

.field private static final MAX_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static sInstance:Landroid/net/dhcp/SemDhcpClientUtil;


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/dhcp_lease.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/dhcp/SemDhcpClientUtil;->loadConfigFile(Ljava/lang/String;)V

    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/dhcp/SemDhcpClientUtil;
    .locals 2

    const-class v1, Landroid/net/dhcp/SemDhcpClientUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/dhcp/SemDhcpClientUtil;

    invoke-direct {v0}, Landroid/net/dhcp/SemDhcpClientUtil;-><init>()V

    sput-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;

    :cond_0
    sget-object v0, Landroid/net/dhcp/SemDhcpClientUtil;->sInstance:Landroid/net/dhcp/SemDhcpClientUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadConfigFile(Ljava/lang/String;)V
    .locals 17

    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loadConfigFile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const/4 v14, 0x1

    if-eq v11, v14, :cond_2

    const-string/jumbo v14, "DhcpClient"

    const-string/jumbo v15, "Bad version on dhcp configuration file, ignore read"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V

    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    :try_start_4
    const-string/jumbo v14, "bssid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_5
    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Ignore invalid address while reading"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_2
    move-object v6, v7

    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    :cond_6
    return-void

    :cond_7
    :try_start_7
    const-string/jumbo v14, "ip"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v6, v7

    :goto_4
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3

    :cond_8
    :try_start_9
    const-string/jumbo v14, "ip_prefix"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    iput v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v2

    move-object v6, v7

    :goto_5
    :try_start_a
    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_9

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error parsing configuration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_9
    if-eqz v6, :cond_5

    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3

    :cond_a
    :try_start_c
    const-string/jumbo v14, "server_ip"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v14

    move-object v6, v7

    :goto_6
    if-eqz v6, :cond_b

    :try_start_d
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_b
    :goto_7
    throw v14

    :cond_c
    :try_start_e
    const-string/jumbo v14, "last_updated"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    iput-wide v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    invoke-virtual {v8}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isValid()Z

    move-result v14

    if-eqz v14, :cond_e

    sget-boolean v14, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v14, :cond_d

    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "load dhcp info - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v14, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_3

    move-object v10, v8

    iget-wide v12, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v14, "DhcpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "info "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in not valid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto :goto_7

    :catchall_1
    move-exception v14

    goto :goto_6

    :catch_8
    move-exception v5

    goto/16 :goto_4

    :catch_9
    move-exception v2

    goto/16 :goto_5
.end method


# virtual methods
.method public getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDhcpResult - bssid is not matched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v3, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-nez v1, :cond_1

    return-object v6

    :cond_1
    const-string/jumbo v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDhcpResult - matched "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2}, Landroid/net/DhcpResults;-><init>()V

    :try_start_0
    new-instance v3, Landroid/net/LinkAddress;

    iget-object v4, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v4

    iget v5, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/dhcp/SemDhcpClientUtil;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    return-object v2

    :catch_0
    move-exception v0

    return-object v6
.end method

.method public saveDhcpResult(Ljava/lang/String;Landroid/net/DhcpResults;)V
    .locals 16

    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "saveDhcpResult bssid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-nez v13, :cond_3

    :cond_1
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_2

    const-string/jumbo v13, "DhcpClient"

    const-string/jumbo v14, "failed to save dhcp result - dhcp result is null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v13, :cond_1

    new-instance v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V

    move-object/from16 v0, p1

    iput-object v0, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v13

    iput v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v2, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-eqz v9, :cond_4

    iget-boolean v13, v9, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    if-eqz v13, :cond_4

    invoke-virtual {v2, v9}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z

    move-result v13

    if-eqz v13, :cond_4

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    sget-object v15, Landroid/net/dhcp/SemDhcpClientUtil;->DHCP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v10, v11

    :goto_1
    :try_start_2
    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_5

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing configuration: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eqz v10, :cond_6

    :try_start_3
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_2
    return-void

    :cond_7
    :try_start_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v5, v13, :cond_9

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    sget-boolean v13, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v13, :cond_8

    const-string/jumbo v13, "DhcpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "save dhcp info - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v13, "bssid"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v13, "ip"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v13, "ip_prefix"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string/jumbo v13, "server_ip"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v13, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v13, "last_updated"

    invoke-virtual {v11, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v14, v6, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    invoke-virtual {v11, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    if-eqz v11, :cond_a

    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_a
    :goto_4
    move-object v10, v11

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v10, :cond_b

    :try_start_6
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_6
    throw v13

    :catch_3
    move-exception v4

    goto :goto_6

    :catchall_1
    move-exception v13

    move-object v10, v11

    goto :goto_5

    :catch_4
    move-exception v3

    goto/16 :goto_1
.end method
