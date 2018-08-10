.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

.field final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onRemoved(II)V

    return-void
.end method
