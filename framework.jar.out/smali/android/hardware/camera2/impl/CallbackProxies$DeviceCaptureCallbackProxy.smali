.class public Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCaptureCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;-><init>()V

    .line 96
    const-string/jumbo v0, "dispatchTarget must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 97
    .restart local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-class v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    .line 95
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureCompleted"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureFailed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCapturePartial"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureProgressed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureSequenceAborted"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureSequenceCompleted"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    const-string/jumbo v1, "onCaptureStarted"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method
