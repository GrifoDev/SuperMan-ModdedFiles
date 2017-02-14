.class public Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;
.super Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedListPreferenceDialogFragment"
.end annotation


# instance fields
.field private mLastCheckedPosition:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getLastCheckedPosition()I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    return-object v0
.end method

.method private getLastCheckedPosition()I
    .locals 2

    iget v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v0

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    :cond_0
    iget v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;-><init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V

    return-object v0
.end method

.method protected setClickedDialogEntryIndex(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    iput p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return-void
.end method
