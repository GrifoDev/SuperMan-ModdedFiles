.class public Lcom/samsung/android/settings/DataSlotChoice;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSlotChoice.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DataSlotChoice$1;,
        Lcom/samsung/android/settings/DataSlotChoice$2;,
        Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;,
        Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;,
        Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;,
        Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private adapter:Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

.field private flag:[Z

.field private isAirPlaneMode:Z

.field private isReadySlot:Z

.field private isReadySwitch:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabledObserver:Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;

.field private mDataSlotObserver:Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;

.field private mHandler:Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListView:Landroid/widget/ListView;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private slotSwitching:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DataSlotChoice;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mHandler:Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/DataSlotChoice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/DataSlotChoice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/DataSlotChoice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getAvailData()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/DataSlotChoice;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DataSlotChoice;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DataSlotChoice$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DataSlotChoice$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DataSlotChoice;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    iput-boolean v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    new-instance v0, Lcom/samsung/android/settings/DataSlotChoice$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DataSlotChoice$1;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getAvailData()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v8, "9"

    invoke-static {v7, v6, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v8, "9"

    invoke-static {v7, v5, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "CDMA"

    invoke-static {v7}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "phone1_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_0

    const-string/jumbo v7, "3"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "phone2_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    const-string/jumbo v5, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-eqz v5, :cond_5

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    const-string/jumbo v5, "DataSlotChoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " getAvailData , availData :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    if-nez v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCurrentCardstate(I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    const-string/jumbo v5, "9"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    const-string/jumbo v5, "9"

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method private isCallStatus()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DataSlotChoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KKK isCallStatus mTelephonyManager.getCallState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DataSlotChoice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRoamingDisplayMobileDataOnAlert()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b17bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0ab5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DataSlotChoice$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DataSlotChoice$3;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    const v2, 0x7f0b0ab4

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/DataSlotChoice$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/DataSlotChoice$4;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    const-string/jumbo v0, "DataSlotChoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "switching.slot"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->slotSwitching:I

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getAvailData()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/DataSlotChoice;->setSwitchChecked(Z)V

    const-string/jumbo v4, "ril.datacross.slotid"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v4, :cond_8

    if-ne v0, v7, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-eqz v4, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUi, Card status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v4

    if-eq v4, v6, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v4

    if-eq v4, v6, :cond_4

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v4

    if-eq v4, v6, :cond_6

    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DataSlotChoice;->getCurrentCardstate(I)I

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_7
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/DataSlotChoice;->setEnabledList(IZ)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->finish()V

    :cond_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DataSlotChoice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;

    new-instance v1, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;

    new-instance v1, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;-><init>(Lcom/samsung/android/settings/DataSlotChoice;)V

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mHandler:Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DataSlotChoice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v1, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0ab1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v1, Lcom/samsung/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0ab2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v3, v1, v4

    const v1, 0x7f11024a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x7f0a0469

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0a045e

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0a046d

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v2, v1, v3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/DataSlotChoice;->mModeItem:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    const v10, 0x7f04015f

    invoke-direct {v1, v3, v10, v4, v5}, Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->adapter:Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/DataSlotChoice;->adapter:Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate, phoneId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", isReadySwitch = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-object v9
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "DataSlotChoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onItemClick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isReadySlot :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    if-nez v5, :cond_1

    sget-object v5, Lcom/samsung/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    const v6, 0x7f0b0ab3

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(I)V

    sget-object v5, Lcom/samsung/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    if-nez p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_1
    if-nez p3, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    const-string/jumbo v5, "ril.datacross.slotid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnClickListener, Click SLOT 1 radio button .isReadySwitch ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-ne v0, v8, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->isCallStatus()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    if-eqz v5, :cond_3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    iget-object v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "default_data"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->updateUi()V

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    const-string/jumbo v5, "ril.datacross.slotid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnClickListener, Click SLOT 2 radio button .isReadySwitch ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/DataSlotChoice;->log(Ljava/lang/String;)V

    if-ne v1, v4, :cond_5

    return-void

    :cond_5
    if-ne v0, v8, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->isCallStatus()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySlot:Z

    if-eqz v5, :cond_6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/DataSlotChoice;->isReadySwitch:Z

    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "default_data"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->updateUi()V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/DataSlotChoice;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/DataSlotChoice;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataSlotObserver:Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DataSlotChoice;->mDataEnabledObserver:Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->updateUi()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v7, "DataSlotChoice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " onSwitchChanged: isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mStateMachineEvent:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->isAirPlaneMode:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/samsung/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    const v8, 0x7f0b0358

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(I)V

    sget-object v7, Lcom/samsung/android/settings/DataSlotChoice;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mHandler:Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    invoke-virtual {v7, v12}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const/4 v5, 0x1

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v10, "9"

    invoke-static {v7, v9, v10}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v10, "9"

    invoke-static {v7, v8, v10}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "CDMA"

    invoke-static {v7}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "phone1_on"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    const-string/jumbo v7, "3"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "phone2_on"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_5

    const-string/jumbo v7, "3"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_3

    const/4 v5, 0x0

    :cond_3
    if-nez v5, :cond_6

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DataSlotChoice;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b0aa4

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/DataSlotChoice;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0aa5

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DataSlotChoice;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mHandler:Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    invoke-virtual {v7, v12}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    aget v10, v10, v9

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    aget v10, v10, v9

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "EverPoppedUp"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "DataSlotChoice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCheckedChanged, isRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mCheckedRoamingOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    if-nez v4, :cond_7

    const-string/jumbo v7, "DataSlotChoice"

    const-string/jumbo v9, "onCheckedChanged, show warning only once when roaming."

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/DataSlotChoice;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "EverPoppedUp"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2

    :cond_b
    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_2
.end method

.method public setEnabledList(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->adapter:Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice;->flag:[Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;->setFlag([Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice;->adapter:Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/DataSlotChoice$RadioAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
