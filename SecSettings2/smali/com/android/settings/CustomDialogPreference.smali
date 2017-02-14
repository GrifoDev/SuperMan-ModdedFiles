.class public Lcom/android/settings/CustomDialogPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CustomDialogPreference;Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CustomDialogPreference;->setFragment(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method private setFragment(Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CustomDialogPreference;->mFragment:Lcom/android/settings/CustomDialogPreference$CustomPreferenceDialogFragment;

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
