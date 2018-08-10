.class Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;
.super Ljava/lang/Object;
.source "MuteAllSoundsPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "all_sound_off"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "mute"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "callsettings_answer_memo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-wrap1(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "callsettings_answer_memo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v3, "MuteAllSoundsController"

    const-string/jumbo v4, "All sound off broadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get1(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
