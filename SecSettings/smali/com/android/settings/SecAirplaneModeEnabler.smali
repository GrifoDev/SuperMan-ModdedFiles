.class public Lcom/android/settings/SecAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "SecAirplaneModeEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecAirplaneModeEnabler$1;,
        Lcom/android/settings/SecAirplaneModeEnabler$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNumSlot:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mServiceState:[I

.field private mSimCount:I

.field private mSupportCellularVoice:Z

.field private final mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/SecAirplaneModeEnabler;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/SecAirplaneModeEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/SecAirplaneModeEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SecAirplaneModeEnabler;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/SecAirplaneModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SecAirplaneModeEnabler"

    sput-object v0, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    iput-boolean v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    new-instance v0, Lcom/android/settings/SecAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecAirplaneModeEnabler$1;-><init>(Lcom/android/settings/SecAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SecAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecAirplaneModeEnabler$2;-><init>(Lcom/android/settings/SecAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/android/settings/SecAirplaneModeEnabler$3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/SecAirplaneModeEnabler$3;-><init>(Lcom/android/settings/SecAirplaneModeEnabler;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 15

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v13, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v12, "false"

    const/4 v13, 0x0

    aput-object v12, v8, v13

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v14, "isAirplaneModeAllowed"

    invoke-static {v12, v13, v14, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_0

    const/4 v12, 0x1

    if-eq v4, v12, :cond_0

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_8

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    if-eqz v12, :cond_5

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v3, v12, :cond_4

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v12, 0x0

    aget v10, v11, v12

    invoke-direct {p0, v10}, Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v7

    if-ltz v10, :cond_1

    if-ne v3, v7, :cond_1

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/android/settings/SecAirplaneModeEnabler;->getSimSettingState(Landroid/content/Context;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aget v12, v12, v3

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v12

    if-ne v6, v12, :cond_7

    sget-object v12, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "# of poweroff( in servicestate) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_5
    :goto_3
    const-string/jumbo v12, "SecAirPlaneModeEnabler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onAirplaneModeChanged= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v12}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v13, 0x7f121b3e

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-nez v12, :cond_5

    iget-boolean v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSupportCellularVoice:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5

    sget-object v12, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "in-service but, mSupportCellularVoice false "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    if-eqz v12, :cond_5

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v12, 0x2

    if-ge v3, v12, :cond_a

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v11

    if-eqz v11, :cond_9

    const/4 v12, 0x0

    aget v10, v11, v12

    invoke-direct {p0, v10}, Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v7

    if-ltz v10, :cond_9

    if-ne v3, v7, :cond_9

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/android/settings/SecAirplaneModeEnabler;->getSimSettingState(Landroid/content/Context;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aget v12, v12, v3

    const/4 v13, 0x3

    if-eq v12, v13, :cond_9

    add-int/lit8 v5, v5, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v12

    if-ne v5, v12, :cond_5

    sget-object v12, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "# of NON-poweroff( in servicestate) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_b
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v13, 0x7f120128

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_6
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_4

    :cond_c
    iget-object v12, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v13, 0x7f120126

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_6
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 11

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    invoke-static {p1}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    iget v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    if-nez v4, :cond_1

    iput-object v10, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " registerPhoneStateListener: ActiveSimCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mNumSlot:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    aget v2, v3, v9

    invoke-direct {p0, v2}, Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneId(I)I

    move-result v1

    if-ltz v2, :cond_3

    if-ne v0, v1, :cond_3

    sget-object v4, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener subId:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/SecAirplaneModeEnabler;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mServiceState:[I

    aput v9, v4, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v10, v4, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    const/16 v6, 0x3e8

    invoke-static {v1, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_2
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method private unregisterPhoneStateListener()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSimCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/SecAirplaneModeEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPhoneStateListener  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb1

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SecAirplaneModeEnabler;->unregisterPhoneStateListener()V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/SecAirplaneModeEnabler;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
