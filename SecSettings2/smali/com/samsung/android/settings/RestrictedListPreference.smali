.class public Lcom/samsung/android/settings/RestrictedListPreference;
.super Lcom/samsung/android/settings/SettingsListPreference;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;,
        Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field protected mClickedDialogEntryIndex:I

.field private final mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private mLastCheckedPosition:I

.field private final mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/RestrictedListPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getLastCheckedPosition()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method

.method private getLastCheckedPosition()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    return v0
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    iget-object v2, v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/RestrictedListPreference$1;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;)V

    return-object v0
.end method

.method public getSelectedValuePos()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    iget-object v2, v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsListPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mClickedDialogEntryIndex:I

    return-void
.end method

.method protected setClickedDialogEntryIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mClickedDialogEntryIndex:I

    iput p1, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->setEnabled(Z)V

    return-void
.end method
