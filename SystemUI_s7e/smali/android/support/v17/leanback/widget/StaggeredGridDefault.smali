.class final Landroid/support/v17/leanback/widget/StaggeredGridDefault;
.super Landroid/support/v17/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    return v0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v0, v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    return v0

    :cond_5
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-ltz v11, :cond_a

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v12

    if-ge v11, v12, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v6, v11, 0x1

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v9, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v3

    if-gez v3, :cond_6

    const/high16 v1, -0x80000000

    const/4 v5, 0x0

    :goto_0
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v5, v11, :cond_1

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_4

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    :goto_1
    const/high16 v11, -0x80000000

    if-eq v1, v11, :cond_5

    :cond_1
    :goto_2
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_8

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    if-gt v11, v1, :cond_2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v9, v11, :cond_2

    const/4 v9, 0x0

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    :cond_2
    :goto_4
    const/4 v2, 0x1

    :goto_5
    const/4 v4, 0x0

    :goto_6
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v9, v11, :cond_1f

    if-eq v6, v0, :cond_3

    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_3
    return v4

    :cond_4
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    if-lt v11, v1, :cond_2

    goto :goto_3

    :cond_9
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_4

    :cond_a
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    :goto_7
    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v11}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v11

    if-lez v11, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v11, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v11, v11, 0x1

    :goto_8
    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int v9, v11, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    move v11, v6

    goto :goto_8

    :cond_d
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_12

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_9
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_e

    const/high16 v11, -0x80000000

    if-ne v8, v11, :cond_17

    :cond_e
    if-nez v9, :cond_15

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_13

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_a
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_f

    const/high16 v11, -0x80000000

    if-eq v8, v11, :cond_f

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_14

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v11, v11

    :goto_b
    add-int/2addr v8, v11

    :cond_f
    :goto_c
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    :goto_d
    move v6, v7

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_19

    sub-int v11, v8, v10

    if-le v11, v1, :cond_1a

    :cond_10
    if-eq v6, v0, :cond_11

    if-nez p2, :cond_1b

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    :cond_11
    return v4

    :cond_12
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_9

    :cond_13
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_a

    :cond_14
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    goto :goto_b

    :cond_15
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_c

    :cond_16
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_c

    :cond_17
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_18

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v11, v11

    :goto_e
    add-int/2addr v8, v11

    goto :goto_c

    :cond_18
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    goto :goto_e

    :cond_19
    add-int v11, v8, v10

    if-lt v11, v1, :cond_10

    :cond_1a
    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_1b
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1c

    neg-int v11, v10

    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    sub-int/2addr v11, v12

    :goto_10
    add-int/2addr v8, v11

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    goto :goto_d

    :cond_1c
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    add-int/2addr v11, v10

    goto :goto_10

    :cond_1d
    const/4 v2, 0x1

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1e

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    move v6, v7

    goto :goto_f

    :cond_1e
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    move v6, v7

    goto :goto_f

    :cond_1f
    if-eqz p2, :cond_20

    return v4

    :cond_20
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_21

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    :goto_11
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_21
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_11
.end method

