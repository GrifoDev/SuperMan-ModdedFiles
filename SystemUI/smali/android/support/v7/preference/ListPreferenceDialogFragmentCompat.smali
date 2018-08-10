.class public Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
.super Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.source "ListPreferenceDialogFragmentCompat.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method static synthetic -set0(Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private static getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getListPreference()Landroid/support/v7/preference/ListPreference;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
    .locals 3

    new-instance v1, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private static putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "ListPreferenceDialogFragment.index"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    const-string/jumbo v1, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string/jumbo v1, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V

    iget-object v0, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    new-instance v2, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;-><init>(Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
