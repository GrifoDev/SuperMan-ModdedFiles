.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SecurityControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHasCACerts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVpnUserId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SecurityController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->onUserSwitched(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->startTracking()V

    return-void
.end method

.method private fireCallbacks()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 6

    iget-boolean v3, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f12073f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SecurityController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-object v0
.end method

.method private getWorkProfileUserId(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/KnoxStateMonitor;->isLegacyContainer(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, -0x2710

    return v2
.end method

.method private isVpnPackageBranded(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.systemui.IS_BRANDED"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    return v6
.end method

.method private refreshCACerts()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    new-array v2, v5, [Ljava/lang/Integer;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 8

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v6, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    :cond_1
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SecurityController"

    const-string/jumbo v7, "Unable to list active VPNs"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "SecurityController state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  mCurrentVpns={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v1, ", "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryVpnName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getWorkProfileOrganizationName()Ljava/lang/CharSequence;
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getWorkProfileVpnName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v3
.end method

.method public hasCACertInCurrentUser()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCACertInWorkProfile()Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v1

    const/16 v3, -0x2710

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1
    return v2
.end method

.method public hasWorkProfile()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceManaged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    return v0
.end method

.method public isNetworkLoggingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isVpnBranded()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnPackageBranded(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isVpnEnabled()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onUserSwitched(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    if-nez p1, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method
