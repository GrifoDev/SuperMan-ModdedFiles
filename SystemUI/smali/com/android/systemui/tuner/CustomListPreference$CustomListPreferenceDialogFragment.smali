.class public Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;
.super Landroid/support/v14/preference/ListPreferenceDialogFragment;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/CustomListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomListPreferenceDialogFragment"
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/CustomListPreference;

    return-object v0
.end method

.method protected getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;-><init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    iget v2, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogCreated(Landroid/app/DialogFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDialogClosed(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onItemConfirmed()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/tuner/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/CustomListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/tuner/CustomListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tuner/CustomListPreference;->isAutoClosePreference()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$1;-><init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    iget v1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setClickedDialogEntryIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    return-void
.end method
