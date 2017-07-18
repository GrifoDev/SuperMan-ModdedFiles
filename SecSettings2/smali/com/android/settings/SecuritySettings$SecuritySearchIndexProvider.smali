.class Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    return-void
.end method

.method private getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;
    .locals 1

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    return-object v0
.end method

.method private isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    const-string/jumbo v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f0b1144

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v14}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v15

    if-eqz v15, :cond_4

    const v10, 0x7f0b1140

    :goto_0
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v15, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0b1149

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0b114a

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v8

    const/16 v15, -0x2710

    if-eq v8, v15, :cond_2

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v15

    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v15

    if-eqz v15, :cond_2

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0b14ee

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v15, "no_config_credentials"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v15

    if-eqz v15, :cond_5

    const v13, 0x7f0b1714

    :goto_1
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v15

    if-eqz v15, :cond_6

    const-class v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-static {v0, v7, v15}, Lcom/android/settings/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    iget-object v15, v1, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v15, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v12, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const v10, 0x7f0b113e

    goto/16 :goto_0

    :cond_5
    const v13, 0x7f0b1715

    goto :goto_1

    :cond_6
    return-object v11
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    const/16 v9, -0x2710

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v3

    const-string/jumbo v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-direct {p0, v8, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eq v4, v9, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    :goto_0
    if-eq v4, v9, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    invoke-static {p1, v2, v3}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v6

    const-class v8, Lcom/android/settings/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v8, 0x7f080102

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_3
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {p1, v2, v3, v8}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {p1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const v8, 0x7f0800fc

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const v8, 0x7f080113

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
