.class Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;
.super Ljava/lang/Object;
.source "HighContrastFontPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "accessibility_feature_confirm_dialog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "toggle_high_text_contrast_preference_dialog_do_not_show_again"

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_text_contrast_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12e

    const/16 v5, 0x1369

    invoke-static {v2, v4, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "HCFT"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
