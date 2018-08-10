.class public Landroid/net/util/MultinetworkPolicyTracker;
.super Ljava/lang/Object;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile mAvoidBadWifi:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mMeteredMultipathPreference:I

.field private final mReevaluateRunnable:Ljava/lang/Runnable;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

.field private final mSettingsUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/util/MultinetworkPolicyTracker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;

    invoke-direct {v0, p0, p3}, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "network_metered_multipath_preference"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    invoke-direct {v0, p0}, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;-><init>(Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker$1;

    invoke-direct {v0, p0}, Landroid/net/util/MultinetworkPolicyTracker$1;-><init>(Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateAvoidBadWifi()Z

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateMeteredMultipathPreference()V

    return-void
.end method


# virtual methods
.method public configMeteredMultipathPreference()I
    .locals 2

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public configRestrictsAvoidBadWifi()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAvoidBadWifi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    return v0
.end method

.method public getAvoidBadWifiSetting()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeteredMultipathPreference()I
    .locals 1

    iget v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I

    return v0
.end method

.method synthetic lambda$-android_net_util_MultinetworkPolicyTracker_2908(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateAvoidBadWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateMeteredMultipathPreference()V

    return-void
.end method

.method public reevaluate()V
    .locals 2

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldNotifyWifiUnvalidated()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->reevaluate()V

    return-void
.end method

.method public updateAvoidBadWifi()Z
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v2, "1"

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    iget-boolean v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    if-eq v2, v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updateMeteredMultipathPreference()V
    .locals 4

    iget-object v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "network_metered_multipath_preference"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configMeteredMultipathPreference()I

    move-result v2

    iput v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I

    goto :goto_0
.end method
