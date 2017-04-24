.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$HoverScrollHandler;,
        Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;,
        Lcom/android/launcher2/PagedView$DelaySnapToPage;,
        Lcom/android/launcher2/PagedView$LayerOptions;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$PageInfo;,
        Lcom/android/launcher2/PagedView$TransitionEffect;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field protected static final ENABLE_DVFS_ONSCROLL:Z = true

.field protected static final ENABLE_SLOP_JUMP:Z = true

.field protected static final ENABLE_TOUCH_PREDICTION:Z = false

.field public static final HEADLINES_INTENT:Landroid/content/Intent;

.field private static final HOVERSCROLL_SPEED:J = 0xc8L

.field public static final INDICATOR_TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_DIR:I = 0x0

.field protected static final INVALID_PAGE:I = -0x80000000

.field protected static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_BG_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_HOVER_SCROLL:I = 0x1

.field public static final PAGE_TRANSLATION_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_ZOOM:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SNAP_STATE_ADJACENT:I = 0x0

.field protected static final SNAP_STATE_FIRST_TO_LAST:I = 0x1

.field protected static final SNAP_STATE_LAST_TO_FIRST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.PagedView"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final advancedDriftSlop:I

.field private static final advancedTouchSlop:I

.field private static final chipset:Ljava/lang/String;

.field private static mHoverScrollVerticalPaddingMatchParent:I

.field private static mIsPageFastMoving:Z

.field private static sInclusivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MIN_LENGTH_FOR_FLING:I

.field protected final PAGE_SNAP_ANIMATION_DURATION:I

.field protected isShowCamera:Z

.field private mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellGapX:I

.field protected mCellGapY:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

.field protected mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private final mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mDriftSlop:I

.field protected mFirstLayout:Z

.field private mHardwarePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHideItems:Z

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mHoverScrollBottom:I

.field private mHoverScrollDir:I

.field private mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

.field private mHoverScrollRightPadding:I

.field private mHoverScrollTop:I

.field private mHoverScrollVerticalPadding:I

.field private mHoverScrollWidth:I

.field private mInGesture:Z

.field protected mIsDataReady:Z

.field protected mIsOverScrolled:Z

.field protected mIsPageMoving:Z

.field private mLaidOutAfterViewTreeDirty:Z

.field private mLastDragLocationX:I

.field private mLastDragLocationY:I

.field private mLastFocusDir:I

.field private mLastHit:I

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageNotify:I

.field private mLastScreenCenter:I

.field mLastScrollX:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field public final mMaxSwipeAngle:F

.field protected mMaximumVelocity:I

.field protected mNextPage:I

.field protected mNextPageInZeroPage:I

.field protected mOutOfSpaceMessageNeeded:Z

.field protected mPageBackgroundAlpha:F

.field protected mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

.field protected mPageIndicatorTop:I

.field protected mPagePaddingBottom:I

.field protected mPagePaddingLeft:I

.field protected mPagePaddingRight:I

.field protected mPagePaddingTop:I

.field private final mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

.field protected mPageSpacing:I

.field protected mPageSpacingHint:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageTranslationFactor:F

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field protected mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

.field private mScrollByHover:Z

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapState:I

.field private mSnapToPageAfterLayout:I

.field private mSnapToPageAfterLayoutDir:I

.field private mSnapToPageAfterLayoutDur:I

