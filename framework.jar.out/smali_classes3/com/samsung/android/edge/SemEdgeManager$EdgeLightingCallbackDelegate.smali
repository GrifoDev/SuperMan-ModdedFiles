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
.field private static final MSG_EDGE_LIGHTING:I = 0x0

.field private static final MSG_EDGE_LIGHTING_CANCELED:I = 0x1


# instance fields
.field private final mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/edge/SemEdgeManager;
    .param p2, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .line 242
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-get1(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 243
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 239
    return-void

    .line 242
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    return-object v0
.end method

.method public onEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "response"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 276
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public onEdgeLightingCanceled(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method
