.class public Landroid/support/v7/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    iput v4, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_0

    add-int v2, p1, p2

    iget v3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int v0, v1, v2

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v2, p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iput-object p3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    iput v4, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onInserted(II)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iput v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iput v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    return-void
.end method