.method public findRowMax(ZI[I)I
    .locals 10

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    move v2, p2

    const/4 v8, 0x1

    move v7, v5

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_2

    move v6, v0

    add-int/lit8 v1, p2, 0x1

    :goto_0
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_5

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_5

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_0

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    if-eqz p1, :cond_1

    if-le v0, v6, :cond_0

    :goto_1
    move v5, v7

    move v6, v0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, v6, :cond_0

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v6, v0, v9

    add-int/lit8 v1, p2, -0x1

    :goto_2
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_5

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_5

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_3

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v4, v0, v9

    if-eqz p1, :cond_4

    if-le v4, v6, :cond_3

    :goto_3
    move v5, v7

    move v6, v4

    move v2, v1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-ge v4, v6, :cond_3

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    const/4 v9, 0x0

    aput v5, p3, v9

    const/4 v9, 0x1

    aput v2, p3, v9

    :cond_6
    return v6
.end method

.method public findRowMin(ZI[I)I
    .locals 10

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    move v2, p2

    const/4 v8, 0x1

    move v7, v5

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v6, v0, v9

    add-int/lit8 v1, p2, -0x1

    :goto_0
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_5

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_5

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_0

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v4, v0, v9

    if-eqz p1, :cond_1

    if-le v4, v6, :cond_0

    :goto_1
    move v6, v4

    move v5, v7

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v6, :cond_0

    goto :goto_1

    :cond_2
    move v6, v0

    add-int/lit8 v1, p2, 0x1

    :goto_2
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_5

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_5

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_3

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    if-eqz p1, :cond_4

    if-le v0, v6, :cond_3

    :goto_3
    move v6, v0

    move v5, v7

    move v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-ge v0, v6, :cond_3

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    const/4 v9, 0x0

    aput v5, p3, v9

    const/4 v9, 0x1

    aput v2, p3, v9

    :cond_6
    return v6
.end method

.method getRowMax(I)I
    .locals 6

    const/high16 v5, -0x80000000

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_0

    return v5

    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    return v0

    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_6

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    return v5
.end method

.method getRowMin(I)I
    .locals 6

    const v5, 0x7fffffff

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_0

    return v5

    :cond_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_6

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4

    return v0

    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v5
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-ltz v10, :cond_a

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v11

    if-le v10, v11, :cond_0

    const/4 v10, 0x0

    return v10

    :cond_0
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v5, v10, -0x1

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v8, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v8, v8, -0x1

    const v0, 0x7fffffff

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v4, v10, -0x1

    :goto_0
    if-ltz v4, :cond_1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    :goto_1
    const v10, 0x7fffffff

    if-eq v0, v10, :cond_5

    :cond_1
    :goto_2
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_8

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    if-lt v10, v0, :cond_2

    :goto_3
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_2

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    :cond_2
    :goto_4
    const/4 v1, 0x1

    :goto_5
    const/4 v3, 0x0

    move v6, v5

    :goto_6
    if-ltz v8, :cond_1f

    if-ltz v6, :cond_3

    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_3
    return v3

    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v0

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    if-gt v10, v0, :cond_2

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_4

    :cond_a
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    :goto_7
    iget-object v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v10}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v10

    if-ltz v10, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v10, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    :goto_8
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int v8, v10, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    move v10, v5

    goto :goto_8

    :cond_d
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_9
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_e

    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_17

    :cond_e
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_15

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_a
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_f

    const/high16 v10, -0x80000000

    if-eq v7, v10, :cond_f

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_14

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    :goto_b
    add-int/2addr v7, v10

    :cond_f
    :goto_c
    add-int/lit8 v5, v6, -0x1

    invoke-virtual {p0, v6, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    :goto_d
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_19

    add-int v10, v7, v9

    if-ge v10, v0, :cond_1a

    :cond_10
    if-ltz v5, :cond_11

    if-nez p2, :cond_1b

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_11
    return v3

    :cond_12
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_a

    :cond_14
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v10, v10

    goto :goto_b

    :cond_15
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_16

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_c

    :cond_16
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_c

    :cond_17
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_18

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    :goto_e
    add-int/2addr v7, v10

    goto :goto_c

    :cond_18
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v10, v10

    goto :goto_e

    :cond_19
    sub-int v10, v7, v9

    if-gt v10, v0, :cond_10

    :cond_1a
    :goto_f
    add-int/lit8 v8, v8, -0x1

    move v6, v5

    goto/16 :goto_6

    :cond_1b
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_1c

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    add-int/2addr v10, v9

    :goto_10
    add-int/2addr v7, v10

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    move v5, v6

    goto :goto_d

    :cond_1c
    neg-int v10, v9

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    sub-int/2addr v10, v11

    goto :goto_10

    :cond_1d
    const/4 v1, 0x1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_1e

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    goto :goto_f

    :cond_1e
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_f

    :cond_1f
    if-eqz p2, :cond_20

    return v3

    :cond_20
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    :goto_11
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    goto/16 :goto_6

    :cond_21
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_11
.end method
