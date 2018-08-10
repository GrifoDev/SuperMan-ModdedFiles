.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$1;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$2;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field mInFastRelayout:Z

.field mInLayout:Z

.field mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field mInSelection:Z

.field mIsSlidingChildViews:Z

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutEatenInSliding:Z

.field private mLayoutEnabled:Z

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroid/support/v7/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const v0, 0x800033

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    new-instance v0, Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$1;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$2;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private discardLayoutInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    return-void
.end method

.method private dispatchChildSelectedAndPositioned()V
    .locals 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v3, :cond_1

    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_1
.end method

.method private fastRelayout()V
    .locals 19

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v15

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-eq v15, v2, :cond_1

    const/4 v11, 0x1

    :cond_0
    :goto_1
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v17

    add-int/lit8 v9, v8, -0x1

    :goto_2
    if-lt v9, v10, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v12

    if-nez v12, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    iget v2, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v16

    add-int v6, v5, v16

    :goto_3
    iget v3, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v16

    add-int v6, v5, v16

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v0, v17

    if-gt v2, v0, :cond_8

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, v17

    if-lt v2, v0, :cond_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private focusToViewInLayout(ZZ)V
    .locals 5

    const/4 v4, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private forceRequestLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    return v1
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    :cond_0
    return p1
.end method

.method private getAdjustedViewCenter(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    aput v0, p3, v3

    aput v1, p3, v4

    return v4

    :cond_2
    aput v3, p3, v3

    aput v3, p3, v4

    return v3
.end method

.method private getMovement(I)I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_4
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 14

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v12, v4}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v6

    if-ge v11, v3, :cond_4

    move-object v1, p1

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    aget-object v5, v12, v6

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v12, v10, v12

    if-le v12, v0, :cond_0

    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v7, v12, v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_9

    move-object v9, v1

    :goto_2
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v8

    if-nez v7, :cond_3

    if-eqz v8, :cond_b

    :cond_3
    const/4 v12, 0x0

    aput v7, p2, v12

    const/4 v12, 0x1

    aput v8, p2, v12

    const/4 v12, 0x1

    return v12

    :cond_4
    add-int v12, v0, v3

    if-le v10, v12, :cond_1

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    move-object v1, p1

    :goto_3
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v4, v13}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    aget-object v5, v12, v6

    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v11

    if-le v12, v0, :cond_6

    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_7
    move-object v2, p1

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    add-int v13, v3, v0

    sub-int v7, v12, v13

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    move-object v9, v2

    goto :goto_2

    :cond_a
    move-object v9, p1

    goto :goto_2

    :cond_b
    const/4 v12, 0x0

    return v12
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v0

    return v0
.end method

.method private getRowSizeSecondary(I)I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    return v1
.end method

.method private getSizeSecondary()I
    .locals 3

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 3

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_0

    const/4 v5, 0x0

    const/4 v4, 0x1

    move v2, v1

    :goto_0
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v6

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v8

    add-int v7, v8, v6

    move v3, v5

    :goto_1
    if-eq v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v6, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v7, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    return v8

    :cond_0
    add-int/lit8 v5, v1, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    return v9
.end method

.method private initScrollController()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->reset()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    return-void
.end method

.method private layoutInit()Z
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_4
    :goto_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v1}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    return v3

    :cond_6
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eq v1, v2, :cond_5

    goto :goto_1
.end method

