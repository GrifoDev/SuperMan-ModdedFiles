.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$Cell;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field protected static final DRAG_THRESHHOLD:F = 0.0f

.field protected static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field protected mActivateAlpha:F

.field protected mAnimatingPeriodStart:J

.field private mAspect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field protected final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field protected mInProgressX:F

.field protected mInProgressY:F

.field protected mInStealthMode:Z

.field private mInputEnabled:Z

.field protected final mInvalidate:Landroid/graphics/Rect;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mOriginPathColor:I

.field private mOriginRegularColor:I

.field private mOriginSuccessColor:I

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field protected final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field protected final mPatternDrawLookup:[[Z

.field protected mPatternInProgress:Z

.field private mRegularColor:I

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSquareHeight:F

.field protected mSquareWidth:F

.field private mSuccessColor:I

.field protected final mTmpInvalidateRect:Landroid/graphics/Rect;

.field protected mUseActivateAlpha:Z

.field private mUseLockPatternDrawable:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const/4 v12, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v11}, [I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iput v8, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iput v8, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    iput-boolean v10, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iput-boolean v10, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    const v6, 0x3f19999a    # 0.6f

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    sget-object v6, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v7, 0x1110065

    const v8, 0x10304ea

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "square"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v9, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v0, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mOriginRegularColor:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mOriginSuccessColor:I

    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    iput-boolean v9, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    const/4 v7, 0x7

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050127

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050128

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050129

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v6, v5

    const/4 v7, 0x6

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105012a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10805b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10805b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setDither(Z)V

    const-class v6, Lcom/android/internal/widget/LockPatternView$CellState;

    filled-new-array {v11, v11}, [I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v11, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v6, v6, v2

    new-instance v7, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v7}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v7, v6, v3

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iput v7, v6, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    iput v2, v6, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    iput v3, v6, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v6, "lock_width"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput v10, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "lock_height"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput v12, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    :cond_3
    iput v9, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const v6, 0x10c000d

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v6, 0x10c000e

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v6, p0, p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 6

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v3, v2, v4

    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private cancelLineAnimations()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v2, v3, v1

    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    if-gez v1, :cond_0

    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    if-gez v0, :cond_1

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    return-object v2
.end method

.method private drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v2, v2

    int-to-float v3, p3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v3, v3

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v4, v4

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    add-int/lit8 v6, p2, 0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v1, p4, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz p5, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getColumnHit(F)I
    .locals 8

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private getCurrentColor(Z)I
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHit(F)I
    .locals 8

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    :cond_1
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    return-void

    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    const v0, 0x10404aa

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    const v0, 0x10404ab

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    move v0, p2

    goto :goto_0

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v7, v0, v1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    const-wide/16 v4, 0x60

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v8, p0, v7}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    iget v8, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    return-void
.end method

.method private startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12

    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move/from16 v0, p5

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p7

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float v2, v2, p4

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    add-float v5, v2, p5

    move-object v3, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v5, v2, p7

    move-object v3, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    new-instance v11, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v0, p13

    invoke-direct {v11, p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12

    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move/from16 v0, p4

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    move-wide/from16 v0, p10

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p8

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/internal/widget/LockPatternView$1;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v0, p13

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v0, Lcom/android/internal/widget/LockPatternView$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternView$6;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iput-object v7, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternView$7;

    invoke-direct {v1, p0, p6}, Lcom/android/internal/widget/LockPatternView$7;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p7, :cond_0

    new-instance v1, Lcom/android/internal/widget/LockPatternView$8;

    invoke-direct {v1, p0, p7}, Lcom/android/internal/widget/LockPatternView$8;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method

.method private startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method public clearPattern()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method protected clearPatternDrawLookup()V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13

    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    :cond_5
    return-object v0

    :cond_6
    move v8, v10

    goto :goto_0

    :cond_7
    return-object v8
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method protected getCenterXForColumn(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getCenterYForRow(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v12, 0x0

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_7

    if-ge v11, v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    :goto_1
    if-ge v11, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v8, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_1

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_2

    :cond_1
    const/4 v12, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected notifyPatternStarted()V
    .locals 1

    const v0, 0x10404ac

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v20, 0x1

    mul-int/lit16 v0, v4, 0x2bc

    move/from16 v33, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v8

    long-to-int v4, v4

    rem-int v36, v4, v33

    move/from16 v0, v36

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v32

    if-ge v6, v0, :cond_0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v24, v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    const/4 v8, 0x1

    aput-boolean v8, v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-lez v32, :cond_4

    move/from16 v0, v32

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v30, 0x1

    :goto_1
    if-eqz v30, :cond_1

    move/from16 v0, v36

    rem-int/lit16 v4, v0, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float v35, v4, v5

    add-int/lit8 v4, v32, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v18

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v19

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float v4, v4, v18

    mul-float v26, v35, v4

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    sub-float v4, v4, v19

    mul-float v27, v35, v4

    add-float v4, v18, v26

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    add-float v4, v19, v27

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->rewind()V

    const/4 v6, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v6, v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v19

    const/4 v7, 0x0

    :goto_3
    const/4 v4, 0x3

    if-ge v7, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v6

    aget-object v17, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v4, v24, v6

    aget-boolean v9, v4, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/16 v30, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v4, :cond_6

    move-object/from16 v23, p1

    check-cast v23, Landroid/view/DisplayListCanvas;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-eqz v4, :cond_7

    move/from16 v0, v18

    float-to-int v4, v0

    int-to-float v10, v4

    move/from16 v0, v19

    float-to-int v4, v0

    int-to-float v4, v4

    add-float v11, v4, v38

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v4, v24, v6

    aget-boolean v13, v4, v7

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    goto :goto_4

    :cond_7
    move/from16 v0, v18

    float-to-int v4, v0

    int-to-float v10, v4

    move/from16 v0, v19

    float-to-int v4, v0

    int-to-float v4, v4

    add-float v11, v4, v38

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v4, v24, v6

    aget-boolean v13, v4, v7

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    xor-int/lit8 v25, v4, 0x1

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v15, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v6, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v6, v0, :cond_a

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v24, v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v5

    if-nez v4, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_12

    :cond_b
    if-eqz v15, :cond_12

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-eqz v4, :cond_10

    const/4 v6, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v6, v0, :cond_11

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v18

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v5

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v17, v4, v5

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    move/from16 v38, v0

    move/from16 v0, v18

    float-to-int v4, v0

    int-to-float v10, v4

    move/from16 v0, v19

    float-to-int v4, v0

    int-to-float v4, v4

    add-float v11, v4, v38

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v24, v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v13, v4, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v15, 0x1

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v18

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v19

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v5

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v37, v4, v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/LockPatternView;->mUseActivateAlpha:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mActivateAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    move/from16 v28, v18

    move/from16 v29, v19

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v5, v8, v1, v2}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v5

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$SavedState;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/high16 v4, 0x40400000    # 3.0f

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    return v1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v1

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setPatternColor(III)V
    .locals 3

    const-string/jumbo v0, "LockPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPatternColor() : regularColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "successColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginRegularColor:I

    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mOriginSuccessColor:I

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method public startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected updateViewStyle(Z)V
    .locals 3

    const v1, -0xbbbbbc

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    const v0, -0xbbbbbc

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginRegularColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginSuccessColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    goto :goto_0
.end method
