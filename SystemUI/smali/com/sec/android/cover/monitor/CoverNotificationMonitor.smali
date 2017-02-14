.class public Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.super Ljava/lang/Object;
.source "CoverNotificationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;,
        Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;,
        Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;,
        Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mTmpRanking2:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mListener:Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking2:Landroid/service/notification/NotificationListenerService$Ranking;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->updateRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking2:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    new-instance v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;-><init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .locals 4

    sget-object v2, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Service unbinded, please call start before canceling notification"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 7

    const/4 v6, 0x0

    sget-object v4, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error getting active notifications"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v6

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Service unbound, please call start before gettig notifications"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isLockScreenEnabledPkg(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3, p1, v4}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public setCoverNotificationListener(Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mListener:Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public start()V
    .locals 7

    sget-object v2, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register notification listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stop()V
    .locals 4

    sget-object v2, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to register notification listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
