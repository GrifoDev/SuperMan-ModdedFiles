.class public Lcom/samsung/android/settings/LGTRoamingEnv;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/LGTRoamingEnv$1;,
        Lcom/samsung/android/settings/LGTRoamingEnv$2;,
        Lcom/samsung/android/settings/LGTRoamingEnv$3;,
        Lcom/samsung/android/settings/LGTRoamingEnv$4;,
        Lcom/samsung/android/settings/LGTRoamingEnv$5;,
        Lcom/samsung/android/settings/LGTRoamingEnv$6;,
        Lcom/samsung/android/settings/LGTRoamingEnv$7;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private curSimVer:Ljava/lang/String;

.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCountryUpdate:Landroid/preference/Preference;

.field private mButtonReset:Landroid/preference/Preference;

.field private mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRoamingNetworkInit:Z

.field private mIsSupportBIPduringDataOff:Z

.field private mIsSupportVolte:Z

.field private mIsWaitRadioPowerOff:Z

.field private mLteRoamingSettings:Landroid/preference/SwitchPreference;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/LGTRoamingEnv;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getLteRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getSIMVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->setAuto()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/LGTRoamingEnv;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/LGTRoamingEnv;->toggleLteRoaming(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportVolte:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_EnableBIPduringMobileDataOFF"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportBIPduringDataOff:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$1;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$2;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$3;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$4;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv$5;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$6;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/LGTRoamingEnv$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$7;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private getLteRoamingState()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "lte_roaming_mode_on"

    iget-boolean v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportVolte:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private getRejectValue()I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Idle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "LGTRoamingEnv"

    const-string/jumbo v5, "ril is empty or error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const-string/jumbo v4, "LGTRoamingEnv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RTSValues="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v7

    const-string/jumbo v5, "Idle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private getSIMVersion()Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    const-string/jumbo v2, "LGTRoamingEnv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SimVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private resetSettings()V
    .locals 3

    const-string/jumbo v0, "LGTRoamingEnv"

    const-string/jumbo v1, "resetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0eb3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setAuto()V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "DialogType"

    const-string/jumbo v4, "RESET"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleLteRoaming(Z)V
    .locals 4

    const-string/jumbo v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleLteRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "kr.co.uplus.SET_LTE_ROAMING_IMSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lte_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateCountryInfo()V
    .locals 12

    const v3, 0x1040013

    const/4 v4, 0x0

    const/4 v11, 0x0

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    :try_start_0
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getRejectValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01bd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mIsSupportBIPduringDataOff:Z

    if-nez v0, :cond_3

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.permission.sec.MDM_ROAMING"

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/settings/LGTRoamingEnv$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$9;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string/jumbo v0, "gsm.sim.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x186a0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v0, "LGTRoamingEnv"

    const-string/jumbo v1, "send ADD_NATION_POPUP_TIME_EXPIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0988

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0eb4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->finish()V

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "button_country_update"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    const-string/jumbo v0, "button_reset_setting"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    const-string/jumbo v0, "button_lte_roaming"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/LGTRoamingEnv$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/LGTRoamingEnv$8;-><init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LGTRoamingEnv"

    const-string/jumbo v2, "onPause: unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->updateCountryInfo()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->resetSettings()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_roaming_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/LGTRoamingEnv;->getLteRoamingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
