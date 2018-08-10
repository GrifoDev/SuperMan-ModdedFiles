.class public Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
.super Ljava/lang/Object;
.source "AllAroundSensingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;,
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;,
        Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final AAS_ON:Ljava/lang/String; = "sys.aasservice.aason"

.field private static final TAG:Ljava/lang/String; = "AllAroundSensingService"


# instance fields
.field private final BV_READ_START_MILLIS:J

.field private final CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private final LIGHT_SENSOR_IN_COUNT:I

.field private final LIGHT_SENSOR_OUT_COUNT:I

.field private final MSG_CHECK_AAS_SERVICE:I

.field private MSG_CHECK_AAS_SERVICE_MILLIS:J

.field private final MSG_ENABLE_SENSOR_VALUE:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_AAS_OFF:I

.field private final MSG_SET_AAS_ON:I

.field private final RECHECK_DEBOUNCE_MILLIS:J

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDoNotReleaseBrightnessLimit:Z

.field private mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighHysteresis:I

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mLimit255:Z

.field private mLowHysteresis:I

.field private mPowerManager:Landroid/os/PowerManager;

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSensorCount:I

.field private mUseAllAroundSensingConfig:Z

.field private preBrightnessValue:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOff()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->cameraStateOn()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkCameraAndBrightnessState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->enableBrightnessValueEnable()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_FOREGROUND_APP:I

    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_ON:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_SET_AAS_OFF:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_ENABLE_SENSOR_VALUE:I

    iput v7, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_IN_COUNT:I

    const/16 v3, 0xf

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->LIGHT_SENSOR_OUT_COUNT:I

    const-wide/16 v4, 0xc8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->BV_READ_START_MILLIS:J

    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->RECHECK_DEBOUNCE_MILLIS:J

    const-wide/16 v4, 0xfa

    iput-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.android.app.camera.Camera"

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.android.gallery3d.app.GalleryActivity"

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    const/16 v3, 0x64

    iput v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLowHysteresis:I

    iput-boolean v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$1;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "AllAroundSensingServiceThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-object v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScreenWatchingReceiver;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mUseAllAroundSensingConfig:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "sys.aasservice.aason"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "AllAroundSensingService"

    const-string/jumbo v4, "failed to registerProcessObserver"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateBVtoLux(F)F
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x403712d81adea897L    # 23.07361

    mul-double/2addr v0, v2

    const-wide v2, 0x406a0417c1bda512L    # 208.1279

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private cameraStateOff()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    return-void
.end method

.method private cameraStateOn()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->checkForAAS(Z)V

    return-void
.end method

.method private changeDisplayBrightness(FFF)V
    .locals 4

    const/16 v3, 0xff

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "AAS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    iget-boolean v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->setPlatformBrightnessValue(I)V

    const-string/jumbo v1, "AllAroundSensingService"

    const-string/jumbo v2, "setPlatformBrightnessValue 255"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    :cond_0
    return-void
.end method

.method private checkCameraAndBrightnessState()V
    .locals 11

    const/4 v8, 0x5

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "AAS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->getBrightnessValueEnable()Z

    move-result v3

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v3, :cond_1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v6, v10}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v8, 0x7d0

    add-long/2addr v8, v4

    invoke-virtual {v6, v10, v8, v9}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkForAAS(Z)V
    .locals 6

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method

.method private enableBrightnessValueEnable()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AAS"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->handleLightSensorEvent()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->getBrightnessValue()F

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->calculateBVtoLux(F)F

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->sendLuxAndBrightnessValue(FF)V

    return-void
.end method

.method private handleLightSensorEvent()V
    .locals 6

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    iget-wide v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->MSG_CHECK_AAS_SERVICE_MILLIS:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_0
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    iput-boolean v5, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->releaseAutoBrightnessLimit()V

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHandler:Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->sendEmptyMessage(I)Z

    iput-boolean v5, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    goto :goto_2
.end method

.method private releaseAutoBrightnessLimit()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AAS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Camera_ConfigPlatformBrightness"

    const/16 v4, 0x78

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mDoNotReleaseBrightnessLimit:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->setPlatformBrightnessValue(I)V

    const-string/jumbo v2, "AllAroundSensingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPlatformBrightnessValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    return-void
.end method

.method private sendLuxAndBrightnessValue(FF)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    move v0, p1

    iget-boolean v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mLimit255:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ge v2, v7, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mHighHysteresis:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    :cond_0
    :goto_0
    const-string/jumbo v2, "AllAroundSensingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "     Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      mPow2bv -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "      BV -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    iput p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->preBrightnessValue:F

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    if-ne v2, v7, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->changeDisplayBrightness(FFF)V

    iput v6, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mSensorCount:I

    goto :goto_0
.end method
