.class Landroid/hardware/camera2/impl/CameraDeviceImpl$9;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$requestId:I

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$holder:Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$requestId:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V

    :cond_0
    return-void
.end method
