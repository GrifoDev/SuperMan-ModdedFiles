.class Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;
.super Ljava/lang/Object;
.source "HighContrastKeyboardPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string/jumbo v2, "high_contrast_keyboard"

    const-string/jumbo v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap3(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController$4;->val$preference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;->-wrap5(Lcom/samsung/android/settings/accessibility/vision/HighContrastKeyboardPreferenceController;Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method
