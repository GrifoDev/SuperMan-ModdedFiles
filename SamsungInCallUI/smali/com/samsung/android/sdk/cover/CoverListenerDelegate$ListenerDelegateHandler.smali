.class Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/CoverListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v8, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_3

    const/high16 v0, 0x1020000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v7, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v7, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    :goto_0
    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/high16 v0, 0x1010000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v7, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coverState : null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
