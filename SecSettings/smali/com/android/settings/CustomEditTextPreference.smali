.class public Lcom/android/settings/CustomEditTextPreference;
.super Landroid/support/v7/preference/EditTextPreference;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CustomEditTextPreference;Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CustomEditTextPreference;->setFragment(Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setFragment(Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :cond_0
    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method
