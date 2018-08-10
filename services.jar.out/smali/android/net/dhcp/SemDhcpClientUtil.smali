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

.field private static final LEASE_FILE_VERSION:I = 0x2

.field private static final MAX_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static final mSaveLeaseFile:Z

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
    .locals 2

    sget-boolean v0, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "loadConfigFile - not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
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
    .locals 6

    const/4 v5, 0x0

    sget-boolean v2, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveDhcpResult bssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-nez v2, :cond_3

    :cond_1
    sget-boolean v2, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DhcpClient"

    const-string/jumbo v3, "failed to save dhcp result - dhcp result is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v2, p2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    new-instance v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-direct {v0, v5}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V

    iput-object p1, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    iput v2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    iget-object v2, p2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->isLastUpdatedInfo:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Landroid/net/dhcp/SemDhcpClientUtil;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "DhcpClient"

    const-string/jumbo v3, "saveDhcpResult - not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
