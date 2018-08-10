.class public Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;,
        Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;
    }
.end annotation


# instance fields
.field private mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:I

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceGroup;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v0, 0x7f12175f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_1
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateWFSNBigdata(ZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_0
    iput v2, v0, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method


# virtual methods
.method public onRadioButtonClicked(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string/jumbo v2, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v3, "Agg on pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v4, :cond_2

    :goto_1
    int-to-long v0, v0

    const v4, 0x7f120a6d

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    const-string/jumbo v2, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v3, "Agg off pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSAScreenId:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v4, v0

    const v0, 0x7f120a71

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateRadioGroup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateWFSNBigdata(ZZ)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v2, "SNS On pressed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v1, "SNS Off pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateRadioGroup()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAgg:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mNormal:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setChecked(Z)V

    goto :goto_1
.end method
