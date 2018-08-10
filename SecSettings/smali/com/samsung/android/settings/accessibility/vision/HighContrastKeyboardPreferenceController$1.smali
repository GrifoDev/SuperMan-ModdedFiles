.class Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;
.super Ljava/lang/Object;
.source "HighContrastKeyboardPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/widget/CheckBox;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap2(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap1(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap4(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v2, "high_contrast_keyboard"

    const-string/jumbo v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap3(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "HCKB"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12e

    const/16 v3, 0x136a

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_1
.end method
