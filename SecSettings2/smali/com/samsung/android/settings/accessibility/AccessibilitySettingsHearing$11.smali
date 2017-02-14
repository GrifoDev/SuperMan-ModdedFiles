.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$11;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "callsettings_answer_memo"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
