.class public Lcom/android/contacts/common/preference/DefaultAccountPreference;
.super Landroid/preference/ListPreference;
.source "DefaultAccountPreference.java"


# instance fields
.field private mAccountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 10

    const/4 v9, 0x1

    new-instance v6, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v7, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    iget-object v8, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v6}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v6, v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->mAccountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
