.class Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;
.super Ljava/lang/Object;
.source "MonoAudioPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/16 v7, 0x12c

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "accessibility_feature_confirm_dialog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "mono_audio_key_dialog_do_not_show_again"

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mono_audio_db"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "mono"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x17de

    invoke-static {v3, v7, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13ab

    invoke-static {v3, v7, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method
