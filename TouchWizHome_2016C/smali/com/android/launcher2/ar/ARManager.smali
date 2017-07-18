.class public Lcom/android/launcher2/ar/ARManager;
.super Ljava/lang/Object;
.source "ARManager.java"

# interfaces
.implements Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ar/ARManager$CustomRotate;,
        Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;,
        Lcom/android/launcher2/ar/ARManager$HotseatTransition;,
        Lcom/android/launcher2/ar/ARManager$PreChangeBounds;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x118

.field public static final FLAG_SKIP_TRANSITION_ON_BLUR_SCREEN:Z = true

.field private static final HOTSEAT_VIEW_ID:I = 0x7f11007e

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_VIEW_ID:I = 0x1020002

.field private static final ROTATION_TARGET_VIEW_ID:I = 0x7f11008a

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/launcher2/ar/ARManager;


# instance fields
.field private mCommonInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mPrevLayoutValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevScene:Landroid/transition/Scene;

.field private mRootView:Landroid/view/ViewGroup;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/launcher2/ar/ARManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/ar/ARManager;->mInstance:Lcom/android/launcher2/ar/ARManager;

    new-instance v0, Lcom/android/launcher2/ar/ARManager$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ar/ARManager$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/ar/ARManager;->POSITION_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    iput-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    invoke-direct {p0}, Lcom/android/launcher2/ar/ARManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ar/ARManager;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/ar/ARManager;->isHiddenView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/ar/ARManager;->isChildOfAppWidgetHostView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/ar/ARManager;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ar/ARManager;->POSITION_PROPERTY:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/ar/ARManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/ar/ARManager;->rotateWallpaper(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/launcher2/ar/ARManager;
    .locals 2

    const-class v1, Lcom/android/launcher2/ar/ARManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/ar/ARManager;->mInstance:Lcom/android/launcher2/ar/ARManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/ar/ARManager;

    invoke-direct {v0}, Lcom/android/launcher2/ar/ARManager;-><init>()V

    sput-object v0, Lcom/android/launcher2/ar/ARManager;->mInstance:Lcom/android/launcher2/ar/ARManager;

    :cond_0
    sget-object v0, Lcom/android/launcher2/ar/ARManager;->mInstance:Lcom/android/launcher2/ar/ARManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMainWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    :cond_3
    return-void
.end method

.method private isChildOfAppWidgetHostView(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x0

    move-object v0, p1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    instance-of v3, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private isHiddenView(Landroid/view/View;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method private rotateWallpaper(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    neg-int v1, p1

    const/16 v2, 0x118

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ar/WallpaperRotionHelper;->sendRotateCommandStart(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went wrong : windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wallpaperManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    sput-object v2, Lcom/android/launcher2/ar/ARManager;->mInstance:Lcom/android/launcher2/ar/ARManager;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(II)V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->isRotationAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->isBlurredByWindowsManager()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;

    const-string v14, "mPrevScene is null"

    invoke-static {v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v7, v1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/android/launcher2/ar/ARManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ar/ARManager$2;-><init>(Lcom/android/launcher2/ar/ARManager;)V

    invoke-virtual {v7, v1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/launcher2/ar/ARManager$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ar/ARManager$3;-><init>(Lcom/android/launcher2/ar/ARManager;)V

    invoke-virtual {v7, v1}, Landroid/transition/Scene;->setExitAction(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    invoke-virtual {v1}, Landroid/transition/Scene;->enter()V

    iget-object v14, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    monitor-enter v14

    :try_start_0
    new-instance v8, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    invoke-direct {v8, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f0a0128

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f0a0128

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    :cond_4
    const/high16 v9, -0x3d4c0000    # -90.0f

    :goto_1
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    const/4 v2, 0x2

    :goto_2
    new-instance v10, Lcom/android/launcher2/ar/ARManager$HotseatTransition;

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-direct {v10, p0, v9, v1}, Lcom/android/launcher2/ar/ARManager$HotseatTransition;-><init>(Lcom/android/launcher2/ar/ARManager;FZ)V

    const v1, 0x7f11007e

    invoke-virtual {v10, v1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    new-instance v1, Lcom/android/launcher2/ar/HotseatMotion;

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/ar/HotseatMotion;-><init>(IIIII)V

    invoke-virtual {v10, v1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    new-instance v11, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;

    move/from16 v0, p1

    invoke-direct {v11, p0, v8, v0}, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;-><init>(Lcom/android/launcher2/ar/ARManager;Landroid/util/ArrayMap;I)V

    const v1, 0x1020002

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    const v1, 0x7f110087

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    const v1, 0x7f110089

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    const-class v1, Lcom/android/launcher2/AppIconView;

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    const-class v1, Lcom/android/launcher2/FolderIconView;

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    new-instance v12, Lcom/android/launcher2/ar/ARManager$CustomRotate;

    invoke-direct {v12, p0, v9}, Lcom/android/launcher2/ar/ARManager$CustomRotate;-><init>(Lcom/android/launcher2/ar/ARManager;F)V

    const v1, 0x7f11008a

    invoke-virtual {v12, v1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    new-instance v13, Landroid/transition/TransitionSet;

    invoke-direct {v13}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v13, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v13, v11}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v13, v12}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v1, Lcom/android/launcher2/ar/ARManager$4;

    invoke-direct {v1, p0, v9}, Lcom/android/launcher2/ar/ARManager$4;-><init>(Lcom/android/launcher2/ar/ARManager;F)V

    invoke-virtual {v13, v1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    invoke-static {v7, v13}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    const/high16 v9, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onOrientationChanged(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/ar/ARManager;->init()V

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/launcher2/ar/ARManager;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager;->mPrevScene:Landroid/transition/Scene;

    new-instance v1, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;-><init>(Lcom/android/launcher2/ar/ARManager;Lcom/android/launcher2/ar/ARManager$1;)V

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    :goto_0
    invoke-static {p1}, Lcom/android/launcher2/ar/ARHelper;->rotateWindow(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;

    const-string v1, "onOrientationChanged : mRootView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
