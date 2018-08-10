.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackLayoutAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$AnchorSide;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$Extent;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field private final SCALE_CHANGEABLE:F

.field private final SCALE_MIN:F

.field private final TASK_VIEW_RANGE:F

.field private mAlphaTaskViewCount:I

.field private mAlphaTaskViewStartPos:I

.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mButtonContainerHeight:I

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field private mChainTaskViewCount:I

.field mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mExtraTaskViewHeight:I

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mFullStackRect:Landroid/graphics/Rect;

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitializeInterpolator:Z

.field private mListAlphaCurve:Landroid/graphics/Path;

.field private mListAlphaCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field mListTaskViewHeight:I

.field private mMarginBottomCloseAll:I

.field mMarginTopButtonsContainer:I

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mNaviBarHeight:I

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mOrientation:I

.field private mScaleCurve:Landroid/graphics/Path;

.field private mScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskViewOverlapSize:F

.field private mTitleBarHeight:I

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    const v1, 0x3e2e147b    # 0.17f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->SCALE_CHANGEABLE:F

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->SCALE_MIN:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->TASK_VIEW_RANGE:F

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mChainTaskViewCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    new-instance v1, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    new-instance v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructScaleCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mScaleCurve:Landroid/graphics/Path;

    :goto_0
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mScaleCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructListLinear()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mScaleCurve:Landroid/graphics/Path;

    goto :goto_0
.end method

.method private constructCustomCurve()Landroid/graphics/Path;
    .locals 14

    const v13, 0x3dcccccd    # 0.1f

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v5, v12, v11}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v0, v13, v9

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mExtraTaskViewHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    sub-float v1, v11, v6

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x1

    :goto_0
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mChainTaskViewCount:I

    if-gt v4, v9, :cond_0

    int-to-float v9, v4

    mul-float/2addr v9, v13

    add-float v2, v0, v9

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getAnimationScale(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewOverlapSize:F

    sub-float/2addr v9, v10

    mul-float v8, v9, v7

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    add-float/2addr v6, v9

    sub-float v3, v11, v6

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v5
.end method

.method private constructFocusedCurve()Landroid/graphics/Path;
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v4, v6, v3

    invoke-virtual {v2, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v4, v4, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v4, v8, v4

    sub-float v4, v6, v4

    sub-float v5, v6, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v2
.end method

.method private constructFocusedDimCurve()Landroid/graphics/Path;
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v1, v3, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private constructListAlphaCurve()Landroid/graphics/Path;
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method private constructListLinear()Landroid/graphics/Path;
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private constructScaleCurve()Landroid/graphics/Path;
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private constructUnfocusedCurve()Landroid/graphics/Path;
    .locals 15

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f79999a    # 0.975f

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v14

    const v2, 0x3f79999a    # 0.975f

    sub-float/2addr v1, v2

    const v2, 0x3dcccccc    # 0.099999994f

    div-float v13, v1, v2

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v12, v2, v1

    const v8, 0x3f266666    # 0.65f

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr v1, v13

    add-float v9, v1, v12

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, v14

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v14

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method private constructUnfocusedDimCurve()Landroid/graphics/Path;
    .locals 14

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v11, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    sub-float v1, v12, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v8, v5, v1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    const/high16 v4, 0x3e400000    # 0.1875f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v7, v0

    move v9, v6

    move v10, v8

    move v13, v11

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method private getAnimationScale(F)F
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v2, 0x3e2e147b    # 0.17f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v2

    return v1
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIII)I
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIIII)I
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_2
    move p6, p5

    goto :goto_1

    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_4
    move p4, p3

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    :cond_6
    move p2, p1

    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    if-nez v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    return v2

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3

    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFrontBackTransforms()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v12, v0, v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v12}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method private updateRange()V
    .locals 11

    const v10, 0x3f96872b    # 1.176f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v6, v6

    const/high16 v7, 0x44270000    # 668.0f

    div-float v3, v6, v7

    int-to-float v6, v1

    mul-float/2addr v6, v3

    float-to-int v1, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v5, v6, v1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v4, v6

    :goto_0
    cmpl-float v6, v4, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    sub-float/2addr v4, v6

    add-float/2addr v2, v9

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    add-float/2addr v2, v6

    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginBottomCloseAll:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v0, v9, v6

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    neg-float v7, v2

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/systemui/recents/views/Range;->setRelative(FFF)V

    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 22
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

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v2, :cond_4

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1
    invoke-direct {v5, v2, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    :goto_4
    const/high16 v18, 0x4f000000

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_5
    if-ltz v13, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/Task;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v2, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    :goto_6
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    :cond_8
    const/16 v17, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v14

    :goto_7
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move v4, v3

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    iget-object v2, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v2, v18, v19

    move/from16 v0, v21

    int-to-float v4, v0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_b

    const/4 v12, 0x1

    :goto_8
    if-eqz v12, :cond_c

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v19

    goto :goto_6

    :cond_a
    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    goto :goto_8

    :cond_c
    move v15, v13

    :goto_9
    if-ltz v15, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(II)V

    return-object v2

    :cond_e
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " numStackTasks="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "insets="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " stack="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " task="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " freeform="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, " actionButton="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "minScroll="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v8, " maxScroll="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v8, " initialScroll="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "focusState="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v8, "mUnfocusedRange="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/Range;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v6, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, v6}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v8

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "taskId= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, " taskProgress= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v8, " normalizedX= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v8, " progressY= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "taskId= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, " x= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v8, " overrideX= "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getDeltaPForY(II)F
    .locals 3

    sub-int v1, p2, p1

    int-to-float v2, v1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v2, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    mul-float v0, v1, v2

    neg-float v1, v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_2

    :cond_0
    return v3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getStackScrollForTask(Lcom/samsung/systemui/splugins/recents/model/PluginTask;)F
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v0

    return v0
