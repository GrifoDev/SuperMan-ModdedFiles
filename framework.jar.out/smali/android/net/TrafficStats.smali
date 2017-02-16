.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final PB_IN_BYTES:J = 0x4000000000000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TAG_SYSTEM_RESTORE:I = -0xfc

.field public static final TB_IN_BYTES:J = 0x10000000000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UID_VIDEOCALL:I = -0x64

.field public static final UNSUPPORTED:I = -0x1

.field private static mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 216
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 246
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 359
    if-eqz p0, :cond_0

    .line 361
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 362
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 363
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static getClatIfaces()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    .end local v0    # "clatIface":Ljava/lang/String;
    .local v1, "iface":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 1109
    const-string/jumbo v5, "clat4"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1110
    move-object v0, v1

    .line 1108
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    const-string/jumbo v5, "v4-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1112
    move-object v0, v1

    .local v0, "clatIface":Ljava/lang/String;
    goto :goto_1

    .line 1115
    .end local v0    # "clatIface":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 950
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 952
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static getMeteredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getMeteredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 965
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getMobileMeteredRxBytes(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1082
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1084
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1085
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1086
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1088
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 1091
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1092
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 1093
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1094
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1095
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1096
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 1094
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1099
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileMeteredRxPackets(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1055
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1057
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1058
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1059
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1061
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 1064
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1065
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 1066
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1067
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1068
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1069
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 1067
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1072
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1075
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileMeteredTxBytes(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1028
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1030
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1031
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1032
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1034
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 1037
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1038
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 1039
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1040
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1041
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1042
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 1040
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1045
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1048
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileMeteredTxPackets(Ljava/util/HashSet;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 999
    .local p0, "mMeteredIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1001
    .local v6, "total":J
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1003
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1004
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1005
    .local v3, "iface":Ljava/lang/String;
    const-string/jumbo v8, "rmnet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1007
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 1010
    .end local v3    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1011
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v5

    .line 1012
    .local v5, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1013
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1014
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1015
    iget-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v6, v8

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1018
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v5    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1021
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v6
.end method

.method public static getMobileRxBytes()J
    .locals 10

    .prologue
    .line 519
    const-wide/16 v2, 0x0

    .line 520
    .local v2, "total":J
    const/4 v0, 0x0

    .line 521
    .local v0, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "clatIface":Ljava/lang/String;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 522
    .local v1, "iface":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 525
    const-string/jumbo v7, "clat4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 526
    move-object v0, v1

    .line 521
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const-string/jumbo v7, "v4-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 528
    move-object v0, v1

    .local v0, "clatIface":Ljava/lang/String;
    goto :goto_1

    .line 532
    .end local v0    # "clatIface":Ljava/lang/String;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 533
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 536
    :cond_3
    return-wide v2
.end method

.method public static getMobileRxBytes(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 541
    const-wide/16 v2, 0x0

    .line 542
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 543
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 544
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileRxBytesExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 565
    const-wide/16 v2, 0x0

    .line 566
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 567
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 566
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 572
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileRxPackets()J
    .locals 10

    .prologue
    .line 446
    const-wide/16 v2, 0x0

    .line 447
    .local v2, "total":J
    const/4 v0, 0x0

    .line 448
    .local v0, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "clatIface":Ljava/lang/String;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 449
    .local v1, "iface":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 452
    const-string/jumbo v7, "clat4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    move-object v0, v1

    .line 448
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const-string/jumbo v7, "v4-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 455
    move-object v0, v1

    .local v0, "clatIface":Ljava/lang/String;
    goto :goto_1

    .line 460
    .end local v0    # "clatIface":Ljava/lang/String;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 461
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 464
    :cond_3
    return-wide v2
.end method

.method public static getMobileRxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 553
    const-wide/16 v2, 0x0

    .line 554
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 555
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 554
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 560
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    .prologue
    .line 578
    const-wide/16 v4, 0x0

    .line 579
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    array-length v7, v6

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v0, v6, v1

    .line 580
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    .line 581
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 582
    add-long/2addr v4, v2

    .line 579
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    .prologue
    .line 590
    const-wide/16 v4, 0x0

    .line 591
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    array-length v7, v6

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v0, v6, v1

    .line 592
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    .line 593
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 594
    add-long/2addr v4, v2

    .line 591
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTxBytes()J
    .locals 10

    .prologue
    .line 477
    const-wide/16 v2, 0x0

    .line 478
    .local v2, "total":J
    const/4 v0, 0x0

    .line 479
    .local v0, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "clatIface":Ljava/lang/String;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 480
    .local v1, "iface":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 483
    const-string/jumbo v7, "clat4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 484
    move-object v0, v1

    .line 479
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 485
    :cond_1
    const-string/jumbo v7, "v4-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 486
    move-object v0, v1

    .local v0, "clatIface":Ljava/lang/String;
    goto :goto_1

    .line 491
    .end local v0    # "clatIface":Ljava/lang/String;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 492
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 495
    :cond_3
    return-wide v2
.end method

.method public static getMobileTxBytes(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 500
    const-wide/16 v2, 0x0

    .line 501
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 502
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 503
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileTxBytesExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 425
    const-wide/16 v2, 0x0

    .line 426
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 427
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 426
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 432
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileTxPackets()J
    .locals 10

    .prologue
    .line 379
    const-wide/16 v2, 0x0

    .line 380
    .local v2, "total":J
    const/4 v0, 0x0

    .line 381
    .local v0, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "clatIface":Ljava/lang/String;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 382
    .local v1, "iface":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 385
    const-string/jumbo v7, "clat4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    move-object v0, v1

    .line 381
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const-string/jumbo v7, "v4-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 388
    move-object v0, v1

    .local v0, "clatIface":Ljava/lang/String;
    goto :goto_1

    .line 392
    .end local v0    # "clatIface":Ljava/lang/String;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 393
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 396
    :cond_3
    return-wide v2
.end method

.method public static getMobileTxPackets(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 401
    const-wide/16 v2, 0x0

    .line 402
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 403
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method public static getMobileTxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 413
    const-wide/16 v2, 0x0

    .line 414
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 415
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 420
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method private static getMptcpState()Z
    .locals 8

    .prologue
    .line 682
    const/4 v4, 0x0

    .line 683
    .local v4, "mptcpState":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 684
    return v4

    .line 687
    :cond_0
    const/4 v0, 0x0

    .line 689
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/proc/sys/net/mptcp/mptcp_enabled"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v5, "socketFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 693
    const-string/jumbo v6, "2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    .line 694
    const/4 v4, 0x1

    goto :goto_0

    .line 700
    :cond_2
    if-eqz v1, :cond_3

    .line 702
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v0, v1

    .line 708
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "socketFile":Ljava/io/File;
    :cond_4
    :goto_2
    return v4

    .line 703
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "socketFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 704
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 697
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "socketFile":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 698
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    if-eqz v0, :cond_4

    .line 702
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 703
    :catch_2
    move-exception v2

    .line 704
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 699
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 700
    :goto_4
    if-eqz v0, :cond_5

    .line 702
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 699
    :cond_5
    :goto_5
    throw v6

    .line 703
    :catch_3
    move-exception v2

    .line 704
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 699
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "socketFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 697
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static declared-synchronized getPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    .line 977
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_0

    .line 979
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 978
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 981
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 607
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 144
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const/4 v4, 0x0

    .line 722
    invoke-static {}, Landroid/net/TrafficStats;->getMptcpState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 725
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    return-wide v2

    .line 727
    :cond_0
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    div-long/2addr v2, v6

    return-wide v2

    .line 730
    .end local v0    # "clatIface":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 731
    .restart local v0    # "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 732
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 734
    :cond_2
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTotalRxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 653
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 655
    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTotalTxBytes()J
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 671
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 673
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 675
    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTotalTxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 631
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 635
    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 612
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 791
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 792
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 794
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidRxPackets(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 848
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 849
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 850
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 852
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 919
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 864
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 908
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 761
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 762
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 763
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 765
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidTxPackets(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 819
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 820
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 821
    :cond_0
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 823
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 941
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 930
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    .line 336
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 337
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 335
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 350
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 172
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 171
    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1

    .prologue
    .line 184
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 183
    return-void
.end method

.method public static setThreadStatsTagRestore()V
    .locals 1

    .prologue
    .line 196
    const/16 v0, -0xfc

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 195
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 235
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 234
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 302
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 295
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 315
    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 320
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 322
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 321
    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 323
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 324
    return-object v0
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/DatagramSocket;)V

    .line 278
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 258
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/DatagramSocket;)V

    .line 285
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 265
    return-void
.end method
