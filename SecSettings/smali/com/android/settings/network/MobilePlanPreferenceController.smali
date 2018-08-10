.class public Lcom/android/settings/network/MobilePlanPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "MobilePlanPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
    }
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private final mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

.field private final mIsSecondaryUser:Z

.field private mMobilePlanDialogMessage:Ljava/lang/String;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    return-void
.end method

.method private onManageMobilePlanClick()V
    .locals 12

    const v11, 0x7f121190

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v9, :cond_0

    const-string/jumbo v8, "MobilePlanPrefContr"

    const-string/jumbo v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "android.intent.action.MAIN"

    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "MobilePlanPrefContr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: message="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    invoke-interface {v8}, Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;->showMobilePlanMessageDialog()V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v8, "MobilePlanPrefContr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f121191

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_7

    const v8, 0x7f12118c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const v8, 0x7f121184

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v8, "MobilePlanPrefContr"

    const-string/jumbo v9, "Missing host fragment, cannot show message dialog."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getMobilePlanDialogMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "manage_mobile_plan"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "manage_mobile_plan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/network/MobilePlanPreferenceController;->onManageMobilePlanClick()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 5

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "MobilePlanPrefContr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: mMobilePlanDialogMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMobilePlanDialogMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    return-void
.end method
