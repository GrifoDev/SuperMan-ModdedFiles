.class Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;
.super Ljava/lang/Object;
.source "NegativeColorPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/widget/CheckBox;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "accessibility_feature_confirm_dialog"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "toggle_negative_color_dialog_do_not_show_again"

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->getNegativeColorsExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "is_enabled"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-wrap1(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/support/v7/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Z)V

    goto :goto_0
.end method
