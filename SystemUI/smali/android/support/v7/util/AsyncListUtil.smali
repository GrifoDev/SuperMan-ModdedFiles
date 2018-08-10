.class public Landroid/support/v7/util/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/AsyncListUtil$1;,
        Landroid/support/v7/util/AsyncListUtil$2;,
        Landroid/support/v7/util/AsyncListUtil$DataCallback;,
        Landroid/support/v7/util/AsyncListUtil$ViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAllowScrollHints:Z

.field final mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/AsyncListUtil$DataCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field final mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroid/support/v7/util/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;


# virtual methods
.method updateRange()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v5

    iget v1, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v0, :cond_4

    iput v4, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget v3, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v2, v2, v5

    iget v3, p0, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v3, v3, v4

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    aget v4, v4, v5

    iget v5, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v5

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_6

    :cond_5
    iput v4, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-ge v0, v1, :cond_7

    iput v5, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    aget v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_0
.end method
