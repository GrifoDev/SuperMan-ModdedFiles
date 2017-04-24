.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