.end method

.method getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 13

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v0, p4

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object p4

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-object/from16 v0, p4

    invoke-virtual {v1, v12, v11, v0, p0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object p4

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne v10, v1, :cond_3

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-object p4

    :cond_3
    if-eqz p7, :cond_4

    int-to-float v2, v10

    :goto_0
    int-to-float v3, v10

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    return-object p4

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 32

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v11

    if-nez p8, :cond_0

    xor-int/lit8 v28, v22, 0x1

    if-eqz v28, :cond_0

    xor-int/lit8 v28, v11, 0x1

    if-eqz v28, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v10

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    move/from16 v28, v0

    if-lez v28, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3dcccccd    # 0.1f

    mul-float v13, v29, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3dcccccd    # 0.1f

    mul-float v3, v29, v28

    cmpg-float v28, v21, v13

    if-gez v28, :cond_5

    const/16 v21, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v29, v0

    move/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v28, v0

    const v29, -0x800001

    move/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v25, v28, 0x2

    sget-boolean v28, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-nez v28, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    xor-int/lit8 v28, p7, 0x1

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v28, v0

    sub-float v28, v28, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v19, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    add-int v7, v28, v29

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v28

    add-int v26, v7, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v27, v0

    const/4 v8, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    :goto_1
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move/from16 v0, v27

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    move-object/from16 v0, p5

    iput v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    move/from16 v0, v24

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_c

    if-eqz p6, :cond_2

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_b

    :cond_2
    const/16 v28, 0x1

    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, p5

    iput-boolean v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mListTaskViewHeight:I

    move/from16 v28, v0

    add-int v28, v28, v26

    if-gez v28, :cond_d

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move/from16 v28, v0

    const v29, 0x3e99999a    # 0.3f

    mul-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_4
    return-void

    :cond_5
    cmpg-float v28, v21, v3

    if-gez v28, :cond_1

    sub-float v28, v21, v13

    sub-float v29, v3, v13

    div-float v28, v28, v29

    mul-float v21, v28, v3

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v28

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v28, v29, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v28

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v28, v29, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_7

    const/16 v28, 0x0

    cmpl-float v28, p2, v28

    if-nez v28, :cond_7

    const/high16 v28, 0x3f000000    # 0.5f

    cmpl-float v28, v5, v28

    if-ltz v28, :cond_8

    const/16 v20, 0x0

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    int-to-float v0, v12

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v26, v28, v29

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v27, v0

    :goto_5
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v8

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v28

    if-eqz v28, :cond_a

    const v24, 0x3f2aaaab

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f000000    # 0.5f

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v17

    sub-float v20, v20, v17

    const/high16 v28, 0x3e800000    # 0.25f

    sub-float v28, v28, v17

    const/high16 v29, 0x3e800000    # 0.25f

    div-float v28, v29, v28

    mul-float v20, v20, v28

    goto :goto_4

    :cond_9
    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v27

    goto :goto_5

    :cond_a
    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v28

    const/16 v29, 0x0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v28 .. v30}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v24

    goto/16 :goto_1

    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_2

    :cond_d
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getAnimationScale(F)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3dcccccd    # 0.1f

    mul-float v3, v29, v28

    cmpg-float v28, v21, v3

    if-gez v28, :cond_3

    div-float v28, v21, v3

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_3

    :cond_f
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    goto/16 :goto_3
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskNumInRange()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v0, v0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTaskRect()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTaskGridRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginTopButtonsContainer:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mExtraTaskViewHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p5

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p6, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v7, 0x2

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-nez v0, :cond_5

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3ee6e979    # 0.451f

    mul-float/2addr v0, v2

    float-to-int v8, v0

    :cond_1
    :goto_1
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v0, :cond_6

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f5df3b6    # 0.867f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3ee6e979    # 0.451f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v8, v0

    goto :goto_1

    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f5df3b6    # 0.867f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ee6e979    # 0.451f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v8, v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f5df3b6    # 0.867f

    mul-float/2addr v0, v2

    float-to-int v8, v0

    goto/16 :goto_1
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getYForDeltaP(FF)I
    .locals 4

    sub-float v2, p2, p1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    neg-int v1, v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 15

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mButtonContainerHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    new-instance v11, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v13

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v8

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p4

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v13

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    sub-int v9, v1, v2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mChainTaskViewCount:I

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginBottomCloseAll:I

    sub-int v1, v9, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mExtraTaskViewHeight:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    mul-int/2addr v2, v3

    sub-int v9, v1, v2

    const/4 v10, 0x1

    :goto_3
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mChainTaskViewCount:I

    if-gt v10, v1, :cond_8

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    int-to-float v2, v10

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    add-float v14, v1, v2

    invoke-direct {p0, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getAnimationScale(F)F

    move-result v12

    int-to-float v1, v9

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewOverlapSize:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    float-to-int v9, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object/from16 v1, p4

    move-object/from16 v4, p3

    move v5, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto/16 :goto_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_7
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAlphaTaskViewStartPos:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mChainTaskViewCount:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    sub-int/2addr v9, v1

    goto :goto_2

    :cond_8
    int-to-float v1, v9

    const v2, 0x3f6b4396    # 0.919f

    div-float/2addr v1, v2

    float-to-int v9, v1

    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v9

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructListLinear()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructListAlphaCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mListAlphaCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mListAlphaCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mListAlphaCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    :goto_5
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedDimCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedDimCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructCustomCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    goto :goto_5

    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    goto :goto_5
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b006d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0b006c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0b006f

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const v2, 0x7f0b006e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    const v0, 0x7f070591

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    const v0, 0x7f07057e

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    const v0, 0x7f070593

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    const v0, 0x7f070592

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    const v1, 0x7f070583

    const v2, 0x7f070582

    const v3, 0x7f070584

    const v4, 0x7f070584

    const v5, 0x7f070584

    const v6, 0x7f070584

    const v7, 0x7f070584

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    const v1, 0x7f070580

    const v2, 0x7f07057f

    const v3, 0x7f070581

    const v4, 0x7f070581

    const v5, 0x7f070581

    const v6, 0x7f070581

    const v7, 0x7f070581

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    const v0, 0x7f070585

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const v0, 0x7f07058e

    const v1, 0x7f07058f

    const v2, 0x7f070590

    const v3, 0x7f07058f

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    :goto_0
    const v0, 0x7f07057d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    const v0, 0x7f07055f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    const v1, 0x7f0705a2

    const v2, 0x7f0705a2

    const v3, 0x7f0705a2

    const v4, 0x7f0705a3

    const v5, 0x7f0705a2

    const v6, 0x7f0705a3

    const v7, 0x7f070567

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "navigation_bar_height"

    const-string/jumbo v1, "dimen"

    const-string/jumbo v2, "android"

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07059f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v0, 0x7f07058c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mExtraTaskViewHeight:I

    const v0, 0x7f07058d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewOverlapSize:F

    :cond_2
    const v0, 0x7f07054c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginTopButtonsContainer:I

    const v0, 0x7f070552

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginBottomCloseAll:I

    const v0, 0x7f0705a2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07054c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mButtonContainerHeight:I

    const v0, 0x7f070395

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    const v0, 0x7f070395

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mListTaskViewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mExtraTaskViewHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewOverlapSize:F

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateRange()V

    :cond_3
    return-void

    :cond_4
    const v0, 0x7f070586

    const v1, 0x7f070587

    const v2, 0x7f070589

    const v3, 0x7f070587

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    return-void
.end method

.method public resetInitializeInterpolator()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    return-void
.end method

.method public setFocusState(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)V

    return v0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v10, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    if-nez v10, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    if-nez v10, :cond_2

    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    if-nez p2, :cond_0

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_1

    xor-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_1

    :cond_0
    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    const/4 v10, 0x2

    new-array v2, v10, [F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_1

    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    array-length v10, v2

    if-lt v1, v10, :cond_4

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x2

    new-array v2, v10, [F

    const/4 v10, 0x0

    aput v5, v2, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    goto :goto_1

    :cond_4
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    add-float v6, v10, v11

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4

    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTitleBarHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;",
            "Lcom/android/systemui/recents/RecentsActivityLaunchState;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v18, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v18, :cond_2

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v4, v0, :cond_4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateRange()V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v7

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v9, v18, v19

    int-to-float v0, v9

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    :cond_7
    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    :goto_4
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, -0x1

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    :cond_a
    sget-boolean v18, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v18, :cond_b

    sget-boolean v18, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_b

    invoke-virtual {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v9, v18, v19

    int-to-float v0, v9

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v13, v0

    :goto_5
    const/16 v18, 0x0

    cmpl-float v18, v13, v18

    if-lez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f96872b    # 1.176f

    mul-float v18, v18, v19

    sub-float v13, v13, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v10, v10, v18

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f96872b    # 1.176f

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v13, v18

    add-float v10, v10, v18

    const v18, 0x3e029cbc

    add-float v10, v10, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginTopButtonsContainer:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f96872b    # 1.176f

    mul-float v19, v19, v20

    div-float v18, v18, v19

    sub-float v10, v10, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07038d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f96872b    # 1.176f

    mul-float v19, v19, v20

    div-float v18, v18, v19

    sub-float v10, v10, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v10, v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_e
    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_f
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    :goto_6
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_11
    const/4 v11, 0x1

    goto :goto_6

    :cond_12
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_13
    if-eqz v11, :cond_14

    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 11

    const/4 v10, 0x0

    cmpl-float v8, p2, p3

    if-nez v8, :cond_0

    return p2

    :cond_0
    sub-float v0, p2, p3

    sub-float v1, p2, p1

    move v4, p2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_0
    if-ltz v2, :cond_6

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float v3, v5, v0

    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    cmpl-float v8, v5, v7

    if-ltz v8, :cond_3

    cmpg-float v8, v0, v10

    if-gtz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    cmpg-float v8, v5, v7

    if-gtz v8, :cond_4

    cmpl-float v8, v0, v10

    if-gez v8, :cond_2

    :cond_4
    move v4, p3

    sub-float v3, v5, v1

    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    return v4
.end method

.method useGridLayout()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    return v0
.end method
