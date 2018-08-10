.class Lcom/android/systemui/settings/BrightnessController$4;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get10(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_for_vr"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get12(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get14(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get14(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "brightness_pms_marker_screen"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UpdateSliderRunnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get13(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$4;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_1
.end method
