.class Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
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
            "Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    if-eqz v1, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
