.class Landroid/hardware/camera2/legacy/CameraDeviceState$1;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$captureError:I

.field final synthetic val$captureErrorArg:Ljava/lang/Object;

.field final synthetic val$request:Landroid/hardware/camera2/legacy/RequestHolder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;
    .param p2, "val$captureError"    # I
    .param p3, "val$captureErrorArg"    # Ljava/lang/Object;
    .param p4, "val$request"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 181
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureError:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureErrorArg:Ljava/lang/Object;

    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->-get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureError:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$captureErrorArg:Ljava/lang/Object;

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$1;->val$request:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onError(ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 183
    return-void
.end method
