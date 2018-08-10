.class public interface abstract Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# static fields
.field public static final NO_FRAMES_CAPTURED:I = -0x1


# virtual methods
.method public abstract onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
.end method

.method public abstract onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
.end method

.method public abstract onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
.end method

.method public abstract onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
.end method

.method public abstract onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method
