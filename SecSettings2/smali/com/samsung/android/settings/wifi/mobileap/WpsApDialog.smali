.class public Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;
.super Landroid/app/AlertDialog;
.source "WpsApDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;
    }
.end annotation


# instance fields
.field private WpsCount:I

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPin:Ljava/lang/String;

.field private mWpsSetup:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_INIT:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "inside WpsAPDialog Ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "wps_tether"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const v10, 0x7f0b1272

    const/16 v12, 0xca

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "wifi_state"

    const/16 v10, 0xe

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0xb

    if-eq v7, v9, :cond_0

    const/16 v9, 0xa

    if-ne v7, v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v9, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "EVENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "wps_success"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0d7f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->CONNECTED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "wps_fail"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "wps_overlap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :cond_5
    const-string/jumbo v9, "wps_pin_needed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v9, 0xca

    iput v9, v2, Landroid/os/Message;->what:I

    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_cancel_int"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v10, 0x1

    if-ne v10, v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v9, :cond_6

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput v12, v5, Landroid/os/Message;->what:I

    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_ap_pin_set"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "wps_pin"

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v5}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_6
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    const/4 v10, 0x2

    if-ne v10, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v9, :cond_1

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput v12, v5, Landroid/os/Message;->what:I

    const-string/jumbo v9, "cmd_type"

    const-string/jumbo v10, "wps_ap_pin_client"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "wps_pin"

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v5}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "WpsApDialog"

    const-string/jumbo v1, "Inside Update dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040370

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b126c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    const v1, 0x7f11083d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    const v0, 0x7f0b126b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0b12a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 13

    const v12, 0x7f0b1272

    const/16 v11, 0xca

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v8}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-nez v0, :cond_2

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput v11, v7, Landroid/os/Message;->what:I

    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_pbc_int"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v10, v0, :cond_4

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput v11, v7, Landroid/os/Message;->what:I

    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_ap_pin_random"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsSetup:I

    if-ne v9, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput v11, v7, Landroid/os/Message;->what:I

    const-string/jumbo v0, "cmd_type"

    const-string/jumbo v1, "wps_ap_pin_client"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wps_pin"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_START:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0d7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWpsPin:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    if-eq v3, v4, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0xca

    iput v3, v1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "cmd_type"

    const-string/jumbo v4, "wps_cancel_int"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
