.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$1;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$2;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$3;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field private static sTwoInts:[I


# instance fields
.field private final mAskFocusRunnable:Ljava/lang/Runnable;

.field private final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field private mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

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

.field private mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field private mExtraLayoutSpace:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field private mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalMargin:I

.field private mInFastRelayout:Z

.field private mInLayout:Z

.field private mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field private mInSelection:Z

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field private mLayoutEnabled:Z

.field private mMarginPrimary:I

.field private mMarginSecondary:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field private mNumRows:I

.field private mNumRowsRequested:I

.field private mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field private mScrollOffsetPrimary:I

.field private mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mState:Landroid/support/v7/widget/RecyclerView$State;

.field private mSubFocusPosition:I

.field private mVerticalMargin:I

.field private final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/OnChildLaidOutListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-object v0
.end method

.method static synthetic -get10(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$Recycler;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    return-object v0
.end method

.method static synthetic -get11(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    return v0
.end method

.method static synthetic -get12(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    return v0
.end method

.method static synthetic -get13(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$State;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    return-object v0
.end method

.method static synthetic -get14(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return v0
.end method

.method static synthetic -get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    return-object v0
.end method

.method static synthetic -get16()[I
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method static synthetic -get4(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    return v0
.end method

.method static synthetic -get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    return v0
.end method

.method static synthetic -get6(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    return v0
.end method

.method static synthetic -get7(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    return v0
.end method

.method static synthetic -get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    return v0
.end method

.method static synthetic -get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return p1
.end method

.method static synthetic -set1(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    return p1
.end method

.method static synthetic -set2(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    return p1
.end method

.method static synthetic -set3(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    return-object p1
.end method

.method static synthetic -set4(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/support/v17/leanback/widget/GridLayoutManager;ILandroid/view/View;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/support/v17/leanback/widget/GridLayoutManager;IIZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/support/v17/leanback/widget/GridLayoutManager;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

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

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mAskFocusRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$3;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

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

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

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

.method private dispatchChildSelected()V
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v7, :cond_4

    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v12, :cond_5

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

    if-eqz v0, :cond_8

    :cond_2
    :goto_3
    return-void

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_2

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    goto :goto_3

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private fastRelayout()V
    .locals 18

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    const/4 v14, -0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v14}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v10, 0x1

    :cond_0
    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v14}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v0, v16

    if-gt v2, v0, :cond_6

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_2

    :cond_1
    iget v2, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v13

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->indexOfChild(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v15

    add-int v6, v5, v15

    :goto_3
    iget v3, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    if-eq v13, v15, :cond_4

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v15

    add-int v6, v5, v15

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, v16

    if-lt v2, v0, :cond_5

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

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

.method private forceRequestLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

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

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    aput v0, p3, v3

    aput v1, p3, v4

    return v4

    :cond_2
    return v3
.end method

.method private getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

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

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

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

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v7, v12, v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_9

    move-object v9, v1

    :goto_2
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result v8

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v8, v12

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

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

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

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

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

.method private getPositionByIndex(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPositionByView(Landroid/view/View;)I
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
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewPosition()I

    move-result v1

    return v1
.end method

.method private getPrimarySystemScrollPosition(Landroid/view/View;)I
    .locals 9

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v8

    add-int v4, v7, v8

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v6

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v5

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v7

    :goto_1
    add-int/lit8 v7, v7, -0x1

    if-ne v8, v7, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_3
    if-nez v2, :cond_0

    if-eqz v1, :cond_b

    :cond_0
    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_1

    if-nez v3, :cond_9

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v1, 0x1

    :goto_5
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v7

    :goto_6
    add-int/lit8 v7, v7, -0x1

    if-ne v8, v7, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v7

    if-ge v7, v6, :cond_a

    const/4 v2, 0x0

    :cond_a
    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v7

    if-le v7, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7, v4, v2, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result v7

    return v7
.end method

.method private getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    aget v4, v1, v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_0
    return v2
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

.method private getRowStartSecondary(I)I
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

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

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

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method private getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
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

.method private getSecondarySystemScrollPosition(Landroid/view/View;)I
    .locals 8

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v7

    add-int v5, v6, v7

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    iget v4, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v6, :cond_2

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result v6

    return v6

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSizeSecondary()I
    .locals 3

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

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

.method private getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
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

.method private getTag()Ljava/lang/String;
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

.method private getViewMax(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getViewMin(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getViewPrimarySize(Landroid/view/View;)I
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

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 3

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return v0

    :cond_1
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

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

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

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v6, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

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

.method private hasCreatedFirstItem()Z
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

.method private hasCreatedLastItem()Z
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

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    return-void
.end method

.method private layoutChild(ILandroid/view/View;III)V
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

.method private layoutInit()Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v3, :cond_6

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    if-gt v3, v4, :cond_5

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-nez v2, :cond_7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v3

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    if-eqz v3, :cond_9

    :cond_1
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    if-eqz v1, :cond_b

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    :goto_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v4

    if-eq v3, v4, :cond_c

    :cond_2
    :goto_3
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v3}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setMargin(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->clearFocus()V

    :cond_4
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    if-eqz v1, :cond_d

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v0, v3, :cond_d

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    :goto_4
    return v5

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v3, v2, :cond_8

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v6, :cond_0

    if-lez v2, :cond_0

    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setMargin(I)V

    if-nez v1, :cond_a

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v3, v6, :cond_a

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    :cond_a
    const/4 v3, 0x1

    return v3

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v4

    if-eq v3, v4, :cond_3

    goto/16 :goto_3

    :cond_d
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    goto :goto_4
.end method

.method private leaveContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    return-void
.end method

.method private measureChild(Landroid/view/View;)V
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

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_0
.end method

.method private processPendingMovement(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

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

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

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

.method private processSelectionMoves(ZI)I
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
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

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
    invoke-direct {p0, v6, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_5
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

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
    .locals 2

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

    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

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

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    if-le v7, v3, :cond_0

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int p1, v3, v7

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

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    if-ge v7, v4, :cond_0

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int p1, v4, v7

    goto :goto_0

    :cond_2
    neg-int v7, p1

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v7, :cond_3

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

    goto :goto_0
.end method

.method private scrollToSelection(IIZI)V
    .locals 3

    const/4 v2, 0x1

    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    invoke-direct {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_2

    :cond_0
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    return-void

    :cond_5
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    :cond_6
    return-void
.end method

.method private scrollToView(Landroid/view/View;Z)V
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
    .locals 5

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v1, v2, v3

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method private updateScrollMax()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    :goto_0
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_0
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v5

    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v9, v12, v10}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v3, v9, v10

    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v7, v9, v11

    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v6, v9, v12

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxEdge()I

    move-result v8

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I

    move-result v4

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    if-eqz v0, :cond_5

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxScroll(I)V

    :goto_3
    return-void

    :cond_5
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    goto :goto_3
.end method

.method private updateScrollMin()V
    .locals 12

    const/4 v11, 0x0

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    :goto_0
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_0
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v5

    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v9, v11, v10}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v3, v9, v10

    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v7, v9, v11

    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinEdge()I

    move-result v8

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v4

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    if-eqz v0, :cond_5

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinScroll(I)V

    :goto_3
    return-void

    :cond_5
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    goto :goto_3
.end method

.method private updateScrollSecondAxis()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    return-void
.end method


# virtual methods
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

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

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

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v2

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

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

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

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

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

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
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

.method public getSelection()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
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
    .locals 23
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

    move/from16 v21, v0

    if-eqz v21, :cond_0

    const/16 v21, 0x1

    return v21

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    return v21

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v9

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    if-nez v21, :cond_4

    :cond_3
    const/16 v21, 0x1

    return v21

    :cond_4
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_6

    const/16 v21, 0x1

    return v21

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v21

    move-object/from16 v0, v21

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    :cond_7
    const/4 v12, 0x1

    :goto_1
    if-lez v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    add-int/lit8 v15, v21, -0x1

    :goto_2
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_d

    if-lez v12, :cond_c

    const/16 v16, 0x0

    :goto_3
    move/from16 v11, v16

    :goto_4
    if-lez v12, :cond_e

    if-gt v11, v15, :cond_8

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_f

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_10

    :cond_8
    :goto_6
    const/16 v21, 0x1

    return v21

    :cond_9
    const/4 v10, -0x1

    goto :goto_0

    :cond_a
    const/4 v12, -0x1

    goto :goto_1

    :cond_b
    const/4 v15, 0x0

    goto :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    goto :goto_3

    :cond_d
    add-int v16, v8, v12

    goto :goto_3

    :cond_e
    if-lt v11, v15, :cond_8

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v14

    if-nez v14, :cond_11

    :cond_10
    :goto_7
    add-int/2addr v11, v12

    goto :goto_4

    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v10, :cond_10

    move/from16 v0, v18

    if-le v0, v9, :cond_10

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_10

    goto :goto_6

    :cond_12
    if-nez v17, :cond_13

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v10, :cond_10

    move/from16 v0, v18

    if-ge v0, v9, :cond_10

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_10

    goto :goto_6

    :cond_13
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_10

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v0, v10, :cond_8

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_7

    :cond_14
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_10

    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v10, :cond_8

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_7

    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v21, v0

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v21

    add-int v19, v21, v13

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_8
    if-ge v11, v5, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    if-lt v0, v13, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v6, :cond_1a

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_9
    if-ge v11, v5, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_18

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v6, :cond_1b

    const/16 v21, 0x1

    return v21

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
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

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
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

    :cond_2
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_0

    instance-of v1, v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    move-object v8, v9

    check-cast v8, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v10

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    div-int v2, v10, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v6, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v4, 0x0

    if-eq p2, v9, :cond_1

    if-ne p2, v7, :cond_8

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne p2, v9, :cond_4

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
    if-ne p2, v9, :cond_6

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
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v3

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v2, 0x1

    :goto_5
    if-ne v3, v7, :cond_e

    if-nez v2, :cond_c

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    if-eqz v6, :cond_c

    :goto_6
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_a

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_a
    :goto_7
    if-eqz v4, :cond_14

    return-object v4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    move-object v4, p1

    goto :goto_6

    :cond_d
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    goto :goto_7

    :cond_e
    if-nez v3, :cond_10

    if-nez v2, :cond_f

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    if-eqz v6, :cond_f

    :goto_8
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_a

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    goto :goto_7

    :cond_f
    move-object v4, p1

    goto :goto_8

    :cond_10
    const/4 v6, 0x3

    if-ne v3, v6, :cond_12

    if-nez v2, :cond_11

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    if-nez v6, :cond_a

    :cond_11
    move-object v4, p1

    goto :goto_7

    :cond_12
    if-ne v3, v9, :cond_a

    if-nez v2, :cond_13

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    if-nez v6, :cond_a

    :cond_13
    move-object v4, p1

    goto :goto_7

    :cond_14
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_15

    return-object v4

    :cond_15
    if-eqz p1, :cond_16

    :goto_9
    return-object p1

    :cond_16
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    goto :goto_9
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
    .locals 4

    const/high16 v3, -0x80000000

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

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_0

    add-int v1, p2, p3

    if-le v1, v0, :cond_1

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

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
    .locals 13

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v11, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-gez v4, :cond_1

    return-void

    :cond_1
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-nez v11, :cond_2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v11

    if-nez v11, :cond_d

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v11, :cond_c

    const/4 v10, 0x1

    :goto_0
    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v12, -0x80000000

    if-eq v11, v12, :cond_4

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v11, v12

    iput v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v11, 0x0

    iput v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_4
    const/4 v11, 0x0

    iput v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    if-eqz v10, :cond_5

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    sget-object v12, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-direct {p0, v8, v11, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v12, 0x0

    aget v0, v11, v12

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v12, 0x1

    aget v1, v11, v12

    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v11

    iput-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v11, :cond_f

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v10, :cond_6

    const/4 v11, 0x0

    invoke-direct {p0, v2, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_7
    :goto_1
    if-eqz v10, :cond_8

    neg-int v11, v0

    invoke-direct {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    neg-int v11, v1

    invoke-direct {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    :cond_8
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v11, :cond_14

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    :goto_2
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v11, :cond_16

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v11, v7, :cond_9

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v11, v9, :cond_15

    :cond_9
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_a
    :goto_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    if-nez v3, :cond_b

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v11, :cond_17

    :cond_b
    :goto_4
    return-void

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_f
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_11

    :cond_10
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v11

    if-eqz v11, :cond_11

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_10

    :cond_11
    :goto_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v5

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v6

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    const/4 v11, 0x0

    invoke-direct {p0, v2, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_12
    :goto_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v11

    if-ne v11, v5, :cond_11

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v11

    if-eq v11, v6, :cond_7

    goto :goto_5

    :cond_13
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    :cond_14
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    goto/16 :goto_2

    :cond_15
    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-ne v11, v8, :cond_9

    :cond_16
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v11, :cond_a

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v11, :cond_a

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto/16 :goto_3

    :cond_17
    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mAskFocusRunnable:Ljava/lang/Runnable;

    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_4
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

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

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

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

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

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v6, v5

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

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

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

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
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
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
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_2
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

    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

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

    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
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

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_0
    return v2

    :cond_1
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

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    goto :goto_0
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

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    goto :goto_0
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
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

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

.method public setVerticalMargin(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

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

.method startPositionSmoothScroller(I)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
