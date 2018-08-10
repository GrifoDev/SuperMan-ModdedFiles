.class public Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.super Landroid/view/ViewGroup;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$DecorView;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsMouseWheelEventSupport:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100b3

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$2;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;ILcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)V
    .locals 14

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v11

    if-gtz v11, :cond_1

    const/4 v6, 0x0

    :goto_0
    if-nez p3, :cond_2

    :cond_0
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v7, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eqz v12, :cond_a

    const v12, -0x800001

    :goto_1
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-eq v12, v13, :cond_b

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    :goto_2
    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    add-int/lit8 v2, p2, -0x1

    :goto_3
    if-gez v2, :cond_c

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v2, p2, 0x1

    :goto_4
    if-lt v2, v4, :cond_f

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mNeedCalculatePageOffsets:Z

    return-void

    :cond_1
    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v8, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v8, v12, :cond_4

    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v7, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    add-int/lit8 v9, v8, -0x1

    :goto_5
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_0

    if-ltz v5, :cond_0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    :goto_6
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_8

    :cond_3
    :goto_7
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_9

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    add-int/lit8 v9, v8, 0x1

    :goto_8
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    :goto_9
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    :cond_5
    :goto_a
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_7

    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_6
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_5

    add-int/lit8 v5, v5, 0x1

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    goto :goto_9

    :cond_7
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_8
    if-lez v5, :cond_3

    add-int/lit8 v5, v5, -0x1

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    goto :goto_6

    :cond_9
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_a
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    goto/16 :goto_1

    :cond_b
    iget v12, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    goto/16 :goto_2

    :cond_c
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    :goto_b
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_d

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eqz v12, :cond_e

    :goto_c
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3

    :cond_d
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    goto :goto_b

    :cond_e
    iput v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    goto :goto_c

    :cond_f
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    :goto_d
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_10

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-eq v12, v13, :cond_11

    :goto_e
    iput v7, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_10
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v12, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    goto :goto_d

    :cond_11
    iget v12, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    goto :goto_e
.end method

.method private completeScroll(Z)V
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    move v2, v8

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_6

    if-nez v2, :cond_8

    :goto_3
    return-void

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    move v5, v8

    :goto_4
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    if-eq v3, v6, :cond_5

    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    if-eq v6, v3, :cond_0

    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    goto :goto_1

    :cond_4
    move v5, v9

    goto :goto_4

    :cond_5
    if-ne v4, v7, :cond_3

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget-boolean v9, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    if-nez v9, :cond_7

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    iput-boolean v8, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 7

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFlingDistance:I

    if-gt v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ge p1, v4, :cond_3

    const v3, 0x3f19999a    # 0.6f

    :goto_0
    add-float v4, p2, v3

    float-to-int v4, v4

    add-int v2, p1, v4

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    :goto_2
    return v2

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_0

    if-gtz p3, :cond_2

    add-int/lit8 v2, p1, 0x1

    :goto_3
    goto :goto_1

    :cond_2
    move v2, p1

    goto :goto_3

    :cond_3
    const v3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_4

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v1, :cond_3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1
.end method

