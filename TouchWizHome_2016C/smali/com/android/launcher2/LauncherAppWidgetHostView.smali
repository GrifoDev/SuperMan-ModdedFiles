.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;,
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;,
        Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;
    }
.end annotation


# static fields
.field private static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final PRV_HOSTVIEW:Ljava/lang/String; = "previous_hostView"

.field private static final SWIPE_MIN_DISTANCE:I = 0x3c

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field public static final WEATHER_WIDGET_ANIM_DELAY:I = 0x12c

.field static sIsDrag:Z

.field public static sPrvHostView:Landroid/widget/FrameLayout;


# instance fields
.field private mAnimationSet:Landroid/animation/AnimatorSet;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHasPerformedLongPress:Z

.field private mIndicatorHeight:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mIsSetFlingOption:Z

.field private mIsWeatherCityOneMore:Z

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

.field private mPreviousOrientation:I

.field private mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

.field private mWeatherCityAddObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    iput-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iput v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIndicatorHeight:I

    iput-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPreviousOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIndicatorHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;ZI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->checkWeatherCount()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    return v0
.end method

.method public static calculateWidgetSize(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;
    .locals 16

    new-instance v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v8}, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    move/from16 v0, p3

    iput v0, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->visibleWidth:I

    move/from16 v0, p3

    iput v0, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->visibleHeight:I

    if-eqz p1, :cond_0

    sget-object v13, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateWidgetSize: (target widgetsize)  using w/h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " span "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (widgetid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " [current Gridsize : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0a00e8

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v13, 0x7f0a00eb

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v13, 0x7f0a00f1

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v13, 0x7f0a00ee

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    mul-int v14, v13, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_8

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v2

    :goto_0
    add-int v6, v14, v13

    move/from16 v5, p3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v13

    if-eqz v13, :cond_1

    const v9, 0x3f333333    # 0.7f

    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    mul-int v14, v13, v3

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_9

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v1

    :goto_1
    add-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v13, v9

    float-to-int v5, v13

    move/from16 v0, p2

    if-ge v0, v6, :cond_2

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iput v6, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    :cond_2
    move/from16 v0, p3

    if-ge v0, v5, :cond_3

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iput v5, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_3
    iget-boolean v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    if-eqz v13, :cond_5

    move/from16 v0, p2

    int-to-float v13, v0

    iget v14, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    int-to-float v14, v14

    div-float v10, v13, v14

    move/from16 v0, p3

    int-to-float v13, v0

    iget v14, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    int-to-float v14, v14

    div-float v11, v13, v14

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v10, v13

    if-nez v13, :cond_4

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v13

    if-eqz v13, :cond_5

    :cond_4
    cmpg-float v13, v10, v11

    if-gez v13, :cond_a

    iput v10, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    :goto_2
    move/from16 v0, p2

    int-to-float v13, v0

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    iget v14, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    move/from16 v0, p3

    int-to-float v13, v0

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    iget v14, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v13, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    :cond_6
    if-eqz v12, :cond_7

    iget-object v13, v12, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateWidgetSize() widget = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "(widget id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " result hostview size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " x "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v8

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_a
    iput v11, v8, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    goto :goto_2
.end method

.method private checkWeatherCount()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    goto :goto_0
.end method

.method private createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v6, "startFlickAnimation getDrawingCache fail or cacheBitmap is isRecycled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v5, "previous_hostView"

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;ZI)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fling"

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;ZI)V

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    :cond_0
    sput-object v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    move-object v1, p1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;ZI)V
    .locals 11

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getScaleY()F

    move-result v1

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v4, v1

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v9, v4, [F

    const/4 v4, 0x0

    const/4 v10, 0x0

    aput v10, v9, v4

    const/4 v10, 0x1

    if-eqz p3, :cond_0

    neg-float v4, v0

    :goto_0
    aput v4, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    :goto_1
    aput v0, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Lcom/android/launcher2/LauncherAppWidgetHostView$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/launcher2/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v5}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    int-to-long v6, p4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    :cond_0
    move v4, v0

    goto/16 :goto_0

    :cond_1
    neg-float v0, v0

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public calculateWidgetSize(II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-static {v2, v1, p1, p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->calculateWidgetSize(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v1

    return-object v1
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public createWidgetBitmap(II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v4

    invoke-virtual {p0, v8}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setVisibility(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->calculateWidgetSize(II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v3

    iget-boolean v7, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    if-eqz v7, :cond_0

    iget p1, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    iget p2, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    sget-object v7, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v8, "fail to get width/height"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->measure(II)V

    invoke-virtual {p0, v8, v8, p1, p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->layout(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getBitmapFromAppWidgetView()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->measure(II)V

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout$LayoutParams;->getHeight()I

    move-result v4

    invoke-virtual {p0, v6, v6, v3, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->layout(IIII)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v3, v3, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->visibleWidth:I

    iget-object v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v4, v4, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->visibleHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIsSetFlingOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    return v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_0
    return-object v0
.end method

.method public isUpdateRequired()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v0, :cond_1

    const-string v1, "com.sec.android.daemonapp"

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$WeatherCityAddObserver;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->checkWeatherCount()V

    iput-boolean v4, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x12c

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;ZI)Z

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iput-boolean v6, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "GSWS"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v7

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->stopCaptureByItemClick()V

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f090081

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v5

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->cancelLongPress()V

    goto :goto_0
.end method

.method public semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 3

    if-nez p2, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semExtractSmartClipData element.getExtractionMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->getExtractionMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->getExtractionMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x101

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v0

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setResizeScaleResult(Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    sget-object v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizeScaleResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleToResize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(widget id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setPivotX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setScaleY(F)V

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPreviousOrientation:I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
