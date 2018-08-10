.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasBatchedOutputs:Z

.field private final mRepeating:Z

.field private final mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/os/Handler;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Must have a valid handler and a valid callback"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested subsequenceId %d is larger than request list size %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested subsequenceId %d is negative"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mSessionId:I

    return v0
.end method

.method public hasBatchedOutputs()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
