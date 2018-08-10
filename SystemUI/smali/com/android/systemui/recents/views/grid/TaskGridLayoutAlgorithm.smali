.class public Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskGridLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppAspectRatio:F

.field private mFocusedFrameThickness:I

.field private mPaddingLeftRight:I

.field private mPaddingTaskView:I

.field private mPaddingTopBottom:I

.field private mScreenSize:Landroid/graphics/Point;

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskGridRect:Landroid/graphics/Rect;

.field private mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

.field private mTitleBarHeight:I

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mAppAspectRatio:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTaskView:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTopBottom:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->values()[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "TaskGridLayoutAlgorithm"

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    return-void
.end method

.method private updateAppAspectRatio()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mAppAspectRatio:F

    return-void
.end method


# virtual methods
.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v1
.end method

.method public getFocusFrameThickness()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mFocusedFrameThickness:I

    return v0
.end method

.method public getTaskGridRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 11

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-object p3

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v9, p2, -0x1

    aget-object v1, v8, v9

    iget-object v8, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    aget v5, v8, p1

    iget-object v8, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    aget v6, v8, p1

    iget v8, p4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    int-to-float v7, v8

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-int v8, p2, p1

    add-int/lit8 v3, v8, -0x1

    const/16 v8, 0x8

    if-ge v3, v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    if-eqz v2, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    const/4 v8, 0x0

    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v9, v5

    int-to-float v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v9, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v8, v9}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    iput-boolean v2, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-object p3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public initialize(Landroid/graphics/Rect;)V
    .locals 7

    const/16 v6, 0x8

    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ccccccd    # 0.025f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingLeftRight:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTopBottom:I

    new-array v1, v6, [Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    iput-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    new-instance v2, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;-><init>(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public navigateFocus(IILcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)I
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-lt p1, v5, :cond_0

    const/16 v5, 0x8

    if-le p1, v5, :cond_1

    :cond_0
    return v7

    :cond_1
    if-ne p2, v7, :cond_2

    return v6

    :cond_2
    move v3, p2

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v6, p1, -0x1

    aget-object v1, v5, v6

    add-int/lit8 v5, p1, -0x1

    sub-int/2addr v5, p2

    iget v6, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int v0, v5, v6

    invoke-static {}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-getcom-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_0
    return v3

    :pswitch_0
    iget v5, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    add-int v3, p2, v5

    if-lt v3, p1, :cond_3

    move v3, p2

    goto :goto_0

    :pswitch_1
    iget v5, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    sub-int v3, p2, v5

    if-gez v3, :cond_3

    move v3, p2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v5, p1, -0x1

    iget v6, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int/2addr v6, v0

    sub-int v2, v5, v6

    if-le v3, v2, :cond_3

    move v3, p2

    goto :goto_0

    :pswitch_3
    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, v0, 0x1

    iget v7, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    if-gez v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    if-ge v3, v4, :cond_3

    move v3, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070562

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mPaddingTaskView:I

    const v2, 0x7f070565

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mFocusedFrameThickness:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    const v2, 0x7f070567

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTitleBarHeight:I

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateAppAspectRatio()V

    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateAppAspectRatio()V

    return-void
.end method

.method public updateTaskGridRect(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRectInfoList:[Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->mTaskGridRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
