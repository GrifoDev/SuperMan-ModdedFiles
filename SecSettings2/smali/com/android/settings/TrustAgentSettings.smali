.class public Lcom/android/settings/TrustAgentSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustAgentSettings$AgentInfo;
    }
.end annotation


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    return-void
.end method

.method private loadActiveAgents()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private saveActiveAgents()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method private updateAgents()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->findAvailableTrustAgents()Landroid/util/ArrayMap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    :cond_0
    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->loadActiveAgents()V

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v8, "trust_agents"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v3, v8, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    new-instance v6, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    iput-object v6, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    iget-object v7, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v10}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setPersistent(Z)V

    invoke-virtual {v6, p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/settings/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v9, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v10}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    iget-object v7, v1, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method findAvailableTrustAgents()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/TrustAgentSettings$AgentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.service.trust.TrustAgentService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    new-instance v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    invoke-direct {v0}, Lcom/android/settings/TrustAgentSettings$AgentInfo;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustAgentSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v3, p1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mAvailableAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;

    iget-object v3, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->preference:Landroid/preference/SwitchPreference;

    if-ne v3, p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->saveActiveAgents()V

    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/settings/TrustAgentSettings;->mActiveAgents:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/settings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustAgentSettings;->removePreference(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->updateAgents()V

    return-void
.end method
