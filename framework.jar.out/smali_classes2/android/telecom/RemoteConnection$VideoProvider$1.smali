.class Landroid/telecom/RemoteConnection$VideoProvider$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 346
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 382
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 383
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    goto :goto_0

    .line 381
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 3
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 390
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 391
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto :goto_0

    .line 389
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 375
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 376
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    goto :goto_0

    .line 374
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .prologue
    .line 397
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 398
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_0

    .line 396
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 368
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 369
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_0

    .line 367
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 349
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 350
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 348
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 357
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 359
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 358
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 356
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method
