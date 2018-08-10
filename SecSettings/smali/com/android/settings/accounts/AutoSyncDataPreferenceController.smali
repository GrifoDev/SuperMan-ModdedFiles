.class public Lcom/android/settings/accounts/AutoSyncDataPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;,
        Lcom/android/settings/accounts/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
    }
.end annotation


# instance fields
.field private mAutoSyncBroadcastReceiver:Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

.field private final mParentFragment:Landroid/app/Fragment;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field protected mUserHandle:Landroid/os/UserHandle;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AutoSyncDataPreferenceController;Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mParentFragment:Landroid/app/Fragment;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private isBlockedByEDM()Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v8, "false"

    aput-object v8, v6, v9

    iget-object v8, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "content://com.sec.knox.provider/RoamingPolicy"

    const-string/jumbo v10, "isRoamingSyncEnabled"

    invoke-static {v8, v9, v10, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const-string/jumbo v8, "gsm.operator.isroaming"

    const-string/jumbo v9, "false"

    invoke-static {v4, v8, v9}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    const-string/jumbo v8, "AutoSyncDataController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isBlockedByEDM: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "auto_sync_account_data"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "auto_sync_account_data"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "AutoSyncDataController"

    const-string/jumbo v3, "ignoring EDM state or monkey\'s attempt to flip sync state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3, v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->show(Landroid/app/Fragment;ZLandroid/os/UserHandle;Landroid/support/v14/preference/SwitchPreference;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isAvailable()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mAutoSyncBroadcastReceiver:Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->isBlockedByEDM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
