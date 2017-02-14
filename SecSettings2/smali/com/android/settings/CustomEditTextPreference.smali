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

.method private setFragment(Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CustomEditTextPreference;->mFragment:Lcom/android/settings/CustomEditTextPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
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
