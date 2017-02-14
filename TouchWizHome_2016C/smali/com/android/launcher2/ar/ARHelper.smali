.class public Lcom/android/launcher2/ar/ARHelper;
.super Ljava/lang/Object;
.source "ARHelper.java"


# static fields
.field public static final APPS_SCREEN:I = 0x1

.field public static final HOME_EDIT:I = 0x4

.field public static final HOME_SCREEN:I = 0x3

.field public static final WIDGET_SCREEN:I = 0x2

.field private static mInstance:Lcom/android/launcher2/ar/ARHelper;

.field private static mIsAnimationRunning:Z

.field private static mIsRotationEnabled:Z

.field private static mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    sput-object v0, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsAnimationRunning:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsRotationEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/ar/AROrientationManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/ar/AROrientationManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/ar/ARHelper;
    .locals 2

    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/launcher2/ar/ARHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/ar/ARHelper;

    invoke-direct {v0}, Lcom/android/launcher2/ar/ARHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isAnimationRunning()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsAnimationRunning:Z

    return v0
.end method

.method public static isRotationAnimationEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsRotationEnabled:Z

    return v0
.end method

.method public static rotateWindow(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher2/ar/AROrientationManager;->setOrientation(I)V

    return-void
.end method

.method public static setIsAnimationRunning(Z)V
    .locals 1

    sput-boolean p0, Lcom/android/launcher2/ar/ARHelper;->mIsAnimationRunning:Z

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ar/AROrientationManager;->notifyAnimaEnd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->getInstance()Lcom/android/launcher2/ar/ARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ar/ARManager;->destroy()V

    invoke-virtual {p0}, Lcom/android/launcher2/ar/ARHelper;->disableRotationAnimation()V

    sput-object v1, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    sput-object v1, Lcom/android/launcher2/ar/ARHelper;->mInstance:Lcom/android/launcher2/ar/ARHelper;

    return-void
.end method

.method public disableRotationAnimation()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsRotationEnabled:Z

    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ar/AROrientationManager;->disable()V

    return-void
.end method

.method public enableRotationAnimation()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/ar/ARHelper;->mIsRotationEnabled:Z

    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ar/AROrientationManager;->enable()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ar/AROrientationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public visibilityChanged(I)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/ar/ARHelper;->mOrientationManager:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->getInstance()Lcom/android/launcher2/ar/ARManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ar/AROrientationManager;->setOrientationChangedListener(Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
