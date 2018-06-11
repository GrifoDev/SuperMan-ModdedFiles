.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/TextView;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$1;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$2;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$3;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$4;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;
    }
.end annotation


# static fields
.field private static mActiveInterface:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mNetspeedSwitch:Z

.field private static mVpnConnected:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttached:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDarkIconColor:I

.field private mNetSpeedColor:I

.field private mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

.field private mNetworkStats:Z

.field private mNetworkStatsHandler:Landroid/os/Handler;

.field private mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterReceiver:Z

.field private mScreenOn:Z

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShowDark:Z

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getActiveInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->NetspeedView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShowDark:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    const-string/jumbo v0, "NetworkSpeedView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    sput-object p1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getActiveInterface(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "NetworkSpeedView"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v5
.end method

.method private registerListener()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "network_speed"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_speed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private setNetworkSpeed()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "NetworkSpeedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetspeedSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mNetworkStats = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setVisibility(I)V

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->registerListener()V

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    const v0, -0x42000001    # -0.12499999f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetSpeedColor:I

    const v0, -0x67000000

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkIconColor:I

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->updateViews(F)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    float-to-int v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkIconColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetSpeedColor:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setTextColor(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07014a

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f07008a

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->unregisterListener()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mNetSpeedColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetSpeedColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkIconColor:I

    return-void
.end method

.method public setForceHideView(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVisibility:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateViews(F)V
    .locals 2

    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->readRenovateMods()V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkIconColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetSpeedColor:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setTextColor(I)V

    return-void
.end method
