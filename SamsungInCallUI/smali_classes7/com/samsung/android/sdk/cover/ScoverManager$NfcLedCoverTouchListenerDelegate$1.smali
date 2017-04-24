.class Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
