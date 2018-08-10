.class public Lcom/samsung/android/settings/wifi/WifiWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiWarning$1;,
        Lcom/samsung/android/settings/wifi/WifiWarning$2;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private customViewWifi:Landroid/view/View;

.field private extra_type:I

.field private isAirplaneMode:Z

.field private isHotspotOnWifiEnableWarningDoNotShowAgain:Z

.field private isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field private mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mProvisionApp:[Ljava/lang/String;

.field private mProvisionType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnableCheck:Z

.field private mWifiEnableWarnMessage:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private req_type:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastCancelEnablingWifi()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastToLaunchMHS()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->showProgressDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIsLightTheme:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIsTablet:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarning$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$2;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private dismissProgressDialog(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissProgressDialog, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x1

    const-string/jumbo v1, "WifiWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received intent to disable pop up and state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    if-ne p1, v5, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->dismissProgressDialog(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isAirplaneMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    :cond_2
    return-void
.end method

.method private sendBroadcastCancelEnablingWifi()V
    .locals 3

    const-string/jumbo v1, "WifiWarning"

    const-string/jumbo v2, "sendBroadcastCancelEnablingWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastToLaunchMHS()V
    .locals 3

    const-string/jumbo v1, "WifiWarning"

    const-string/jumbo v2, "startActivity for WifiApSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showProgressDialog(I)V
    .locals 3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f121f65

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a099d

    if-ne v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    const-string/jumbo v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "WifiWarning"

    const-string/jumbo v9, "onCreate"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v6, "wifip2p"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIsTablet:Z

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIsLightTheme:Z

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x107005c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mProvisionApp:[Ljava/lang/String;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.samsung.android.net.wifi.WIFI_EXTENDER_STATE_CHANGED"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "com.samsung.android.settings.wifi.wifiwarningdialog"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "WifiWarning"

    const-string/jumbo v7, "Error: this activity may be started only with intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :cond_1
    const-string/jumbo v6, "wifi_warning_dialog_type"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const-string/jumbo v6, "wifiap_provision_dialog_type"

    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mProvisionType:I

    if-eqz p1, :cond_2

    const-string/jumbo v6, "wifi_enablewarning_check_mode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v6, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    :cond_3
    iput-object v11, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->setupAlert()V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiWarning;->setVisible(Z)V

    move-object v0, p0

    const v6, 0x7f130173

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiWarning;->setTheme(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_7

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "VZW"

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f0d039d

    invoke-static {v6, v9, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b7

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f122014

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b5

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v9, 0x7f12200f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a099d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_4
    :goto_0
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiWarning$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$3;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    const v9, 0x104000a

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_a

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_a

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiWarning$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$4;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiWarning$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$5;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    const v9, 0x7f12188c

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const-string/jumbo v6, "VZW"

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_d

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_b

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v7, 0x7f121180

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const/16 v6, 0xb

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/WifiWarning;->showProgressDialog(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v11, v8}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_5
    :goto_3
    return-void

    :cond_6
    const v6, 0x7f122014

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f12200f

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_7
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_9

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v6, v13, :cond_9

    const-string/jumbo v6, "VZW"

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f0d039d

    invoke-static {v6, v9, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b7

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f122016

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a09b5

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v9, 0x7f122079

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    const v9, 0x7f0a099d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f122016

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f121f78

    invoke-static {v6, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_4

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f121f98

    invoke-static {v6, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f121f99

    invoke-static {v6, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "wifi_sharing_lite_firsttime_popup"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiWarning$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$6;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiWarning$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$7;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_b
    move v6, v8

    goto/16 :goto_2

    :cond_c
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v6, :cond_5

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_d
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v6, :cond_12

    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v6, v13, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_10

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_e
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :cond_10
    move v6, v8

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_11
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v6, :cond_5

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_0
    const-string/jumbo v0, "WifiWarning"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "WifiWarning"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string/jumbo v0, "WifiWarning"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/wifi/WifiWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    const-string/jumbo v0, "WifiWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_enablewarning_check_mode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->req_type:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->extra_type:I

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiWarning"

    const-string/jumbo v1, "sendBroadcastCancelEnablingWifi when user click HOME key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_1
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
