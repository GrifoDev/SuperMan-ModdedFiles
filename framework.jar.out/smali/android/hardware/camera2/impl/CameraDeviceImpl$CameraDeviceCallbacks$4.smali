.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic val$fpsRange:Landroid/util/Range;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$partialResults:Ljava/util/List;

.field final synthetic val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field final synthetic val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$sensorTimestamp:J

.field final synthetic val$subsequenceId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$sensorTimestamp:J

    iput p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$subsequenceId:I

    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$fpsRange:Landroid/util/Range;

    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$partialResults:Ljava/util/List;

    iput-object p10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v2, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequestCount()I

    move-result v2

    if-ge v6, v2, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$sensorTimestamp:J

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$subsequenceId:I

    sub-int/2addr v2, v6

    int-to-long v10, v2

    const-wide/32 v12, 0x3b9aca00

    mul-long/2addr v10, v12

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$fpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$partialResults:Ljava/util/List;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_1
    return-void
.end method
