.class public Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomEditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/CustomEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onDialogClosed(Z)V

    invoke-direct {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomEditTextPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/CustomEditTextPreference;->-wrap0(Lcom/android/settings/CustomEditTextPreference;Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomEditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/CustomEditTextPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
