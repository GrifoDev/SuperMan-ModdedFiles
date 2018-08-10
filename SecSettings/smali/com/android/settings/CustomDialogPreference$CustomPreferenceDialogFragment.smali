.class public Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomDialogPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/CustomDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/CustomDialogPreference;->-wrap0(Lcom/android/settings/CustomDialogPreference;Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
