.class public Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultPhonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mUserId:I

    invoke-static {v0, v1}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultAppInfo(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .locals 5

    :try_start_0
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    invoke-interface {p1}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p0, p2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v3, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {p0, v3, v5}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getDefaultAppInfo(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "tel:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v5, 0x10000

    invoke-interface {v3, v2, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v5, 0x7f12130b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getBixbyStateId()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DefaultApplicationsCall"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getDefaultAppInfo(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "default_phone_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_0

    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string/jumbo v5, "no_outgoing_calls"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    :cond_3
    return v4
.end method

.method protected setEnabled(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/preference/SecPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method
