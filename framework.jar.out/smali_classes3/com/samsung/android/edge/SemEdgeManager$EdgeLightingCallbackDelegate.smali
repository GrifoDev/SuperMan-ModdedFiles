.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
.super Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_EDGE_LIGHTING_START:I = 0x0

.field private static final MSG_EDGE_LIGHTING_STARTED:I = 0x2

.field private static final MSG_EDGE_LIGHTING_STOP:I = 0x1

.field private static final MSG_EDGE_LIGHTING_STOPPED:I = 0x3

.field private static final MSG_SCREEN_CHANGED:I = 0x4


# instance fields
.field private final mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

.field final synthetic this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    return-object v0
.end method

.method getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/OnEdgeLightingListener;

    return-object v0
.end method

.method public onEdgeLightingStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onEdgeLightingStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x4

    invoke-static {v3, v4, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
