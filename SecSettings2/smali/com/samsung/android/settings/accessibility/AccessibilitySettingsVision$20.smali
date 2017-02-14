.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "greyscale_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "GREY"

    const-string/jumbo v4, "Accessibility settings"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    const-string/jumbo v2, "accessibility"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$20;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get9(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_0
.end method
