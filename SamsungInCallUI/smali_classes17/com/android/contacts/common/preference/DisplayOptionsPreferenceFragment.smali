.class public Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private addExtraPreferences()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/commonbind/ObjectFactory;->getPreferenceManager(Landroid/content/Context;)Lcom/android/contacts/common/preference/PreferenceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/contacts/common/preference/PreferenceManager;->getPreferences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeUnsupportedPreferences()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "sortOrder"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const v3, 0x7f0e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "displayOrder"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "accounts"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->removeUnsupportedPreferences()V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->addExtraPreferences()V

    const-string v1, "about"

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment$1;-><init>(Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
