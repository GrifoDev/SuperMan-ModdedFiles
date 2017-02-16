.class Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverStateListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    iput-object p2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    if-eqz v2, :cond_0

    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 92
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
