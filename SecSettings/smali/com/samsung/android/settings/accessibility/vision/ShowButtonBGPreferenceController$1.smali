.class Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;
.super Ljava/lang/Object;
.source "ShowButtonBGPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "accessibility_feature_confirm_dialog"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "toggle_show_button_bg_dialog_do_not_show_again"

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_button_background"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v5, 0x1

    iput v5, v1, Landroid/content/res/Configuration;->showButtonBackground:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "SBSH"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/ShowButtonBGPreferenceController;)Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x12e

    const/16 v8, 0x136b

    invoke-static {v5, v7, v8, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
