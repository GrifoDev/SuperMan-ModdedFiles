.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v2

    return-void

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
