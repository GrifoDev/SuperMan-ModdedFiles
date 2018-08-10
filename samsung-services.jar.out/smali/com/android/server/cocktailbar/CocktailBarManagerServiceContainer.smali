.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
.implements Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;
.implements Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MSG_CHANGE_RESUME_PACKAGE:I = 0x2

.field private static final MSG_CHANGE_VISIBLE_EDGE_SERVICE:I = 0x1

.field private static final MSG_PACKAGE_DATA_CLEARED:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCocktailBarHandler:Landroid/os/Handler;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFilterCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSafeMode:Z

.field private final mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

.field private final mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

.field private mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangeVisibleEdgeService(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->handleChangedResumePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUnlockUserImpl(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStarted(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStopped(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->startCocktailBarServiceWithCurrentUser()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    new-instance v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-direct {v0, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerOnCrossProfileProvidersChangedListener()V

    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    return-void
.end method

.method private bootCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImpl(I)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->registerBroadcastReceiver()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private createCocktailBarManagerServiceImpl(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private createCocktailBarManagerServiceImplLocked(I)V
    .locals 6

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private enforceCocktailBarService()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

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

.method private ensureGroupStateLoaded(I)V
    .locals 8

    const/4 v7, -0x1

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    const/4 v1, 0x0

    array-length v3, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget v2, v4, v0

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v5, -0x1

    aput v5, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_2

    monitor-exit v6

    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    :try_start_1
    aget v2, v4, v0

    if-eq v2, v7, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->createCocktailBarManagerServiceImplLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", adding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v6, 0x1

    :cond_1
    monitor-exit v7

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method private getUserIdFromCocktailId(I)I
    .locals 2

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isValidCocktailBarManagerServiceImpl(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x2710

    return v1
.end method

.method private handleChangeVisibleEdgeService(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->changeVisibleEdgeService(Z)V

    return-void
.end method

.method private handleChangedResumePackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->changeResumePackage(Ljava/lang/String;I)V

    return-void
.end method

.method private isValidCocktailBarManagerServiceImpl(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onUnlockUserImpl(I)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUnlockUser : CocktailBarServices="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onUnlockUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    new-instance v3, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private onUserStarted(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStarted : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    return-void
.end method

.method private onUserStopped(I)V
    .locals 7

    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserStopped : userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemDestroy()V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    const/16 v3, 0x64

    if-lt p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private registerBroadcastReceiver()V
    .locals 19

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .locals 2

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    :cond_0
    return-void
.end method

.method private startCocktailBarServiceWithCurrentUser()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.cocktailbarservice"

    const-string/jumbo v2, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->activateCocktailBar()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.app.cocktailbarservice.permission.ACCESS_PANEL"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(Ljava/lang/String;II)V

    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->deactivateCocktailBar()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableCocktail(Landroid/content/ComponentName;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DUMP"

    sget-object v6, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, " "

    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getAllCocktailIds()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    aget v6, v4, v2

    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getAllCocktailIds(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getCategoryFilterStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilterStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getCocktaiBarWakeUpStateInternal()Z

    move-result v0

    return v0
.end method

.method public getCocktaiBarWakeUpStateInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    return v0
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget v4, v2, v1

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarVisibility()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    return v0
.end method

.method public getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getVersion()I

    move-result v0

    return v0
.end method

.method public getEnabledCocktailIds()[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    new-array v10, v10, [I

    return-object v10

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v10, v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_3

    aget v10, v8, v3

    invoke-direct {p0, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getEnabledCocktailIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    aget v10, v8, v3

    invoke-direct {p0, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v11

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v11, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getComponentName(Ljava/lang/Integer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v8, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v10, v4, v6}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getMatchedSortIds(Ljava/util/ArrayList;Landroid/util/SparseArray;)[I

    move-result-object v10

    return-object v10
.end method

.method public getHideEdgeListStr()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPackageHideEdgeServiceList()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getPreferWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public getWindowType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getWindowType()I

    move-result v0

    return v0
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :goto_0
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the system process can call this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isBoundCocktailPackage(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isCocktailEnabled(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    return-void
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getUserIdFromCocktailId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getUserIdFromCocktailId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailVisibiltyChanged(II)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCocktailVisibiltyChanged: invalid user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyKeyguardState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyKeyguardState(Z)V

    return-void
.end method

.method public onChangeVisibleEdgeService(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onChangedResumePackage(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : packages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNotifyCocktailBarWakeUp(ZII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V

    return-void
.end method

.method public onRemoveCocktail(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktail(I)V

    return-void
.end method

.method public onResetMode(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    return-void
.end method

.method public onSetMode(IILjava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(ILjava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableUser(I)V

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_1
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is no longer unlocked - exiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x1000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnsetMode(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetMode(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdateCocktail(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateCocktail : contentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateHelpView : helpView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeCocktailUIService()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public requestToDisableCocktail(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    return v0
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByCategory(I)Z

    move-result v0

    return v0
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public setEnabledCocktailIds([I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v9, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v9, v8}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v5

    const/4 v1, 0x0

    :goto_0
    array-length v9, v5

    if-ge v1, v9, :cond_1

    aget v9, v5, v1

    invoke-direct {p0, v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setEnabledCocktailIds([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v7, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    const/4 v6, 0x0

    :goto_2
    array-length v9, v5

    if-ge v6, v9, :cond_3

    aget v9, v5, v6

    invoke-direct {p0, v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v9

    aget v10, p1, v2

    invoke-virtual {v9, v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    aget v9, v5, v6

    invoke-direct {v3, v0, v9, v2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(Lcom/samsung/android/cocktailbar/Cocktail;II)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailOrderManager:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-virtual {v9, v4}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->setOrderedList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setOnPullPendingIntent(Ljava/lang/String;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.app.cocktailbarservice.permission.ACCESS_PANEL"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->showCocktail(Ljava/lang/String;I)V

    return-void
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startListening() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mFilterCategory:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget v3, v1, v0

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopListening(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    sget-object v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopListening() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->deleteHost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public systemRunning(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSafeMode:Z

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCocktail : cocktailInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    return-void
.end method

.method public updateCocktailBarPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updatePosition(I)V

    return-void
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateVisibility(I)V

    return-void
.end method

.method public updateCocktailBarWindowType(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateWindowType(Ljava/lang/String;I)V

    return-void
.end method

.method public updateWakeupArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupArea(I)V

    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "-edgefeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public wakeupCocktailBarInternal(ZII)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->wakeupCocktailBar(ZII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip wakeupCocktailBar reason("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
