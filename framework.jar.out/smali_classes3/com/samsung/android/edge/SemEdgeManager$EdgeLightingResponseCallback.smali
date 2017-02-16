.class public final Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;
.super Ljava/lang/Object;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EdgeLightingResponseCallback"
.end annotation


# instance fields
.field response:Lcom/samsung/android/edge/IEdgeLightingResponse;

.field final synthetic this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/edge/SemEdgeManager;
    .param p2, "response"    # Landroid/os/IBinder;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-static {p2}, Lcom/samsung/android/edge/IEdgeLightingResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;->response:Lcom/samsung/android/edge/IEdgeLightingResponse;

    .line 294
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;->response:Lcom/samsung/android/edge/IEdgeLightingResponse;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;->response:Lcom/samsung/android/edge/IEdgeLightingResponse;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeLightingResponse;->onFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/edge/SemEdgeManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFinished : callback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
