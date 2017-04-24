.class public Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FindMyMobileSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_FMM:I

.field private static SETTINGS_FMM_ADD_ACCOUNT:I

.field private static SETTINGS_FMM_LOCATIONSERVICE:I

.field private static SETTINGS_FMM_REMOTECONTROL:I

.field public static chkboxFlag:Z

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstLogin:Z

.field private mGoToDive:Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

.field private mGoogleLocationService:Landroid/preference/SwitchPreference;

.field private mHasFMMDMClient:Z

.field private mHasSamsungAccount:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsShopDemo:Z

.field private mIsSupportLMM:Z

.field private mReactivationLock:Landroid/preference/SwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mReactivationLockObserver:Landroid/database/ContentObserver;

.field private mRemoteControls:Landroid/preference/SwitchPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccount:Landroid/accounts/Account;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;

.field private mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

.field private mSimChangeAlert:Landroid/preference/PreferenceScreen;

.field private mSwitchState:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkReactivationLock()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReactivationLock Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveToLoginPage(I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.osp.app.signin"

    const-string/jumbo v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onCancelPressed()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b072b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0729

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f0b152e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f0b10f5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    :cond_0
    const v0, 0x7f0b071c

    const v1, 0x7f0b071b

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0b071e

    const v1, 0x7f0b071d

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f0b152e

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f0b10f5

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateAccountInformation()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_1

    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0b1764

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0b072c

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f040244

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0b072d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateSimChangeAlert()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "change_alert"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b19ca

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b19cb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const v6, 0x7f1001df

    const/4 v8, -0x1

    const/16 v3, 0x3e8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_2

    if-ne p2, v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "login_state"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v5, "RemoteControlRequestCode complete"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    iget-boolean v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CHU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    if-eqz v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "remote_control"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.remotecontrol_on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v3, :cond_3

    if-ne p2, v8, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v1

    const-string/jumbo v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reactivation lock is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.reactivationlock_on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v3, " onActivityResult[reactivationlock_on]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    goto :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "remote_control"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.remotecontrol_off"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.reactivationlock_off"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v3, " onActivityResult[reactivationlock_off]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "FindMyMobileSettings"

    const-string/jumbo v3, "Reactivation lock onActivityResult is not RESULT_OK!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f080073

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v7, "go_to_samsungdive"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoToDive:Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const-string/jumbo v7, "remote_controls"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    const-string/jumbo v7, "google_location_service"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const-string/jumbo v7, "send_final_location_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

    const-string/jumbo v7, "send_final_location_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "sim_change_alert"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0724

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "reactivation_lock"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const v8, 0x7f0b1483

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setTitle(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "FindMyMobileSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasSAPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    aget-object v7, v0, v4

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, v0, v4

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v6, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a001a

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "FindMyMobileSettings"

    const-string/jumbo v8, "No Package name for account type com.osp.app.signin"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const v8, 0x7f1001df

    const/4 v9, 0x1

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_3

    const/4 v3, 0x1

    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSwitchState:Z

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    if-eqz v1, :cond_6

    const-string/jumbo v4, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CHU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-boolean v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    if-eqz v1, :cond_5

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "remote_control"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_on"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_2
    return v2

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    if-eqz v1, :cond_7

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "remote_control"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001e0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    if-eqz v1, :cond_a

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_a
    move v5, v6

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V

    const/4 v2, 0x0

    :goto_5
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReactivationLock state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V

    const/4 v2, 0x0

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.osp.app.signin"

    const-string/jumbo v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "MODE"

    const-string/jumbo v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0728

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0724

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "shopdemo"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_a

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "remote_control"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "network"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "reactivation_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_e

    :cond_4
    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "remote_controls"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "go_to_samsungdive"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sec.android.app.mt"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_6
    const-string/jumbo v2, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "com.osp.app.signin"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateAccountInformation()V

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "samsung_signin"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_7
    iput-boolean v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v7, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "remote_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_9
    move v2, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v5, 0x7f0b0729

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.google.android.gms"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0401a1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0439

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-void
.end method
