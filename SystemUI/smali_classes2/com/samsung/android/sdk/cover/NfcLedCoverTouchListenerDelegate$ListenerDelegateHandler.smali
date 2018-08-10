.class Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
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
            "Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTapLeft()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTapMid()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTapRight()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
