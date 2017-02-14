.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "all_sound_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "mute"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "AccessibilitySettings_Hearing"

    const-string/jumbo v2, "All sound off broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
