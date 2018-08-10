.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteFingerprint()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-set1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method public onNegativeClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get9(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get9(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get9(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap5(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