.method private dispatchOnPageSelected(I)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_4

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v1, :cond_3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v3, :cond_4

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    if-nez v1, :cond_3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformerLayerType:I

    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_3
    if-eq v1, p0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 15

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v12

    if-gtz v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    if-gtz v12, :cond_1

    const/4 v8, 0x0

    :goto_1
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v1, v13, :cond_2

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    goto :goto_0

    :cond_1
    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    goto :goto_1

    :cond_2
    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    if-eqz v0, :cond_5

    :cond_3
    :goto_3
    iget v9, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move v7, v9

    iget v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    if-eqz v0, :cond_6

    :cond_4
    cmpg-float v13, v11, v10

    if-gez v13, :cond_7

    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_8

    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v1, v13, :cond_8

    const/4 v0, 0x0

    iget v5, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move v4, v9

    iget v6, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move-object v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempItem:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v14, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    cmpl-float v13, v11, v7

    if-gez v13, :cond_4

    return-object v3

    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    return-object v2
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isGutterDrag(FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    cmpl-float v2, p2, v4

    if-lez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-gez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private pageScrolled(I)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v5

    iget v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    add-int v6, v5, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v2, v7, v8

    iget v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    int-to-float v7, p1

    int-to-float v8, v5

    div-float/2addr v7, v8

    iget v8, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    div-float v4, v7, v8

    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v3, v7

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v0, v4, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onPageScrolled(IFI)V

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    return v7

    :cond_0
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-nez v7, :cond_1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v9, v7, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onPageScrolled(IFI)V

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    if-eqz v7, :cond_2

    return v9

    :cond_1
    return v9

    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private performDrag(F)Z
    .locals 17

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    add-float v12, v8, v2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    const/4 v5, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-nez v14, :cond_1

    :goto_0
    iget v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_2

    :goto_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    if-nez v5, :cond_3

    :goto_2
    move v12, v6

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    return v7

    :cond_1
    const/4 v5, 0x0

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    iget v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    goto :goto_1

    :cond_3
    sub-float v9, v6, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onPull(F)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_0

    if-nez v10, :cond_5

    :goto_4
    move v12, v11

    goto :goto_3

    :cond_5
    sub-float v9, v12, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onPull(F)V

    const/4 v7, 0x1

    goto :goto_4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11

    const/4 v10, 0x0

    if-gtz p2, :cond_1

    :cond_0
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v8

    if-ne v5, v8, :cond_4

    :goto_1
    return-void

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v6, v8, p3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v2, v8, p4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v7

    int-to-float v8, v7

    int-to-float v9, v2

    div-float v3, v8, v9

    int-to-float v8, v6

    mul-float/2addr v8, v3

    float-to-int v1, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v1, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v9

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    :cond_3
    iget v8, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private resetTouch()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->endDrag()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private scrollToItem(IZIZ)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    if-nez p2, :cond_2

    if-nez p4, :cond_3

    :goto_1
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v2

    int-to-float v3, v2

    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v7, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollingCacheEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollingCacheEnabled:Z

    goto :goto_0
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sPositionComparator:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_4

    :cond_0
    const/high16 v5, 0x40000

    if-eq v1, v5, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_8

    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    :cond_2
    if-nez p1, :cond_a

    :goto_0
    return-void

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v5, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v5, v6, :cond_5

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_a
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;-><init>()V

    iput p1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    if-gez p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_3
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public arrowScroll(I)Z
    .locals 13

    const/16 v12, 0x42

    const/16 v11, 0x11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_4

    if-nez v1, :cond_5

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_1
    if-ne p1, v11, :cond_f

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageLeft()Z

    move-result v2

    :cond_3
    :goto_1
    if-nez v2, :cond_12

    :goto_2
    return v2

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_6

    :goto_4
    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_5
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ViewPager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    if-eq v6, p0, :cond_7

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_5

    :cond_9
    if-eq v4, v1, :cond_1

    if-eq p1, v11, :cond_b

    if-ne p1, v12, :cond_3

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_e

    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_d

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    :cond_d
    if-lt v5, v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    :cond_e
    if-gt v5, v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x1

    if-eq p1, v8, :cond_2

    if-ne p1, v12, :cond_11

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    :cond_11
    const/4 v8, 0x2

    if-eq p1, v8, :cond_10

    goto/16 :goto_1

    :cond_12
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->playSoundEffect(I)V

    goto/16 :goto_2
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    :cond_0
    if-nez p2, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    :goto_1
    if-ltz v8, :cond_0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v0, v2, :cond_4

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_5
    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v0

    if-ltz p1, :cond_1

    if-gtz p1, :cond_3

    return v2

    :cond_0
    return v2

    :cond_1
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-gt v0, v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-lt v0, v4, :cond_4

    :goto_1
    return v2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageScrolled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    return-void

    :cond_3
    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-lt v12, v13, :cond_1

    :cond_0
    move v7, v11

    :goto_0
    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_2

    if-nez v5, :cond_8

    :goto_2
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez v7, :cond_9

    :goto_3
    return-void

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_0

    move v7, v10

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_3

    const/4 v12, -0x2

    if-eq v9, v12, :cond_4

    iget v12, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ne v12, v9, :cond_6

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-eqz v5, :cond_5

    :goto_5
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 v7, 0x1

    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iget v13, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_3

    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    iget v12, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-eq v12, v13, :cond_7

    :goto_6
    iput v9, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    move v8, v9

    goto :goto_6

    :cond_8
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v2, :cond_a

    invoke-virtual {p0, v8, v11, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_b

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    iput v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    goto :goto_8
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return v6

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    return v4

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v4, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    return v4
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getOverScrollMode()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    if-nez v1, :cond_6

    :goto_2
    return-void

    :cond_1
    if-eq v2, v6, :cond_3

    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->finish()V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->finish()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v5

    if-gt v5, v6, :cond_0

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v4

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/lit8 v1, v5, 0x0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, p2

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget v1, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->childIndex:I

    return v1

    :cond_0
    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v1

    return-object v1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    return-object v2

    :cond_2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v2, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eq v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method initViewPager()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setWillNotDraw(Z)V

    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMaximumVelocity:I

    new-instance v3, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-direct {v3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLeftEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    new-instance v3, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-direct {v3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRightEdge:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFlingDistance:I

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCloseEnough:I

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDefaultGutterSize:I

    new-instance v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$MyAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getImportantForAccessibility()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    new-instance v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$4;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    if-gtz v13, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v8, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v2, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget v6, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move v9, v2

    :goto_0
    if-ge v9, v6, :cond_0

    :goto_1
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-gt v9, v13, :cond_4

    :cond_2
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    if-eq v9, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    add-float v13, v12, v7

    add-float/2addr v8, v13

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-gtz v13, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    if-ge v5, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    goto :goto_1

    :cond_5
    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    iget v13, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    goto :goto_2
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_2
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    const/4 v0, 0x3

    if-ne v6, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    if-eq v6, v0, :cond_0

    if-nez v6, :cond_4

    :cond_2
    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_8
    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    iput v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    const/4 v0, 0x0

    return v0

    :cond_9
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsUnableToDrag:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v9

    sub-int v24, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v22

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v9, :cond_0

    sub-int v26, v24, v19

    sub-int v8, v26, v20

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v9, :cond_3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTopPageBounds:I

    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mBottomPageBounds:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDecorChildCount:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    :goto_2
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    return-void

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move/from16 v6, v19

    :goto_4
    sparse-switch v23, :sswitch_data_0

    move/from16 v7, v21

    :goto_5
    add-int v6, v6, v22

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :pswitch_1
    move/from16 v6, v19

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    goto :goto_4

    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_4

    :sswitch_0
    move/from16 v7, v21

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_5

    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_5

    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_5

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v15

    if-eqz v15, :cond_4

    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v6, v19, v16

    move/from16 v7, v21

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-nez v26, :cond_6

    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_6
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->needsMeasure:Z

    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    goto :goto_7

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZ)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v14, v15, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mGutterSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v16

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v12, v0, :cond_0

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildWidthMeasureSpec:I

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildHeightMeasureSpec:I

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v16

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v12, v0, :cond_e

    return-void

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    if-eqz v13, :cond_1

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    const/high16 v18, -0x80000000

    const/high16 v8, -0x80000000

    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_3
    const/4 v7, 0x1

    :goto_3
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    :cond_4
    const/4 v6, 0x1

    :goto_4
    if-nez v7, :cond_9

    if-nez v6, :cond_a

    :goto_5
    move/from16 v19, v5

    move v9, v4

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    :cond_5
    :goto_6
    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_6
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    if-nez v7, :cond_d

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_2

    :cond_7
    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v11, v0, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    const/high16 v18, 0x40000000    # 2.0f

    goto :goto_5

    :cond_a
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_5

    :cond_b
    const/high16 v18, 0x40000000    # 2.0f

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    goto :goto_6

    :cond_c
    const/high16 v8, 0x40000000    # 2.0f

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    iget v9, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->height:I

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    if-nez v13, :cond_11

    :cond_10
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_8

    :cond_11
    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    goto :goto_8
.end method

.method protected onPageScrolled(IFI)V
    .locals 14
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDecorChildCount:I

    if-gtz v12, :cond_2

    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageScrolled(IFI)V

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-nez v12, :cond_5

    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCalledSuper:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-eqz v12, :cond_3

    iget v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->gravity:I

    and-int/lit8 v4, v12, 0x7

    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v2, v7

    :goto_1
    add-int/2addr v2, v9

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v3, v2, v12

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_1
    move v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :pswitch_3
    sub-int v12, v11, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v2, v12, v13

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v8, v12

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v12, v6, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v9

    int-to-float v12, v12

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    invoke-interface {v12, v0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    and-int/lit8 v7, p1, 0x2

    if-nez v7, :cond_0

    add-int/lit8 v6, v1, -0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    :goto_0
    move v3, v6

    :goto_1
    if-ne v3, v2, :cond_1

    return v9

    :cond_0
    const/4 v6, 0x0

    const/4 v5, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v7, v4, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    return v7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v4, 0x0

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v1, :cond_1

    iget v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->position:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->recomputeScrollPosition(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFakeDragging:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v2, :cond_4

    :cond_1
    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_6

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v14, 0x0

    and-int/lit16 v2, v8, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-nez v14, :cond_b

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->performDrag(F)Z

    move-result v2

    or-int/lit8 v14, v2, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    sub-float v2, v22, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    sub-float v2, v24, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v23, v2

    if-lez v2, :cond_7

    cmpl-float v2, v23, v25

    if-lez v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    sub-float v2, v22, v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionY:F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-eqz v16, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v14

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mTouchSlop:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v4, 0x3e8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForCurrentScrollPosition()Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v2, v2

    move/from16 v0, v21

    int-to-float v4, v0

    div-float v13, v2, v4

    iget v10, v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v4, v0

    div-float/2addr v2, v4

    iget v4, v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->offset:F

    sub-float/2addr v2, v4

    iget v4, v11, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v13

    div-float v15, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInitialMotionX:F

    sub-float v2, v22, v2

    float-to-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v15, v6, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->determineTargetPage(IFII)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v14

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v7, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZ)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->resetTouch()Z

    move-result v14

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mLastMotionX:F

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_2

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

.method pageLeft()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    return v2
.end method

.method pageRight()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    return v2
.end method

.method populate()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 29

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    sub-int v26, v26, v21

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int v27, v27, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v4, v0, :cond_7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_8

    :cond_0
    :goto_2
    if-eqz v9, :cond_a

    :cond_1
    :goto_3
    if-nez v9, :cond_b

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v28, v0

    if-nez v9, :cond_24

    const/16 v26, 0x0

    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v6

    const/4 v15, 0x0

    :goto_6
    if-lt v15, v6, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->hasFocus()Z

    move-result v26

    if-nez v26, :cond_28

    :cond_2
    :goto_7
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForPosition(I)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v20

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    goto/16 :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    return-void

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->sortChildDrawingOrder()V

    return-void

    :cond_6
    return-void

    :cond_7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    :goto_8
    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "The application\'s SeslPagerAdapter changed the adapter\'s contents without calling SeslPagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Pager id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Pager class: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " Problematic adapter: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    :catch_0
    move-exception v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    move-object/from16 v9, v16

    goto/16 :goto_2

    :cond_a
    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v9

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x0

    add-int/lit8 v17, v8, -0x1

    if-gez v17, :cond_e

    const/16 v16, 0x0

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v7

    if-lez v7, :cond_f

    iget v0, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    sub-float v26, v27, v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingLeft()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    add-float v18, v26, v27

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    :goto_b
    if-gez v22, :cond_10

    :cond_c
    iget v14, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v17, v8, 0x1

    const/high16 v26, 0x40000000    # 2.0f

    cmpg-float v26, v14, v26

    if-gez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_19

    const/16 v16, 0x0

    :goto_c
    if-lez v7, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getPaddingRight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v7

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    add-float v24, v26, v27

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v26, v0

    add-int/lit8 v22, v26, 0x1

    :goto_e
    move/from16 v0, v22

    if-lt v0, v4, :cond_1b

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v8, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->calculatePageOffsets(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;ILcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto :goto_9

    :cond_f
    const/16 v18, 0x0

    goto :goto_a

    :cond_10
    cmpl-float v26, v13, v18

    if-ltz v26, :cond_11

    move/from16 v0, v22

    move/from16 v1, v25

    if-lt v0, v1, :cond_14

    :cond_11
    if-nez v16, :cond_16

    :cond_12
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    add-int/lit8 v8, v8, 0x1

    if-gez v17, :cond_18

    const/16 v16, 0x0

    :cond_13
    :goto_f
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_b

    :cond_14
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v8, v8, -0x1

    if-gez v17, :cond_15

    const/16 v16, 0x0

    :goto_10
    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto :goto_10

    :cond_16
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v13, v13, v26

    add-int/lit8 v17, v17, -0x1

    if-gez v17, :cond_17

    const/16 v16, 0x0

    :goto_11
    goto :goto_f

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto :goto_11

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto/16 :goto_f

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto/16 :goto_c

    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_d

    :cond_1b
    cmpl-float v26, v14, v24

    if-ltz v26, :cond_1c

    move/from16 v0, v22

    if-gt v0, v12, :cond_1f

    :cond_1c
    if-nez v16, :cond_21

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addNewItem(II)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_23

    const/16 v16, 0x0

    :cond_1e
    :goto_12
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_e

    :cond_1f
    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    move/from16 v26, v0

    if-nez v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_20

    const/16 v16, 0x0

    :goto_13
    goto :goto_12

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto :goto_13

    :cond_21
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    add-float v14, v14, v26

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_22

    const/16 v16, 0x0

    :goto_14
    goto/16 :goto_12

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto :goto_14

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-object/from16 v16, v26

    goto/16 :goto_12

    :cond_24
    iget-object v0, v9, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    goto/16 :goto_5

    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    move-object/from16 v0, v19

    iput v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->childIndex:I

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_27

    :cond_26
    :goto_15
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->widthFactor:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->widthFactor:F

    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    goto :goto_15

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_2b

    const/16 v16, 0x0

    :goto_16
    if-nez v16, :cond_2c

    :cond_29
    const/4 v15, 0x0

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    if-nez v16, :cond_2d

    :cond_2a
    :goto_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    move-result-object v16

    goto :goto_16

    :cond_2c
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v0, v16

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v26

    if-nez v26, :cond_2

    goto :goto_18
.end method

.method public removeOnAdapterChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v5, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iput v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v5, :cond_3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v5, :cond_7

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, v9}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeNonDecorViews()V

    iput v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {p0, v8, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget v6, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget-object v7, v2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    if-eqz v5, :cond_4

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mExpectedAdapterCount:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    if-gez v5, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mObserver:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v8, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredCurItem:I

    iput-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;

    invoke-interface {v5, p0, v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemFromUser(IZ)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    move-object v0, p0

    move v1, p1

    move v4, v3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemInternal(IZZIZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZIZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p3, :cond_4

    :cond_2
    if-ltz p1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_6

    :goto_0
    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-le p1, v3, :cond_7

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_8

    :goto_2
    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v3, p1, :cond_9

    :goto_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mFirstLayout:Z

    if-nez v3, :cond_a

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate(I)V

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->scrollToItem(IZIZ)V

    :goto_4
    return-void

    :cond_4
    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-lt p1, v3, :cond_3

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    iput-boolean v4, v3, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    move v0, v4

    goto :goto_3

    :cond_a
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    if-nez v0, :cond_b

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnPageSelected(I)V

    goto :goto_5
.end method

.method setInternalPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mInternalPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setMouseWheelEventSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsMouseWheelEventSupport:Z

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    if-ne p1, v0, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requested offscreen page limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " too small; defaulting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    goto :goto_1
.end method

.method public setOnPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mOnPageChangeListener:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-nez v4, :cond_1

    move v4, v2

    :goto_1
    if-ne v0, v4, :cond_2

    move v1, v2

    :goto_2
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-nez v0, :cond_3

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    :goto_3
    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    :goto_5
    iput v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mDrawingOrder:I

    iput p3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformerLayerType:I

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    goto :goto_4
.end method

.method setScrollState(I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScrollState:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageTransformer:Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PageTransformer;

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dispatchOnScrollStateChanged(I)V

    return-void

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->enableLayers(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method smoothScrollTo(III)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_3

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollX()I

    move-result v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getScrollY()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-eqz v4, :cond_6

    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getClientWidth()I

    move-result v13

    div-int/lit8 v9, v13, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v1, v14

    int-to-float v14, v13

    div-float/2addr v1, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    int-to-float v1, v9

    int-to-float v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v7, v1, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-gtz p3, :cond_7

    int-to-float v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mAdapter:Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mCurItem:I

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;->getPageWidth(I)F

    move-result v14

    mul-float v11, v1, v14

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    div-float v10, v1, v14

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v1, v14

    float-to-int v6, v1

    :goto_2
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mIsScrollStarted:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    goto :goto_3

    :cond_6
    if-nez v5, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->completeScroll(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    return-void

    :cond_7
    move/from16 v0, p3

    int-to-float v1, v0

    div-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    goto :goto_2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method
