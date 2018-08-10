.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z

.field private static final EMERGENCY_MODE_ENABLED:Z

.field private static final MAP_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_LIMIT:I = 0x2710

.field static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisableNotificationAlerts:Z

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mLockState:I

.field private final mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyType:I

.field private mPolicyVersion:J

.field private mResumedComponent:Landroid/content/ComponentName;

.field private mResumedComponentTime:J

.field private mRinging:Z

.field private mStatusBarDisabled1:I

.field private mSuppressed:I

.field private mUseHeadsUp:Z

.field private mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string/jumbo v3, "desktopmode"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerCoverListener()V

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "heads_up_notifications_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "vrmanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v3, "vr"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, v3}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to get GearVrManager."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cleanUp()V
    .locals 10

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    monitor-exit v5

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v6, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v4, v6, v2

    if-gez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    monitor-exit v5

    return-void
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationInfo : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getEdgeLightingRestrictState(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v3, v4, :cond_3

    const/4 v0, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    :cond_1
    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p1, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEdgeLightingRestrictState mCoverState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :cond_3
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    return v3

    :cond_4
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    return v3

    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xb

    return v3

    :cond_6
    return v5
.end method

.method private getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object v3
.end method

.method private isDeviceInGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return v0
.end method

.method private isDeviceInVrMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return v0
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const-string/jumbo v0, "tickerText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "titleText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const-string/jumbo v0, "subText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isMirrorLinkOn()Z
    .locals 2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSupportedCover(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidApplication(Ljava/lang/String;I)Z
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    iget-object v5, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    invoke-direct {v3, p0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput p1, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    iput-object p3, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    iput-object p2, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "manageDisableRecoredLocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCoverListener()V
    .locals 2

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v8, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_1
    :try_start_1
    const-string/jumbo v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    :cond_2
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  [DisableRecord] : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_3
    :try_start_3
    const-string/jumbo v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v9

    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  [DisabledPackages] : type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v9

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_5

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v9, "white"

    invoke-virtual {v8, p1, p2, p3, v9}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v9, "black"

    invoke-virtual {v8, p1, p2, p3, v9}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSuppressed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object v3
.end method

.method getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_1
    return-object v3

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    return-object v1
.end method

.method public getResumedComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .locals 11

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v4

    return-object v10

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getValidNotificationData packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa0

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    monitor-exit v4

    return-object v0

    :cond_3
    monitor-exit v4

    return-object v10

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method isAcceptableApplication(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method isAcceptableApplication(Ljava/lang/String;IZI)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "android"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0, v6, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " , range="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " , includeAllApp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " , userId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " , infoRange="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz v3, :cond_4

    iget v4, v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " , infoCategory="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz v3, :cond_5

    iget v4, v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v4, 0xff00

    and-int/2addr v4, p2

    if-eqz v4, :cond_6

    if-eqz v3, :cond_3

    iget v4, v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    return v5

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    if-nez p3, :cond_7

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    :cond_7
    invoke-direct {p0, p1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    iget v4, v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v4, p2

    if-nez v4, :cond_8

    const/4 v0, 0x0

    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    :cond_9
    :goto_3
    if-eqz v0, :cond_b

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v4

    if-nez v4, :cond_10

    const/4 v0, 0x1

    :goto_4
    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v0, 0x1

    :goto_5
    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_8

    :cond_d
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isAllowEdgelighting(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    if-nez v2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method isEdgeLightingDisabled()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "EdgeLighting is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    monitor-exit v2

    return v3

    :cond_3
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_4
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method isEdgeLightingRestricted(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EdgeLighting is Restricted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1
.end method

.method public isEnabledHeadsUp()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHUNPeeked()Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isHUNPeeked : Vr mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isHUNPeeked : gear vr docked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isHUNPeeked : mirror link on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    return-object v15

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v3, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v15, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v13, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    const-string/jumbo v15, "android.title"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    const-string/jumbo v15, "android.text"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    const-string/jumbo v15, "android.subText"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    :cond_1
    sget-boolean v15, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v15, :cond_5

    sget-object v15, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "putNotification tickerText:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",titleText:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",text:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",sub:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "cn= + "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v5, v15, Landroid/app/Notification;->ledARGB:I

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    if-eqz v7, :cond_2

    iget-object v15, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v17, "color"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "isHeadup"

    move/from16 v0, p2

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v15, "isUpdate"

    move/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v15, "tickerText"

    invoke-virtual {v2, v15, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v15, "titleText"

    invoke-virtual {v2, v15, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v15, "text"

    invoke-virtual {v2, v15, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v15, "subText"

    invoke-virtual {v2, v15, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v15, "smallIcon"

    invoke-virtual {v2, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v15, "flag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "color"

    invoke-virtual {v2, v15, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "notification_color"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->color:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v17, "component"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "component_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v15, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v15, "group_key"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "content_intent"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v15, "user_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "noti_key"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "noti_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v15, "noti_tag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "noti_visiblity"

    move/from16 v0, p4

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v6, v8, v9, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    return-object v2

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v16, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "putNotification tickerText:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v13, :cond_6

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, ",titleText:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v14, :cond_7

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, ",text:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_8

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, ",sub:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v11, :cond_9

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, "cn= + "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    :cond_0
    return-void
.end method

.method setRinging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    return-void
.end method

.method public setSuppressed(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 8

    const/4 v4, 0x1

    const/high16 v7, 0x40000

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    xor-int v0, p1, v2

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disable: < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v3, p1, v7

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ALERTS"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v3, v0, v7

    if-eqz v3, :cond_2

    const-string/jumbo v3, "* "

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    and-int v3, v0, v7

    if-eqz v3, :cond_0

    and-int v3, p1, v7

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "alerts"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, " "

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v2

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method
