.class Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;
.super Ljava/lang/Object;
.source "MuteAllSoundsPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/16 v9, 0x12c

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "accessibility_feature_confirm_dialog"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "all_sound_off_key_dialog_do_not_show_again"

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-wrap2(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x17d8

    invoke-static {v4, v9, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x138e

    invoke-static {v4, v9, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const-string/jumbo v4, "MuteAllSoundsController"

    const-string/jumbo v5, "All sound off broadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "all_sound_off"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "mute"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-wrap1(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
