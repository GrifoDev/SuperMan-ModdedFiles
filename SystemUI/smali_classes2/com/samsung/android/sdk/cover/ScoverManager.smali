.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverPowerKeyListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    }
.end annotation


# static fields
.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNeonCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    :cond_0
    return-void
.end method

.method static isSupportableVersion(I)Z
    .locals 8

    const v7, 0xffff

    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v0, v6, 0xff

    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v1, v6, 0xff

    and-int v2, p0, v7

    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v3, v6, 0xff

    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v4, v6, 0xff

    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int v5, v6, v7

    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_0
    const/4 v6, 0x0

    return v6
.end method

.method private registerLegacyLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v6, "ScoverManager"

    const-string/jumbo v7, "registerLegacyLedSystemListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v1

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p1, v7, v6}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const/4 v6, 0x4

    invoke-interface {v5, v6, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "ScoverManager"

    const-string/jumbo v7, "RemoteException in registerLegacyLedSystemListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static supportNewLedSystemEventListener()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/high16 v0, 0x1050000

    const/high16 v1, 0x1050000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    return v1
.end method

.method private unregisterLegacyLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const-string/jumbo v5, "ScoverManager"

    const-string/jumbo v6, "unregisterLegacyLedSystemEventListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v5, "ScoverManager"

    const-string/jumbo v6, "unregisterLegacyLedSystemEventListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    :cond_2
    if-nez v3, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ScoverManager"

    const-string/jumbo v6, "RemoteException in unregisterLegacyLedSystemEventListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method getCoverManagerVersion()I
    .locals 6

    const/high16 v2, 0x1000000

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-class v3, Lcom/samsung/android/cover/ICoverManager;

    const-string/jumbo v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    const-string/jumbo v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 17

    const/high16 v12, 0x1010000

    const/high16 v15, 0x1020000

    const/high16 v13, 0x1070000

    const/high16 v14, 0x10b0000

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v10

    if-eqz v10, :cond_6

    iget v1, v10, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const/high16 v1, 0x10b0000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v8, v10, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget v9, v10, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZI)V

    :goto_0
    return-object v0

    :cond_2
    const/high16 v1, 0x1070000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v8, v10, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZ)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x1020000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x1010000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v11

    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method isSmartCover()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportCover()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSupportNeonCover()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method public registerLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/high16 v5, 0x1030000

    const/high16 v7, 0x1080000

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v9, "ScoverManager"

    const-string/jumbo v10, "registerLedSystemListener : This device does not support cover"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v10, "ScoverManager"

    const-string/jumbo v11, "registerLedSystemListener"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNeonCover()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    const-string/jumbo v9, "ScoverManager"

    const-string/jumbo v10, "registerLedSystemListener : This device does not support NFC Led cover or Neon Cover"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x1030000

    invoke-static {v10}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v10

    :goto_0
    if-nez v10, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNeonCover()Z

    move-result v10

    if-eqz v10, :cond_2

    const/high16 v9, 0x1080000

    invoke-static {v9}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v9

    :cond_2
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    new-instance v9, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v10, "This device does not support this function. Device is must higher then v1.3.0 for NFC LED Cover and v1.8.0 for Neon cover"

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v9

    :cond_3
    move v10, v9

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const-string/jumbo v9, "ScoverManager"

    const-string/jumbo v10, "registerLedSystemListener : listener is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->supportNewLedSystemEventListener()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerLegacyLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V

    return-void

    :cond_6
    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v6, v1

    const/4 v3, 0x1

    :cond_8
    if-nez v6, :cond_9

    new-instance v6, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p1, v12, v9}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_9
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    const/4 v9, 0x4

    invoke-interface {v8, v9, v6, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    if-nez v3, :cond_a

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v9, "ScoverManager"

    const-string/jumbo v10, "RemoteException in registerLedSystemListener: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v2

    const/4 v4, 0x1

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v9, v7}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    if-nez v4, :cond_6

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "RemoteException in registerListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v8, "ScoverManager"

    const-string/jumbo v9, "unregisterLedSystemEventListener"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x1030000

    const/high16 v5, 0x1080000

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "unregisterLedSystemEventListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v8, "ScoverManager"

    const-string/jumbo v9, "unregisterLedSystemEventListener"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNeonCover()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "unregisterLedSystemEventListener : This device does not support NFC Led cover or Neon Cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x1030000

    invoke-static {v8}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v8

    :goto_0
    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNeonCover()Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v7, 0x1080000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    :cond_2
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string/jumbo v8, "This device does not support this function. Device is must higher then v1.3.0 for NFC LED Cover and v1.8.0 for Neon cover"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_3
    move v8, v7

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "unregisterLedSystemEventListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->supportNewLedSystemEventListener()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterLegacyLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V

    return-void

    :cond_6
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v4, v0

    :cond_8
    if-nez v4, :cond_9

    return-void

    :cond_9
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "ScoverManager"

    const-string/jumbo v8, "RemoteException in unregisterLedSystemEventListener: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
