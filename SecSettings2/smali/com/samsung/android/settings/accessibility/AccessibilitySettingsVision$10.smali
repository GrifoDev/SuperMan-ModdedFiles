.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$10;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$10;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$10;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$10;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0b18ae

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$10;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0b18af

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
