.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$1;,
        Lcom/android/settings/wifi/WifiEnabler$2;
    }
.end annotation


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequiredUnregistering:Z

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiEnabler;)Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/SwitchPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/SwitchPreference;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRequiredUnregistering:Z

    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    :cond_0
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->initSwitch(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchBar()V

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mGateMessageManager:Lcom/samsung/android/settings/wifi/WifiGateMessageManager;

    goto :goto_0
.end method

.method private checkAndShowToastMessage()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_restriction_on_sprintdm"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const-string/jumbo v2, "WifiEnabler"

    const-string/jumbo v3, "WiFi restricted by Sprint Device Management."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "info_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiEnabler"

    const-string/jumbo v3, "checkAndShowToastMessage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b18ae

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initSwitch(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    goto :goto_0
.end method

.method private isWifiBlocked()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiStateChange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    invoke-direct {p0, v3, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    goto :goto_1
.end method

.method private isWifiBlockedBy3lm(Z)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiChange3lm(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private onSwitchChanged(Z)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-static {v1, v4}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    const/16 v1, 0x8b

    :goto_0
    invoke-static {v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v4

    if-eqz p1, :cond_5

    const/16 v1, 0x3e8

    :goto_1
    const v5, 0x7f100022

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(II)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(Z)V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b1113

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    return v2

    :cond_4
    const/16 v1, 0x8a

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x126

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return v3
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method private setSwitchBarChecked(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const v0, 0x7f0b18ae

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0c13

    goto :goto_1
.end method

.method private setSwitchBarEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    return-void
.end method

.method private setSwitchBarEnabled(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->onSwitchChanged(Z)Z

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRequiredUnregistering:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mRequiredUnregistering:Z

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/Utils;->SPRINT_EXTENSIONS:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkAndShowToastMessage()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_5

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mRequiredUnregistering:Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlockedBy3lm(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z

    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method
