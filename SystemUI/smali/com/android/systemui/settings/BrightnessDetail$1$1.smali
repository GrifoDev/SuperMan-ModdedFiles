.class Lcom/android/systemui/settings/BrightnessDetail$1$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

.field final synthetic val$slider:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->val$slider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v0, "BrightnessDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAuto set "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail$1;->-get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->val$slider:Lcom/android/systemui/settings/ToggleSlider;

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/settings/BrightnessController;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QS26"

    invoke-static {v0, v1, v2, v6, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "display_outdoor_mode"

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    const/4 v5, -0x2

    invoke-static {v1, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$1;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v4, "QP05"

    const-string/jumbo v5, "outdoor"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method
