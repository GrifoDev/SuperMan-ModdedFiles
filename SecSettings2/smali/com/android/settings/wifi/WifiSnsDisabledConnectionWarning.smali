.class public Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;
.super Landroid/app/Activity;
.source "WifiSnsDisabledConnectionWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;,
        Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSsid:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

.field mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private netId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->netId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$2;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private showWifiSnsDisabledConnectionWarningDialog()V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040369

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11081f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f0b0c96

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f0b12c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b12c1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b12c2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f0b129f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f0b12a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;-><init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string/jumbo v3, "WifiSnsDisabledConnectionWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiSnsDisabledConnectionWarning appears with SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiSnsDisabledConnectionWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    const-string/jumbo v3, "netId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->netId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "AP"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mSsid:Ljava/lang/String;

    :cond_0
    const-string/jumbo v3, "WifiSnsDisabledConnectionWarning"

    const-string/jumbo v4, "WifiSnsDisabledConnectionWarning created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->showWifiSnsDisabledConnectionWarningDialog()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
