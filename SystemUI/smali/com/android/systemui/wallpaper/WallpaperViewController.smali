.class public Lcom/android/systemui/wallpaper/WallpaperViewController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperViewController$1;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$2;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$3;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$4;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mIsInfinityWallpaper:Z

.field private mIsMultiLockWallpaper:Z

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenOn:Z

.field protected mService:Landroid/app/IWallpaperManager;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field protected mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field protected mVisibility:I

.field private mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

.field mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field protected mWallpaperType:I

.field protected mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/wallpaper/WallpaperViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    return p1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x4

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    iput v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mVisibility:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    new-array v1, v2, [Landroid/net/Uri;

    const-string/jumbo v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "lock_adaptive_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$1;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$2;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$3;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$4;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$5;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->registerOMCWallpaperUpdatedReceiver()V

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->registerWallpaperChangedReceiver()V

    :cond_0
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->isDesktopMode()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWallpaperChangedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/16 v1, 0x25d

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsInfinityWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getLockWallpaperType()I
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method protected handleCleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onBootCompleted()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->init()V

    const-string/jumbo v0, "WallpaperViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootCompleted mWallpaperType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->getLockWallpaperType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->sendIntentToWallpaperUpdator(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onPause()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->sendIntentToWallpaperUpdator(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onResume()V

    :cond_1
    return-void
.end method

.method protected onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onWallpaperChanged()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v10, 0x25a

    const/4 v9, 0x0

    const/16 v8, 0x259

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->isDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const-string/jumbo v5, "WallpaperViewController"

    const-string/jumbo v6, "onWallpaperChanged() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    sget-boolean v5, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v2

    const-string/jumbo v5, "WallpaperViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onWallpaperChanged() called newType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " oldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " newDeXMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " oldDeXMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isInfinityWallpaper="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isMultiLockWallpaper="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iput v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V

    sget-boolean v5, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v9, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "WallpaperViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "System dead?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v5, v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->reset()V

    :cond_0
    return-void
.end method

.method protected sendIntentToWallpaperUpdator(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.samsung.intent.action.WALLPAPER_UPDATOR_SCREEN_TURNNING_ON"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.keyguardwallpaperupdator"

    const-string/jumbo v3, "com.samsung.android.keyguardwallpaperupdator.manager.ScreenStateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v1, "com.samsung.intent.action.WALLPAPER_UPDATOR_SCREEN_TURNED_OFF"

    goto :goto_0
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v2}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWallpaperCommand() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v1, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onCommand(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    goto :goto_0
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method
