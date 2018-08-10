.class Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate;
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
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverPowerKeyListener;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverPowerKeyListener;

    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverPowerKeyListener;->onPowerKeyPress()V

    :cond_0
    return-void
.end method