.field private mSnapToPageAfterLayoutMustAnim:Z

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTouchDownPointX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchUpPointX:F

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field protected mUseSlopJump:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher2/PagedView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageZoom"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_ZOOM:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/PagedView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageBackgroundAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/PagedView$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageTranslationFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_TRANSLATION_FACTOR:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/PagedView$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "IndicatorTop"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->INDICATOR_TOP:Landroid/util/Property;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const v0, 0x7fffffff

    sput v0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x4

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iput v7, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iput v7, p0, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    iput v9, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    sget-object v5, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v5, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    iput v10, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    iput v9, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    new-instance v5, Lcom/android/launcher2/PagedView$DelaySnapToPage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/PagedView$DelaySnapToPage;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    new-instance v5, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-direct {v5, p0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mOutOfSpaceMessageNeeded:Z

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    iput v10, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastHit:I

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    new-instance v5, Lcom/android/launcher2/PagedView$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/PagedView$7;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v5, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput v4, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>(Lcom/android/launcher2/PagedView$1;)V

    invoke-direct {v5, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iput v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v6, "fromHome"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v6, "fingerSwipe"

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v6, "supportRtl"

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager(III)Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090136

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090382

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090189

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setSaveEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->setImportantForAccessibility(I)V

    :cond_0
    const v5, 0x3f90c3bd

    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaxSwipeAngle:F

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/PagedView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/PagedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    return v0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 5

    iget v3, p2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Draw page is NULL. Report this."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const-string v3, "Launcher.PagedView"

    const-string v4, "Page visibility not in sync with list of visible pages. This MUST be investigated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v3, :cond_4

    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->setNoNeedToDraw(Z)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;)V

    :cond_4
    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->isNoNeedToDraw()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v2

    const/4 v0, 0x0

    instance-of v3, p0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    :cond_6
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_7

    const v3, 0x3f733333    # 0.95f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const v3, -0x408ccccd    # -0.95f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method private dumpScroller()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollerStartX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerCurrX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerFinalX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerDur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollingFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpVisiblePages()V
    .locals 0

    return-void
.end method

.method private findPageIndicatorHit(Landroid/view/DragEvent;)I
    .locals 10

    const/4 v4, -0x1

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->getPreviewRects()[Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_0

    move v5, v4

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    array-length v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, v3, v0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    move v4, v0

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCenterOfViewRelative(Landroid/view/View;)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0xa

    add-int v1, v5, v6

    :cond_1
    sub-int v5, v1, v3

    div-int/lit8 v6, v4, 0x2

    add-int v2, v5, v6

    return v2
.end method

.method private getLowerBoundForScrollX(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v3, v0, v1

    mul-int v2, v3, v1

    :goto_0
    return v2

    :cond_0
    move v0, p1

    if-gez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    neg-int v2, v3

    goto :goto_0

    :cond_1
    div-int v3, v0, v1

    mul-int v2, v3, v1

    goto :goto_0
.end method

.method private getNearestScrollXForPage(III)I
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    mul-int v5, p1, v4

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v6

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    add-int/2addr v6, v4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    move v5, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    mul-int v8, v0, v4

    mul-int/2addr v8, v1

    add-int v7, v6, v8

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    move v5, v7

    goto :goto_0

    :pswitch_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollXForPageIndex(III)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    packed-switch p3, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x3

    invoke-direct {p0, p1, p2, v5}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0, p1, p2, v5}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v2

    sub-int v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v5, v4, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSlotForScrollX(I)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    :goto_0
    return v1

    :cond_0
    div-int v1, p1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v1, v2, v0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, -0x1

    :cond_2
    goto :goto_0
.end method

.method private isEasyOneHandTriggerGesture()Z
    .locals 7

    const/4 v3, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v4

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchDownPointX:F

    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    div-float v4, v2, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchDownPointX:F

    div-float v5, v2, v6

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchDownPointX:F

    div-float v5, v2, v6

    sub-float v5, v2, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    div-float v5, v2, v6

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    div-float v5, v2, v6

    sub-float v5, v2, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private jumpToPageInternal(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getInclusivePages(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    if-eqz p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    if-ne p1, v1, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method public static logScrollByInSystrace(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PagedView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method static mix(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedView$PageInfo;

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$PageInfo;->reset()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/PagedView$PageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView$1;)V

    goto :goto_0
.end method

.method private notifyPageSwitchListener(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne p1, v1, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-nez v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sget v2, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v1, v2, v3, v0}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private scrollToNonLooped(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.PagedView"

    const-string v1, "scrollToNonLooped - block to move 0 page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_4

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Launcher.PagedView"

    const-string v1, "scrollToNonLooped - block to move 0 page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLoopedSubAct(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public static setGpuBooster(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private snapToPageInternal(III)V
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v6

    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v3, v6, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    if-nez v3, :cond_0

    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return-void

    :cond_0
    if-eq p3, v8, :cond_9

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x4

    if-le v0, v5, :cond_9

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_5

    move v0, v4

    :goto_1
    if-ne p3, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v5

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    add-int/lit8 v0, v0, -0x3

    mul-int v1, v5, v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/lit8 v3, v0, 0x3

    :goto_3
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-eq p1, v0, :cond_1

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mCaptureZeropage:Z

    :cond_1
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_a

    if-lez v3, :cond_a

    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_2

    instance-of v0, p0, Lcom/android/launcher2/MenuAppsGrid;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/android/launcher2/FolderPagedView;

    if-nez v0, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    :cond_2
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    if-nez p2, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    :goto_5
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_6
    move v0, p1

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v5

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_6
    add-int/lit8 v0, v0, 0x3

    mul-int v1, v5, v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/lit8 v3, v0, -0x3

    goto/16 :goto_3

    :cond_8
    move v0, p1

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v3, v6, v0

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_b

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_b

    if-gez v3, :cond_b

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto/16 :goto_4

    :cond_b
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto/16 :goto_4

    :cond_c
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto/16 :goto_4

    :cond_d
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_5
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    const-string v3, "Launcher.PagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPageItemsInternal Null Occured Page : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/DragReceivable;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private transformPage(Lcom/android/launcher2/PagedView$PageInfo;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->updatePageTransform(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd6

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto :goto_0
.end method


# virtual methods
.method protected abortScroll()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    :cond_1
    return-void
.end method

.method protected acceleratedOverScroll(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method protected adjustFirstPageIdxForZeroPage(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected animatePageBackgroundForCurrentPage(II)V
    .locals 0

    return-void
.end method

.method protected canOverScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelClicksOnChildrenForCurrentPage()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    if-nez v3, :cond_1

    const-string v4, "Launcher.PagedView"

    const-string v5, "cancelClicksOnChildrenForCurrentPage, page is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected cancelScroll()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_1
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public clampCurrentPage()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(I)V

    :cond_0
    return-void
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 9

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    if-ge v2, v8, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v6, v7, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v6, v1, :cond_5

    :cond_5
    iget v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-direct {p0, v6}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener(I)V

    iput v7, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v6, v1, :cond_8

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    :cond_6
    :goto_1
    iget v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v7

    invoke-direct {p0, v6, v7, v8}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_6

    instance-of v6, p0, Lcom/android/launcher2/FolderPagedView;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_1
.end method

.method protected dampedOverScroll(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v2

    div-float v0, p1, v3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_3

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isZeroPageScrollBlock()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isZeroPageScrollBlock()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v0, v13

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher2/PagedView;->logScrollByInSystrace(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v18, v0

    sub-float v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_3

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    move/from16 v18, v0

    if-lez v18, :cond_5

    if-le v14, v5, :cond_4

    const/4 v15, 0x1

    :goto_1
    if-gtz v5, :cond_8

    if-nez v15, :cond_0

    if-eqz v16, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    if-eqz v16, :cond_1

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    :cond_2
    :goto_3
    const-string v18, "Launcher.PagedView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "determineScrollingStart : mTouchState="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mIsPageMoving="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_5
    if-le v14, v7, :cond_6

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v15, :cond_1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    if-eqz v16, :cond_c

    :goto_4
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    if-ltz v12, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    if-lez v18, :cond_9

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v6, v18, v19

    int-to-float v0, v7

    move/from16 v18, v0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_11

    const/16 v17, 0x1

    :goto_6
    if-lt v7, v14, :cond_b

    if-eqz v17, :cond_12

    :cond_b
    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    goto/16 :goto_3

    :cond_d
    if-eqz v15, :cond_c

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    goto/16 :goto_5

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_12
    const/16 v18, 0x2

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v4, v18, v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    const/16 v8, 0x9c4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_16

    float-to-double v0, v4

    move-wide/from16 v18, v0

    int-to-float v0, v5

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v4, v0

    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v18, v0

    add-float v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v18, v0

    if-nez v18, :cond_17

    float-to-int v0, v4

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    :goto_9
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v4, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_3

    :cond_16
    float-to-double v0, v4

    move-wide/from16 v18, v0

    mul-int/lit16 v0, v5, 0x9c4

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v4, v0

    goto/16 :goto_8

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_9

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_3
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 24

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v22, 0x0

    :cond_0
    :goto_0
    return v22

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    :pswitch_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    goto :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v19

    if-lez v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_6

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationX:I

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationY:I

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationY:I

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->onDragExit(I)Z

    move-result v23

    if-eqz v23, :cond_7

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    :cond_8
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    const/16 v22, 0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PageIndicatorManager;->onDragEnter(I)Z

    move-result v23

    if-eqz v23, :cond_a

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->snapTo(I)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v14, :cond_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v3, v14}, Lcom/android/launcher2/PageIndicatorManager;->onDrop(I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v8, v3

    :goto_3
    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_10

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_10

    const/16 v21, 0x1

    :goto_4
    const/16 v20, 0x0

    if-eqz v21, :cond_c

    move-object/from16 v18, v17

    check-cast v18, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x65

    cmp-long v3, v4, v10

    if-nez v3, :cond_c

    const/16 v20, 0x1

    :cond_c
    if-eqz v21, :cond_11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v14, v3, :cond_11

    if-nez v20, :cond_11

    const/16 v16, 0x1

    :goto_5
    if-nez v16, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_e

    const/4 v3, 0x2

    new-array v7, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    const/4 v3, 0x0

    aget v3, v7, v3

    if-ltz v3, :cond_12

    const/4 v3, 0x1

    aget v3, v7, v3

    if-ltz v3, :cond_12

    const/4 v3, 0x0

    aget v10, v7, v3

    const/4 v3, 0x1

    aget v11, v7, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v2

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->onDrop()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v3

    if-eq v14, v3, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    if-eq v14, v3, :cond_d

    move-object/from16 v3, p0

    check-cast v3, Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :cond_e
    :goto_6
    const/16 v22, 0x1

    goto/16 :goto_0

    :cond_f
    sget-object v8, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto/16 :goto_3

    :cond_10
    const/16 v21, 0x0

    goto :goto_4

    :cond_11
    const/16 v16, 0x0

    goto :goto_5

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v8, v14, v3, v4}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_6

    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected declared-synchronized dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-ge v12, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/launcher2/PageIndicatorManager;->drawPageIndicator(Landroid/graphics/Canvas;J)V

    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    add-int v11, v2, v7

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v11, v2, :cond_2

    invoke-virtual {p0, v11}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    iput v11, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedView$PageInfo;

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v4, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :cond_4
    move-object v0, v10

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_7
    move-object v0, v10

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v13

    add-int/2addr v5, v13

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v8

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedView$PageInfo;

    if-eq v10, v0, :cond_a

    invoke-direct {p0, p1, v10, v8, v9}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_b
    if-eqz v0, :cond_c

    :try_start_2
    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    :cond_d
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->getSnapToScreenIndex()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->isStartGrouping()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/PageIndicator;->drawPageNumberBox(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, p1

    :goto_0
    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    if-eq v2, p0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-le p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getClosestPageForScrollX(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    rem-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    return v1
.end method

.method getComingPage()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getComingPageForLiveIcon()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.PagedView"

    const-string v1, "Page Count is 0. not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getFestivalPageCnt()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInclusivePages(I)V
    .locals 11

    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCacheSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_8

    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v0, -0x1

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-int/lit8 v6, v8, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-gt v1, v5, :cond_2

    sub-int v3, p1, v1

    if-gez v3, :cond_1

    add-int/2addr v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v6, :cond_8

    add-int v7, p1, v1

    if-lt v7, v4, :cond_3

    sub-int/2addr v7, v4

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v5, :cond_6

    sub-int v3, p1, v1

    if-ltz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_8

    add-int v7, p1, v1

    if-ge v7, v4, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public getIndicatorTop()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    return v0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    mul-int/2addr v1, v0

    return v1

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method getPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndexForItemId(J)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    iget-object v3, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getPageIndexForScrollX(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getSlotForScrollX(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-gez p1, :cond_0

    add-int/lit8 v3, v0, -0x1

    rem-int v4, v2, v0

    sub-int v1, v3, v4

    :goto_0
    return v1

    :cond_0
    rem-int v1, v2, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    return-object v0
.end method

.method protected getPageIndicatorManager(III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1

    new-instance v0, Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    return-object v0
.end method

.method protected getPageMeasuredWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    instance-of v13, p0, Lcom/android/launcher2/FolderPagedView;

    if-eqz v13, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageMeasuredWidth()I

    move-result v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    add-int v10, v13, v8

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v7

    const/high16 v0, -0x80000000

    if-ne v5, v7, :cond_2

    move v0, v5

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v3, :cond_1

    if-eqz v11, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v4, v13, v14

    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v11}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v6, v13, v14

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    div-int/lit8 v14, v8, 0x2

    add-int v12, v13, v14

    sub-int v13, v12, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v13, v6, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v13, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-nez v13, :cond_4

    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0xa

    if-lt v1, v13, :cond_3

    move v0, v7

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_6

    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v1, v13, :cond_5

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v1, v13, :cond_7

    move v0, v7

    :goto_3
    goto :goto_0

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_a

    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v9, v13, :cond_9

    move v0, v5

    :goto_4
    goto :goto_0

    :cond_9
    move v0, v7

    goto :goto_4

    :cond_a
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v9, v13, :cond_b

    move v0, v5

    :goto_5
    goto/16 :goto_0

    :cond_b
    move v0, v7

    goto :goto_5
.end method

.method public getPageSpacing()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    return v0
.end method

.method protected getPageTotWidth()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v2, v1, v3

    if-gtz v2, :cond_0

    const/16 v0, 0x13

    const/16 v2, 0x13

    :cond_0
    return v2
.end method

.method public getPageTranslationFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageTranslationFactor:F

    return v0
.end method

.method public getPageZoom()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    return v0
.end method

.method public getPreferredPage()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    iget v0, v1, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    :cond_0
    return v0
.end method

.method protected getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    iget v4, p1, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    sub-int v0, v1, v4

    instance-of v5, p0, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_0

    move-object v5, p0

    check-cast v5, Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v3, v5, v6

    :cond_0
    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method public handleScrollOnOrientationChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getClosestPageForScrollX(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    return-void
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected initCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const-string v2, "Launcher.PagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidatePageData:mIsDataReady - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContentIsRefreshable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isEnabledFingerHovering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isFastScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    return v0
.end method

.method public isHoveringAreaX(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    sub-int v0, v1, v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHoveringAreaY(F)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPageAddedForDrag(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageConstructed(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isPageFastMoving()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    return v0
.end method

.method protected isPageInclusive(I)Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isZeroPageScrollBlock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroPageScrollBlock(ILandroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->handleOrientationChange()V

    return-void
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    :cond_2
    sget v2, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->scrollRight(I)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_1

    :cond_4
    sget v2, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->scrollLeft(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isEnabledFingerHovering()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->scrollByHover(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v1

    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v7, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v10, :cond_3

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_1

    :cond_3
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v7, v10, :cond_1

    :cond_4
    if-nez v1, :cond_1

    move v5, v6

    goto :goto_0

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchDownPointX:F

    iput v6, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_7

    :cond_6
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    :goto_2
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    goto :goto_1

    :cond_7
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    :pswitch_4
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v10, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_8
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto :goto_1

    :pswitch_5
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto :goto_1

    :pswitch_6
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v17, p4, p2

    sub-int v15, p5, p3

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_3

    add-int/lit8 v18, v4, -0x1

    :goto_1
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_4

    const/4 v10, -0x1

    :goto_2
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_5

    const/4 v9, -0x1

    :goto_3
    move/from16 v13, v18

    :goto_4
    if-eq v13, v10, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_1

    const/16 v12, 0x31

    :cond_1
    and-int/lit8 v19, v12, 0x7

    packed-switch v19, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v19

    sub-int v19, v17, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v2, v19, v20

    sub-int v11, v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v16

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v20, v11, 0x2

    add-int v6, v19, v20

    :goto_5
    and-int/lit8 v19, v12, 0x70

    sparse-switch v19, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v20

    sub-int v20, v15, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v20, v20, v5

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    :goto_6
    add-int v19, v6, v8

    add-int v20, v7, v5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    add-int v19, v19, v17

    add-int v16, v16, v19

    :cond_2
    add-int/2addr v13, v9

    goto/16 :goto_4

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    move v10, v4

    goto/16 :goto_2

    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v16

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v19, v20

    goto :goto_5

    :pswitch_2
    add-int v19, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v19, v19, v8

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    goto :goto_5

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v19

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    sub-int v7, v19, v20

    goto :goto_6

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v19

    sub-int v19, v15, v19

    sub-int v19, v19, v5

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->setDirtyFlagOnLayout(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/4 v3, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v22

    add-int v20, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v22

    add-int v12, v21, v22

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x70

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    :goto_4
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v8, v21, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    :goto_5
    sub-int v21, v24, v21

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v9, v22, v21

    add-int v21, v12, v8

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    add-int v21, v20, v9

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v21, v8

    move/from16 v0, v16

    if-le v10, v0, :cond_2

    move/from16 v16, v10

    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v6, v21, v9

    if-le v6, v15, :cond_3

    move v15, v6

    :cond_3
    if-eqz v4, :cond_4

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    :cond_5
    const/16 v17, 0x1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    :cond_b
    add-int v16, v16, v12

    add-int v15, v15, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v21

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v21

    sub-int v16, v21, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v21

    sub-int v15, v21, v20

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_c

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    :cond_d
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :goto_7
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    sub-int v21, v15, v21

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_f
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v12

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    goto :goto_7

    :cond_10
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setMaxScrollX()V

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setAccessibilityFocusChange(Z)V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setAccessibilityFocusChange(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    check-cast p1, Lcom/android/launcher2/PagedView$SavedState;

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/launcher2/PagedView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$SavedState;-><init>(Landroid/os/Parcelable;Lcom/android/launcher2/PagedView$1;)V

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v2, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    return-object v0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v36

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v5, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PageIndicatorManager;->handleEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v5, v13, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    if-nez v36, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mNextPageInZeroPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v5}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/FolderPagedView;

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportTouchPrediction()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v39

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportTouchPrediction()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/16 v25, 0x0

    const/16 v32, 0x0

    const-wide/16 v26, 0x0

    const v11, 0xf4240

    const/16 v4, 0xc8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-ge v5, v6, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportTouchPrediction()Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v33, 0x41200000    # 10.0f

    :goto_3
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v16, v6, v8

    sub-long v20, v16, v26

    sub-float v5, v18, v25

    move-wide/from16 v0, v20

    long-to-float v6, v0

    div-float v15, v5, v6

    move/from16 v25, v18

    move/from16 v28, v19

    move-wide/from16 v26, v16

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v15

    add-float v5, v5, v18

    mul-float v32, v5, v33

    add-float v39, v39, v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    cmpl-float v5, v39, v5

    if-lez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v5

    move/from16 v39, v0

    :cond_5
    const/4 v5, 0x0

    cmpg-float v5, v39, v5

    if-gez v5, :cond_6

    const/16 v39, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v5, v6

    sub-float v22, v5, v39

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float v5, v5, v22

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v5, v6

    const v6, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v5, :cond_a

    move/from16 v0, v39

    float-to-int v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher2/PagedView;->logScrollByInSystrace(II)V

    move/from16 v0, v22

    float-to-int v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    :goto_4
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v0, v22

    float-to-int v5, v0

    int-to-float v5, v5

    sub-float v5, v22, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v31, v5, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->semGetPredictedX(I)F

    move-result v39

    goto/16 :goto_2

    :cond_8
    const/high16 v33, 0x41400000    # 12.0f

    goto/16 :goto_3

    :cond_9
    const/high16 v33, 0x41500000    # 13.0f

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v37, v0

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v6, v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {v37 .. v37}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v0, v5

    move/from16 v35, v0

    if-nez v35, :cond_e

    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v5}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v35, v0

    :cond_e
    move/from16 v38, v35

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v6, v7

    sub-float v6, v6, v39

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/16 v23, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isEasyOneHandTriggerGesture()Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v34, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_17

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    if-le v5, v6, :cond_17

    if-nez v34, :cond_17

    if-lez v38, :cond_13

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpg-float v5, v39, v5

    if-gez v5, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v14, v5, :cond_18

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v14, v5, :cond_18

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v23

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFlick()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v5, :cond_11

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v5, p0

    check-cast v5, Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_11

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    const-string v6, "ZPEN"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Logging;->setZeroPageStartTime()V

    new-instance v29, Landroid/os/Handler;

    invoke-direct/range {v29 .. v29}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher2/PagedView$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/PagedView$5;-><init>(Lcom/android/launcher2/PagedView;)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v30, v5, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v30, v5, -0x1

    goto :goto_7

    :cond_13
    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpl-float v5, v39, v5

    if-lez v5, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v30, v0

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_15

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFlick()Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_15

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v5, p0

    check-cast v5, Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_15

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    const-string v6, "ZPEN"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Logging;->setZeroPageStartTime()V

    new-instance v29, Landroid/os/Handler;

    invoke-direct/range {v29 .. v29}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher2/PagedView$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/PagedView$6;-><init>(Lcom/android/launcher2/PagedView;)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v30, v5, -0x1

    :goto_8
    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v30, v5, 0x1

    goto :goto_8

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v30

    goto/16 :goto_5

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_1b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    :pswitch_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    :pswitch_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onViewAddedInPagedView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    instance-of v1, p1, Lcom/android/launcher2/Page;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher2/Page;

    invoke-interface {p1}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    :cond_1
    return-void
.end method

.method public onViewRemovedInPagedView(Landroid/view/View;)V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    return-void
.end method

.method public openHeadlines(Z)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Logging;->setZeroPageStartTime()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    sget-object v2, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher2/Launcher;->startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkGalaxyViewDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isZeropageSettingApp()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.NAVIBAR_SETTING_VISIBILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.extra.NAVIBAR_SETTING_VISIBLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationsByGroup(I)V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    sget v1, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->scrollRight(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    sget v1, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->scrollLeft(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public removeHoverScrollHandler()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 0

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method protected restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V
    .locals 1

    iget v0, p1, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    return-void
.end method

.method final screenScrolled(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollByHover(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-nez v5, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v11, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_6

    :cond_3
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v8, :cond_4

    const-string v8, "Launcher.PagedView"

    const-string v11, "scrollByHover Workspace.State.RESIZE"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_5
    move v8, v9

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-nez v8, :cond_7

    new-instance v8, Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/launcher2/PagedView$HoverScrollHandler;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    :cond_7
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_8
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    :cond_9
    move v8, v10

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_a

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_8

    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v10, v3, Landroid/os/Message;->what:I

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const-wide/16 v12, 0xc8

    invoke-virtual {v8, v3, v12, v13}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_a
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    :pswitch_2
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollLeft(I)V
    .locals 4

    const/4 v3, 0x2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_1
.end method

.method public scrollRight(I)V
    .locals 4

    const/4 v3, 0x3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLooped(II)V

    goto :goto_0
.end method

.method protected scrollToNonLoopedSubAct(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    return-void
.end method

.method protected setAllowLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    :cond_2
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method protected setCurrentPageIfNotSnapping(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(IZ)V

    return-void
.end method

.method protected setCurrentPageIfNotSnapping(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/launcher2/PageIndicatorManager;->setAnimationPrevented(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setDataIsReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return-void
.end method

.method public setDefaultTransitionEffect(Lcom/android/launcher2/PagedView$TransitionEffect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_page_effect"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x1

    if-eq v1, v2, :cond_0

    const v2, 0x2

    if-eq v1, v2, :cond_1

    const v2, 0x3

    if-eq v1, v2, :cond_2

    const v2, 0x4

    if-eq v1, v2, :cond_3

    const v2, 0x5

    if-eq v1, v2, :cond_4

    const v2, 0x6

    if-eq v1, v2, :cond_5

    const v2, 0x7

    if-eq v1, v2, :cond_6

    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CASCADE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->OUTERCUBE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->INNERCUBE:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CAROUSAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->PLAIN:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CONVEYOR:Lcom/android/launcher2/PagedView$TransitionEffect;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    return-void
.end method

.method protected setDirtyFlagOnLayout(Z)V
    .locals 5

    const/high16 v4, -0x80000000

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setHoverScrollBoundary()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mUpdatePage:Z

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->repositionOpenFolder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    iget v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-eq v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView$DelaySnapToPage;->setup(III)V

    :goto_0
    iput v4, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    return-void

    :cond_5
    iget v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    goto :goto_0
.end method

.method protected setDirtyFlags()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    return-void
.end method

.method public setHideItems(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    return-void
.end method

.method public setHoverScrollBoundary()V
    .locals 5

    const v4, 0x7f090128

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sget v2, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    if-ne v1, v2, :cond_2

    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    invoke-static {}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    goto :goto_0
.end method

.method public setHoveringSpenIcon(I)V
    .locals 3

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/PagedView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4e31

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/PagedView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4e2d

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/PagedView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIndicatorTop(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method public setMaxScrollX()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageMeasuredWidth()I

    move-result v1

    instance-of v2, p0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    if-gez v2, :cond_1

    div-int/lit8 v2, v1, 0x10

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/android/launcher2/MenuAppsGrid;

    if-nez v2, :cond_3

    instance-of v2, p0, Lcom/android/launcher2/FolderPagedView;

    if-eqz v2, :cond_0

    :cond_3
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOutOfSpaceMessageNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mOutOfSpaceMessageNeeded:Z

    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 4

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public setPageTranslationFactor(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageTranslationFactor:F

    return-void
.end method

.method public setPageZoom(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    return-void
.end method

.method protected snapToPage(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v0, :cond_0

    iput p3, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    iput p2, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->adjustFirstPageIdxForZeroPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    goto :goto_0
.end method

.method protected snapToPageFromFocusHelper(II)V
    .locals 0

    iput p2, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    return-void
.end method

.method protected snapToPageWithDir(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithDur(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method protected superScrollTo(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method protected syncPageWithQuickView(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract syncPages()V
.end method

.method protected syncViewVisibility()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedView$PageInfo;

    iget v5, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v5, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    instance-of v4, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v4, :cond_2

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method protected updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    invoke-interface {v3}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedView$PageInfo;

    iget v3, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    invoke-interface {v3}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v3, :cond_5

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    invoke-interface {v3}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedView$PageInfo;

    if-eqz v2, :cond_6

    iget v3, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    iget v3, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    invoke-interface {v3}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void
.end method

.method updateIndicator(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PageIndicatorManager;->setGap(I)V

    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public updatePageTransforms()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    add-int v2, v3, v0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView$PageInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    return-void
.end method

.method protected updateVisiblePages()I
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    iget v13, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    if-ne v12, v13, :cond_0

    iget v13, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_0

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_0
    return v13

    :cond_0
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHorizontalVisibilityExtension()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v10

    div-int/lit8 v13, v11, 0x2

    add-int v5, v12, v13

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v12

    sub-int v8, v13, v1

    add-int v13, v12, v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v1, 0x2

    add-int v9, v13, v14

    const/high16 v3, -0x80000000

    move v0, v8

    :goto_1
    if-ge v0, v9, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_2

    if-ne v3, v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v13, v10, -0x1

    add-int/2addr v0, v13

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->isZeroPageScrollBlock(ILandroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_1

    move v3, v2

    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v7

    iput v2, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v13, v10

    neg-int v13, v13

    iget v14, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v14, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    sub-int v13, v5, v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    iput v12, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    :cond_5
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto/16 :goto_0
.end method

.method protected updateVisiblePagesForDragMode()I
    .locals 14

    const/high16 v13, -0x80000000

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    if-ne v10, v11, :cond_0

    iget v11, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-ne v11, v13, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_0
    return v11

    :cond_0
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v11, v10

    sub-int v6, v11, v9

    add-int v11, v10, v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    add-int v7, v11, v9

    const/high16 v2, -0x80000000

    move v0, v6

    :goto_1
    if-ge v0, v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v1

    if-eq v2, v13, :cond_2

    if-ne v2, v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v11, v8, -0x1

    add-int/2addr v0, v11

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/PagedView;->isZeroPageScrollBlock(ILandroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_1

    move v2, v1

    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v5

    iput v1, v5, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v11

    iput v11, v5, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, v5, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v11, v8

    neg-int v11, v11

    iget v12, v5, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v11, v12

    iput v11, v5, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    iput v11, v5, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    iget-boolean v11, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v11}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    :cond_5
    iput v10, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    :cond_6
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto/16 :goto_0
.end method
