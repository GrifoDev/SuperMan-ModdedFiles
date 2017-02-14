.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
