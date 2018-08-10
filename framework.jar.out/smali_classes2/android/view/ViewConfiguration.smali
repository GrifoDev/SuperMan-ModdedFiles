.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field public static final FAKE_MENU:I = 0x0

.field public static final FAKE_MENU_BACK_LONG:I = 0x2

.field public static final FAKE_MENU_RECENT_LONG:I = 0x1

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x1388

.field private static final HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckDisabledHWMenuKey:Z

.field private mCheckEnableFakeMenuKeyByBackLong:Z

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mHorizontalScrollFactor:F

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinScrollbarTouchTarget:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mVerticalScrollFactor:F

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    const/high16 v2, 0x42800000    # 64.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const/16 v0, 0x30

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    iput v3, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    iput v3, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    iput v2, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    iput v2, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float v9, v3, v12

    :goto_0
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v12, v3

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    const/high16 v12, 0x41800000    # 16.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const-string/jumbo v12, "window"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v12, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v12, 0x4

    iget v13, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v13

    iput v12, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v12, 0x0

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    iget-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v12, :cond_0

    const v12, 0x10e0099

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const v12, 0x11200b2

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-string/jumbo v12, "0"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v0, v12

    if-nez v0, :cond_1

    const v12, 0x1050052

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const v12, 0x1050046

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    iget v12, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v12, v12, 0x2

    iput v12, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    iget v12, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v12, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const v12, 0x1050054

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const v12, 0x1050053

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const v12, 0x10e0063

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const v12, 0x1050042

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    const v12, 0x1050051

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->mCheckDisabledHWMenuKey:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->mCheckEnableFakeMenuKeyByBackLong:Z

    return-void

    :cond_2
    move v9, v3

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto/16 :goto_1

    :pswitch_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_1

    :pswitch_2
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewConfiguration;

    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public static getHoverTooltipHideShortTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public static getHoverTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public static getHoverTooltipShowTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongPressTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .locals 2

    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getAccessibilityShortcutKeyTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledHorizontalScrollFactor()F
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinScrollbarTouchTarget()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledScrollFactor()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int v0, v0

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledVerticalScrollFactor()F
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasFakeMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    return v0
.end method

.method public hasFakeMenuKey(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mCheckDisabledHWMenuKey:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mCheckEnableFakeMenuKeyByBackLong:Z

    return v0

    :cond_1
    return v1
.end method

.method public hasPermanentMenuKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mCheckDisabledHWMenuKey:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return v0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
