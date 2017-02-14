.class public final Lcom/sec/dtl/launcher/GyroForShadow;
.super Ljava/lang/Object;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;,
        Lcom/sec/dtl/launcher/GyroForShadow$SourceType;
    }
.end annotation


# static fields
.field private static DISABLE_INTERRUPT_GYRO:I = 0x0

.field private static ENABLE_INTERRUPT_GYRO:I = 0x0

.field private static INTERRUPT_GYRO_SERVICE:I = 0x0

.field private static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b

.field private static TAG:Ljava/lang/String;

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mMobileKeyboardScreenHeight:F

.field static mPrevX:F

.field static mPrevY:F

.field private static mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private static mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private static mScreenHeight:F

.field private static mScreenWidth:F

.field private static mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

.field static mStartTimestamp:J

.field private static map_x:F

.field private static map_y:F

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static final sel:Landroid/hardware/SensorEventListener;

.field private static tilt_x_range:F

.field private static tilt_y_range:F

.field private static wallpaper_x_range:F

.field private static wallpaper_y_range:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-string v0, "GyroForShadow"

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mMobileKeyboardScreenHeight:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->map_x:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->map_y:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_x_range:F

    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    const/16 v0, 0x30

    sput v0, Lcom/sec/dtl/launcher/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/dtl/launcher/GyroForShadow;->ENABLE_INTERRUPT_GYRO:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/dtl/launcher/GyroForShadow;->DISABLE_INTERRUPT_GYRO:I

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow$SourceType;->UNKNOWN:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    new-instance v0, Lcom/sec/dtl/launcher/GyroForShadow$3;

    invoke-direct {v0}, Lcom/sec/dtl/launcher/GyroForShadow$3;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/dtl/launcher/GyroForShadow;->mStartTimestamp:J

    new-instance v0, Lcom/sec/dtl/launcher/GyroForShadow$4;

    invoke-direct {v0}, Lcom/sec/dtl/launcher/GyroForShadow$4;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/SensorManager;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorEventListener;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$200()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->map_x:F

    return v0
.end method

.method static synthetic access$202(F)F
    .locals 0

    sput p0, Lcom/sec/dtl/launcher/GyroForShadow;->map_x:F

    return p0
.end method

.method static synthetic access$300()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    return v0
.end method

.method static synthetic access$400(FFFFF)F
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/dtl/launcher/GyroForShadow;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$500()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->map_y:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0

    sput p0, Lcom/sec/dtl/launcher/GyroForShadow;->map_y:F

    return p0
.end method

.method static synthetic access$600()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    return v0
.end method

.method static synthetic access$700()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_x_range:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    sget v0, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    return v0
.end method

.method public static changeTiltXYRange()V
    .locals 16

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const-wide v12, 0x3ff2666666666666L    # 1.15

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mMobileKeyboardScreenHeight:F

    :cond_0
    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    float-to-double v4, v4

    mul-double/2addr v4, v12

    sget v6, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    div-double/2addr v4, v14

    double-to-float v4, v4

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    float-to-double v4, v4

    mul-double/2addr v4, v12

    sget v6, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    div-double/2addr v4, v14

    double-to-float v4, v4

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/sec/dtl/launcher/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v5, "GyroForShadow is not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    sget-object v4, Lcom/sec/dtl/launcher/GyroForShadow;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher2/utils/WallpaperUtils;->getWallpaperDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v4, Lcom/sec/dtl/launcher/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v5, "changeTiltXYRange(), WallpaperManager getDrawable() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v9, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_x_range:F

    sput v9, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x45200000    # 2560.0f

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    :cond_4
    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    sget v5, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_5

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_x_range:F

    mul-float/2addr v4, v9

    int-to-float v5, v2

    sget v6, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenWidth:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    div-float/2addr v4, v5

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_x_range:F

    :cond_5
    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    sget v5, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    float-to-int v4, v4

    if-le v1, v4, :cond_6

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->tilt_y_range:F

    mul-float/2addr v4, v9

    int-to-float v5, v1

    sget v6, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    div-float/2addr v4, v5

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    :cond_6
    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    sget v5, Lcom/sec/dtl/launcher/GyroForShadow;->mMobileKeyboardScreenHeight:F

    sget v6, Lcom/sec/dtl/launcher/GyroForShadow;->mScreenHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->wallpaper_y_range:F

    :cond_7
    sget-object v4, Lcom/sec/dtl/launcher/GyroForShadow;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher2/utils/WallpaperUtils;->releaseWallpaperDrawable(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static checkScontext()V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "scontext"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_1
    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget v3, Lcom/sec/dtl/launcher/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow$SourceType;->SCONTEXT:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    sput-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow$SourceType;->SENSOR:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    sput-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->checkScontext()V

    new-instance v0, Lcom/sec/dtl/launcher/GyroForShadow$1;

    const-string v1, "changeTiltXYRange"

    invoke-direct {v0, v1}, Lcom/sec/dtl/launcher/GyroForShadow$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/GyroForShadow$1;->start()V

    return-void
.end method

.method private static map(FFFFF)F
    .locals 3

    sub-float v0, p4, p3

    sub-float v1, p0, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static pauseSContext()V
    .locals 4

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->DISABLE_INTERRUPT_GYRO:I

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>(I)V

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    sget v3, Lcom/sec/dtl/launcher/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    :cond_0
    return-void
.end method

.method public static pauseSensor()V
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method

.method public static registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sput v0, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    :cond_0
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    return-void
.end method

.method public static resumeSContext()V
    .locals 7

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->ENABLE_INTERRUPT_GYRO:I

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>(I)V

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/sec/dtl/launcher/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    sget v3, Lcom/sec/dtl/launcher/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sec/dtl/launcher/GyroForShadow;->mStartTimestamp:J

    sput v6, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sput v6, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sput v6, Lcom/sec/dtl/launcher/GyroForShadow;->map_y:F

    sput v6, Lcom/sec/dtl/launcher/GyroForShadow;->map_x:F

    :cond_0
    return-void
.end method

.method public static resumeSensor()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x11e1a300

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sec/dtl/launcher/GyroForShadow;->mStartTimestamp:J

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->map_y:F

    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->map_x:F

    :cond_0
    return-void
.end method

.method public static startSensor()V
    .locals 2

    const v0, 0x1002b

    new-instance v1, Lcom/sec/dtl/launcher/GyroForShadow$2;

    invoke-direct {v1}, Lcom/sec/dtl/launcher/GyroForShadow$2;-><init>()V

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/GyroForShadow$2;->start()V

    return-void
.end method

.method public static stopSensor()V
    .locals 2

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public static supportScontext()Z
    .locals 2

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow$SourceType;->UNKNOWN:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->checkScontext()V

    :cond_0
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mSourceType:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow$SourceType;->SCONTEXT:Lcom/sec/dtl/launcher/GyroForShadow$SourceType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V
    .locals 1

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method
