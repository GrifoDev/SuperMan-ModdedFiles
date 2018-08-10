.class Lcom/samsung/android/cover/CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "CoverListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

.field private final mListener:Lcom/samsung/android/cover/CoverManager$StateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverListenerDelegate$ListenerDelegateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getListener()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$StateListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
