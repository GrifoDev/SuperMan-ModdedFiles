.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
    }
.end annotation


# instance fields
.field private final mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private mBatchedInputScheduled:Z

.field mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private scheduleBatchedInput()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unscheduleBatchedInput()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    :cond_0
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 0

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    return-void
.end method
