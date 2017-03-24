.class Lcom/android/systemui/settings/ToggleSlider$7;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;->showStrainWarningPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->-set0(Lcom/android/systemui/settings/ToggleSlider;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get2(Lcom/android/systemui/settings/ToggleSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get10(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_max_brightness_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSlider;->-get1(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->-get11(Lcom/android/systemui/settings/ToggleSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    goto :goto_0
.end method
