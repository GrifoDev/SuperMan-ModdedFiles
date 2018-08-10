.class Lcom/android/systemui/settings/BrightnessController$8;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
