.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$OnItemClickListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;,
        Landroid/widget/AdapterView$SemMultiSelectionListener;,
        Landroid/widget/AdapterView$SemOnMultiSelectedListener;,
        Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:I

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPenPressState:Z

.field private mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

.field mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

.field mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method static synthetic -set0(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/16 v4, 0x10

    const/4 v0, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    iput v4, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusable()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    iget v0, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    if-ne v0, v4, :cond_1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(I)V

    :cond_1
    return-void
.end method

.method private dispatchOnItemSelected()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    return v3
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method checkFocus()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v2, :cond_1

    iget v4, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    :cond_1
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusable(I)V

    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    :goto_3
    invoke-direct {p0, v3}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    :cond_2
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "scrolling:firstPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "list:nextSelectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "list:nextSelectedRowId"

    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "list:selectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "list:itemCount"

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method findSyncPosition()I
    .locals 20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v3, :cond_0

    const/16 v16, -0x1

    return v16

    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_1

    const/16 v16, -0x1

    return v16

    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    move v6, v13

    move v9, v13

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v16, -0x1

    return v16

    :cond_2
    if-nez v7, :cond_3

    if-eqz v12, :cond_9

    xor-int/lit8 v16, v8, 0x1

    if-eqz v16, :cond_9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v13, v9

    const/4 v12, 0x0

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_5

    return v13

    :cond_5
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    :goto_1
    if-nez v6, :cond_8

    const/4 v7, 0x1

    :goto_2
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    :cond_6
    const/16 v16, -0x1

    return v16

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_4

    xor-int/lit8 v16, v7, 0x1

    if-eqz v16, :cond_4

    :cond_a
    add-int/lit8 v6, v6, -0x1

    move v13, v6

    const/4 v12, 0x1

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7

    const/4 v6, -0x1

    move-object v3, p1

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Landroid/view/View;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    return v6

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v6
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v3
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    :cond_3
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v6, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method rememberSyncStateHorizontal()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_3

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_0
    :goto_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :goto_2
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_4
    :goto_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_1

    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_3
.end method

.method public removeAllViews()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v1, p0, v2}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V

    iput-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    :goto_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_1
.end method

.method selectionChangedForAccessibility()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method public final semGetLongPressMultiSelectionListener()Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    return-object v0
.end method

.method public final semGetMultiSelectionListener()Landroid/widget/AdapterView$SemMultiSelectionListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    return-object v0
.end method

.method public final semGetOnMultiSelectedListener()Landroid/widget/AdapterView$SemOnMultiSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-object v0
.end method

.method public final semGetOnNotifyKeyPressListener()Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    return-object v0
.end method

.method public semNotifyKeyPress(Landroid/view/View;IJZ)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;->onNotifyKeyPress(Landroid/widget/AdapterView;Landroid/view/View;IJZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method semNotifyLongPressMultiSelectionEnded(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    :cond_0
    return-void
.end method

.method semNotifyLongPressMultiSelectionStarted(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    :cond_0
    return-void
.end method

.method semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method semNotifyMultiSelectedStart(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionStarted(II)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStart(II)V

    :cond_1
    return-void
.end method

.method protected semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .locals 11

    iget-object v2, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    iget-object v2, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method semNotifyMultiSelectedStop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionEnded(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStop(II)V

    :cond_1
    return-void
.end method

.method public semSetLongPressMultiSelectionListener(Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    return-void
.end method

.method public semSetMultiSelectionListener(Landroid/widget/AdapterView$SemMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    return-void
.end method

.method public semSetNotifyOnKeyPressListener(Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    return-void
.end method

.method public semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setFocusable(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    and-int/lit8 v3, p1, 0x11

    if-nez v3, :cond_1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFocusable(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move p1, v2

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_1

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v2

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
