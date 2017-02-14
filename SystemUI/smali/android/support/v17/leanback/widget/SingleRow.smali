.class Landroid/support/v17/leanback/widget/SingleRow;
.super Landroid/support/v17/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private mTmpItem:[Ljava/lang/Object;

.field private final mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SingleRow;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v2

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-interface {v0, v2, v7, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4

    const v5, 0x7fffffff

    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    const/4 v6, 0x1

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    return v6

    :cond_4
    const/high16 v5, -0x80000000

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    sub-int v5, v0, v1

    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    add-int v5, v0, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final findRowMax(ZI[I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final findRowMin(ZI[I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    return-object v0
.end method

.method getStartIndexForAppend()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method getStartIndexForPrepend()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4

    const/high16 v5, -0x80000000

    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    const/4 v6, 0x1

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    return v6

    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    add-int/2addr v0, v1

    add-int v5, v0, v3

    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    sub-int/2addr v0, v1

    sub-int v5, v0, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
