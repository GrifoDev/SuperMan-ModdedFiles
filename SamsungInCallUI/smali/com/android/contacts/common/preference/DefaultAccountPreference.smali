.class public Lcom/android/contacts/common/preference/DefaultAccountPreference;
.super Landroid/preference/ListPreference;


# instance fields
.field private a:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private b:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->b:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->a:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/DefaultAccountPreference;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->a(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DefaultAccountPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
