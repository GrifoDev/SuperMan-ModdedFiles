.class Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;
.super Ljava/lang/Object;
.source "NegativeColorPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.aodservice"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_lens_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isEnableEdgeLighting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "edge_lighting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->setColorLensState(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Z)V

    return-void
.end method
