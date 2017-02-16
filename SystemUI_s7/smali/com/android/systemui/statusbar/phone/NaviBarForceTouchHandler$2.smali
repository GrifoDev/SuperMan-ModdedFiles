.class Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "NaviBarForceTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->-set0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;Z)Z

    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->-set0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;Z)Z

    :cond_0
    return-void
.end method