.method private leaveContext()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 8

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {p2, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, p4, v7

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    aput v6, p4, v7

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private processPendingMovement(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v4, v2, :cond_4

    :goto_2
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    goto :goto_3
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    const/16 v20, 0x0

    return v20

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    const/4 v15, 0x0

    :goto_0
    const/4 v4, 0x0

    const/16 v17, -0x1

    const/16 v16, -0x1

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_12

    if-nez v15, :cond_4

    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_5

    const/4 v13, 0x0

    :goto_3
    const/4 v14, -0x1

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_a

    invoke-virtual {v8, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v10

    move v5, v11

    :goto_5
    if-gt v5, v10, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_6

    :cond_2
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;

    move-result-object v15

    goto :goto_0

    :cond_4
    aget-object v8, v15, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v13

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v18

    :goto_7
    move/from16 v0, v18

    if-le v0, v14, :cond_2

    move/from16 v14, v18

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v18

    goto :goto_7

    :cond_9
    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v20

    if-nez v20, :cond_c

    if-eqz p1, :cond_c

    if-gez v14, :cond_c

    if-lez v6, :cond_c

    if-gez v17, :cond_b

    if-gez v16, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v7, 0x0

    :goto_8
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v16, v20, v21

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_11

    move/from16 v14, v16

    :cond_c
    :goto_9
    if-gez v14, :cond_d

    const/4 v14, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move/from16 v0, v20

    if-eq v0, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aput v14, v20, v9

    const/4 v4, 0x1

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_10

    add-int/lit8 v7, v6, -0x1

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    goto :goto_8

    :cond_11
    move/from16 v14, v17

    goto :goto_9

    :cond_12
    return v4
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_0
.end method

.method private saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "GridLayoutManager"

    const-string/jumbo v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v7, :cond_0

    if-lez p1, :cond_1

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v3

    if-le p1, v3, :cond_0

    move p1, v3

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    return v6

    :cond_1
    if-gez p1, :cond_0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v4

    if-ge p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_2
    neg-int v7, p1

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_8

    if-lez p1, :cond_9

    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-le v7, v0, :cond_a

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_b

    if-lez p1, :cond_c

    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-ge v7, v0, :cond_6

    const/4 v6, 0x1

    :cond_6
    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    :cond_7
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    :cond_8
    if-ltz p1, :cond_4

    :cond_9
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    if-ltz p1, :cond_5

    :cond_c
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    goto :goto_3
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 3

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    move v0, p1

    move v1, p2

    :goto_1
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v0, p2

    move v1, p1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->scrollBy(II)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    goto :goto_0
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    return-void

    :cond_6
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    :cond_7
    return-void
.end method

.method private updateChildAlignments()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    goto :goto_0
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    :cond_0
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v1, v3, v4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v3

    add-int v0, v1, v3

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_1

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_1
    move v0, p2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    :try_start_1
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v2

    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v1, v0, p4}, Landroid/support/v17/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_3
    :try_start_2
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int v1, v2, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    throw v2
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v2, v3, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v4, v2, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    add-int v3, v1, v2

    if-ge v0, v3, :cond_0

    invoke-interface {p2, v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v7, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v12, :cond_4

    move-wide v4, v8

    :goto_1
    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v12, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    :goto_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_2

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method fillScrapViewsInPostLayout()V
    .locals 10

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v7, v7

    if-le v4, v7, :cond_4

    :cond_1
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v7, :cond_2

    const/16 v1, 0x10

    :goto_0
    if-ge v1, v4, :cond_3

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v1, v7

    goto :goto_0

    :cond_3
    new-array v7, v1, [I

    iput-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    :cond_4
    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v5

    :goto_1
    if-ge v0, v4, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v5, v6, 0x1

    aput v2, v7, v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    goto :goto_1

    :cond_5
    if-lez v6, :cond_6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    invoke-static {v7, v8, v6}, Ljava/util/Arrays;->sort([III)V

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8, v6, v9}, Landroid/support/v17/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    :cond_6
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I
    .locals 3

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge p3, v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_2

    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    :cond_2
    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v2, p1, Landroid/support/v17/leanback/widget/FacetProvider;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/FacetProvider;

    invoke-interface {v2, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-le v0, p1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSlideOutDistance()I
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v3

    neg-int v0, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    add-int/2addr v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v3

    neg-int v0, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    :goto_0
    if-eq p2, p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v5

    if-ne v5, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_4
    return v7
.end method

.method public getSubSelection()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_0
.end method

.method gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method hasCreatedLastItem()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected hasDoneFirstLayout()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method hasPreviousViewInSameRow(I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-lez v4, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v4

    iget v0, v4, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v4, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v4, v0, :cond_3

    if-ge v3, p1, :cond_3

    return v6

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 12

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v8

    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v9, v0, 0x70

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    :goto_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    const/16 v0, 0x30

    if-ne v9, v0, :cond_5

    :cond_2
    :goto_2
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_b

    move v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    add-int v5, p5, v8

    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v8

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v6, v0, 0x7

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8

    const/16 v0, 0x50

    if-ne v9, v0, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    add-int p5, p5, v0

    goto :goto_2

    :cond_8
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    if-eq v6, v0, :cond_7

    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_a

    const/16 v0, 0x10

    if-ne v9, v0, :cond_a

    :goto_4
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    add-int p5, p5, v0

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    goto :goto_4

    :cond_b
    move v3, p3

    move/from16 v2, p5

    move/from16 v5, p4

    add-int v4, p5, v8

    goto :goto_3
.end method

.method measureChild(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_1

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v6, v5, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v1, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v1, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    goto :goto_1
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    :cond_0
    instance-of v0, p2, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    :cond_1
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    goto :goto_0
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const/16 v22, 0x1

    return v22

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    const/16 v22, 0x1

    return v22

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v9

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    if-nez v22, :cond_5

    :cond_3
    const/16 v22, 0x1

    return v22

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    goto :goto_0

    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    const/16 v22, 0x1

    return v22

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v22

    move-object/from16 v0, v22

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_8
    const/4 v13, 0x1

    :goto_2
    if-lez v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v16, v22, -0x1

    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_f

    if-lez v13, :cond_e

    const/16 v17, 0x0

    :goto_4
    move/from16 v11, v17

    :goto_5
    if-lez v13, :cond_10

    move/from16 v0, v16

    if-gt v11, v0, :cond_11

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_12

    :cond_a
    :goto_6
    add-int/2addr v11, v13

    goto :goto_5

    :cond_b
    const/4 v10, -0x1

    goto :goto_1

    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    :cond_d
    const/16 v16, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v17, v22, -0x1

    goto :goto_4

    :cond_f
    add-int v17, v8, v13

    goto :goto_4

    :cond_10
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    :cond_11
    :goto_7
    const/16 v22, 0x1

    return v22

    :cond_12
    if-nez v12, :cond_13

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v15

    if-eqz v15, :cond_a

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_a

    move/from16 v0, v19

    if-le v0, v9, :cond_a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    :cond_14
    if-nez v18, :cond_15

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_a

    move/from16 v0, v19

    if-ge v0, v9, :cond_a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_a

    goto :goto_7

    :cond_15
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_a

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v10, :cond_11

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_6

    :cond_16
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_a

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v10, :cond_11

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v22

    add-int v20, v22, v14

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_8
    if-ge v11, v5, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_18

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v6, :cond_1c

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_9
    if-ge v11, v5, :cond_1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_1a

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_1d

    const/16 v22, 0x1

    return v22

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method

.method onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    instance-of v1, v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v8, v9

    check-cast v8, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    :goto_0
    if-gez v0, :cond_3

    return-void

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    div-int v2, v10, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v6, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v4, 0x0

    if-eq p2, v10, :cond_1

    if-ne p2, v7, :cond_8

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne p2, v10, :cond_4

    const/16 v0, 0x82

    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_5

    const/4 v5, 0x1

    :goto_1
    if-ne p2, v10, :cond_6

    move v6, v7

    :goto_2
    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    const/16 v0, 0x42

    :goto_3
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    :cond_3
    :goto_4
    if-eqz v4, :cond_9

    return-object v4

    :cond_4
    const/16 v0, 0x21

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_2

    :cond_7
    const/16 v0, 0x11

    goto :goto_3

    :cond_8
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    :cond_9
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getDescendantFocusability()I

    move-result v6

    const/high16 v9, 0x60000

    if-ne v6, v9, :cond_a

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    return-object v6

    :cond_a
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v3

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_e

    const/4 v2, 0x1

    :goto_5
    if-ne v3, v7, :cond_f

    if-nez v2, :cond_b

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    :cond_b
    move-object v4, p1

    :cond_c
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    :cond_d
    :goto_6
    if-eqz v4, :cond_16

    return-object v4

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    if-nez v3, :cond_12

    if-nez v2, :cond_10

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_11

    :cond_10
    move-object v4, p1

    :cond_11
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    goto :goto_6

    :cond_12
    const/4 v6, 0x3

    if-ne v3, v6, :cond_14

    if-nez v2, :cond_13

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    :cond_13
    move-object v4, p1

    goto :goto_6

    :cond_14
    if-ne v3, v10, :cond_d

    if-nez v2, :cond_15

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    :cond_15
    move-object v4, p1

    goto :goto_6

    :cond_16
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_17

    return-object v4

    :cond_17
    if-eqz p1, :cond_18

    :goto_7
    return-object p1

    :cond_18
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    goto :goto_7
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 3

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_1

    add-int v1, p2, p4

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void

    :cond_1
    if-ge p2, v0, :cond_2

    sub-int v1, v0, p4

    if-le p3, v1, :cond_2

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_2
    if-le p2, v0, :cond_0

    if-ge p3, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_0

    add-int v1, p2, p3

    if-le v1, v0, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    move v1, p2

    add-int v0, p2, p3

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v39, v0

    if-nez v39, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-gez v9, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v39

    if-lez v39, :cond_2

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    move/from16 v39, v0

    if-nez v39, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    :cond_3
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v39

    if-eqz v39, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_b

    if-lez v4, :cond_b

    const v14, 0x7fffffff

    const/high16 v12, -0x80000000

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    add-int/lit8 v40, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v13

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v39

    if-nez v39, :cond_5

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v39

    if-nez v39, :cond_5

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->isLayoutRequested()Z

    move-result v39

    if-nez v39, :cond_5

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-nez v39, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_7

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_5

    :cond_8
    move/from16 v0, v16

    if-lt v0, v15, :cond_5

    move/from16 v0, v16

    if-le v0, v13, :cond_6

    goto :goto_1

    :cond_9
    if-le v12, v14, :cond_a

    sub-int v39, v12, v14

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    :cond_b
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v39

    if-nez v39, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v39, v0

    if-nez v39, :cond_17

    const/16 v33, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v39, v0

    const/high16 v40, -0x80000000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_e
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v6

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    :goto_4
    if-nez v29, :cond_1b

    const/16 v31, 0x0

    :goto_5
    if-nez v29, :cond_1c

    const/16 v32, 0x0

    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    if-eqz v33, :cond_21

    if-eqz v29, :cond_21

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v22

    sub-int v39, v21, v31

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    sub-int v39, v22, v32

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_22

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v17

    :goto_8
    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v20

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v39

    sub-int v25, v19, v39

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v39

    sub-int v36, v20, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v39, v0

    if-nez v39, :cond_23

    move/from16 v34, v25

    move/from16 v35, v36

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_27

    :cond_11
    if-nez v26, :cond_24

    if-nez v27, :cond_24

    :cond_12
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    move/from16 v39, v0

    if-eqz v39, :cond_28

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v30

    if-eq v0, v1, :cond_29

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_15
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    :cond_16
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_17
    const/16 v33, 0x0

    goto/16 :goto_2

    :cond_18
    const/16 v33, 0x0

    goto/16 :goto_2

    :cond_19
    const/4 v6, -0x1

    goto/16 :goto_3

    :cond_1a
    const/4 v10, -0x1

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v31

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v32

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v33, :cond_20

    if-ltz v6, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v0, v10, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v37, v5

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    const/16 v39, -0x1

    move/from16 v0, v39

    if-eq v5, v0, :cond_f

    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v39

    if-eqz v39, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    if-nez v39, :cond_f

    goto :goto_e

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v0, v6, :cond_1e

    :cond_20
    move/from16 v37, v6

    move v5, v10

    goto :goto_d

    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    goto/16 :goto_7

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_23
    move/from16 v35, v25

    move/from16 v34, v36

    goto/16 :goto_9

    :cond_24
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    if-nez v34, :cond_25

    if-eqz v35, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    goto/16 :goto_a

    :cond_27
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    goto/16 :goto_a

    :cond_28
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    goto/16 :goto_b

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-nez v39, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto/16 :goto_c
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    :cond_0
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v8

    add-int v3, v6, v8

    :goto_0
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_5

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iput v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v6, v6

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v6, v8, :cond_1

    :cond_0
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    :cond_1
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    sparse-switch v2, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int v3, v6, v8

    goto :goto_0

    :cond_3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int v1, v6, v3

    :cond_4
    :goto_2
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_b

    invoke-virtual {p0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    :goto_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :sswitch_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int/2addr v6, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :sswitch_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    goto :goto_2

    :cond_5
    sparse-switch v2, :sswitch_data_1

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_6

    sub-int v6, v5, v3

    :goto_4
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_7

    :goto_5
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v1, v6, v3

    goto :goto_2

    :cond_6
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    goto :goto_4

    :cond_7
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_5

    :sswitch_4
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_8

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_8

    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v6, v5, v3

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    :goto_6
    move v1, v5

    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_4

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v0, v6, v3

    if-ge v0, v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_8
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_9

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v6, v5

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v7, v8

    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_6

    :cond_9
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_a

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v6, v5, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_6

    :cond_a
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-ne v4, v0, :cond_3

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-ne v4, v1, :cond_3

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_4

    :goto_3
    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    return-void

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    new-instance v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v6

    iput v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v0, v5, v3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-object v4
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    sparse-switch p3, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method processSelectionMoves(ZI)I
    .locals 13

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v9, :cond_0

    return p2

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v2, v11, :cond_2

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v2}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    :goto_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_8

    if-eqz p2, :cond_8

    if-lez p2, :cond_3

    move v5, v4

    :goto_2
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v1, -0x1

    sub-int v5, v9, v4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v7

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v8

    if-ne v3, v11, :cond_5

    move v2, v7

    move-object v6, v0

    move v3, v8

    goto :goto_3

    :cond_5
    if-ne v8, v3, :cond_1

    if-lez p2, :cond_6

    if-le v7, v2, :cond_6

    :goto_4
    move v2, v7

    move-object v6, v0

    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    if-gez p2, :cond_1

    if-ge v7, v2, :cond_1

    goto :goto_4

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_a

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_9

    iput-boolean v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    :cond_9
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_a
    :goto_5
    return p2

    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_5
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method scrollAndAppendPrepend(II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    goto :goto_0
.end method

.method setChildrenVisibility(I)V
    .locals 4

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    return-void
.end method

.method setFocusSearchDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_0
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffset(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetPercent(F)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetWithPadding(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentViewId(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    return-void
.end method

.method setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method public setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment;->setOrientation(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment;->setOrientation(I)V

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScrollEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelection(IIZI)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setSelectionSmooth(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelectionWithSub(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_0
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffset(I)V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffsetPercent(F)V

    return-void
.end method

.method slideIn()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    new-instance v1, Landroid/support/v17/leanback/widget/GridLayoutManager$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$3;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_1
.end method

.method slideOut()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    return v1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method updatePositionToRowMapInPostLayout()V
    .locals 6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateScrollLimits()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ltz v5, :cond_1

    if-gez v8, :cond_3

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    goto :goto_0

    :cond_3
    if-ne v5, v4, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-ne v8, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v17

    if-eqz v17, :cond_6

    xor-int/lit8 v17, v6, 0x1

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v17

    if-eqz v17, :cond_6

    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v11

    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v17, v16, v17

    const/16 v18, 0x0

    aget v18, v16, v18

    sub-int v17, v17, v18

    add-int v12, v12, v17

    :cond_7
    :goto_3
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v14

    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11, v15, v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void

    :cond_8
    const v11, 0x7fffffff

    const v12, 0x7fffffff

    goto :goto_3

    :cond_9
    const/high16 v14, -0x80000000

    const/high16 v15, -0x80000000

    goto :goto_4
.end method
