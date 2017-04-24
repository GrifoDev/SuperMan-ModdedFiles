.class public Lcom/samsung/android/settings/wifi/WifiWarningDialog;
.super Landroid/app/Activity;
.source "WifiWarningDialog.java"


# instance fields
.field private mEnableWarningDialogIntent:Landroid/content/Intent;

.field private mIsLightTheme:Z

.field mWifiEnableWarningDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressCancel()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->wifiWarningDialogPressOK()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    return-void
.end method

.method private showEnableWarningDialog()V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v3, "WifiWarningDialog"

    const-string/jumbo v4, "showEnableWarningDialog"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string/jumbo v4, "dialog_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_0
    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0b0c2e

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v5, "WLAN"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f0b0c2f

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b042c

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0423

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;-><init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const/4 v3, 0x4

    goto :goto_0
.end method

.method private wifiWarningDialogPressCancel()V
    .locals 5

    const-string/jumbo v2, "WifiWarningDialog"

    const-string/jumbo v3, "wifiWarningDialogPressCancel. Send Broadcast: WIFI_DIALOG_CANCEL_ACTION"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "called_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-super {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    const-string/jumbo v2, "WifiWarningDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SystemProperties.get(persist.sys.setupwizard) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiWarningDialog"

    const-string/jumbo v3, "wifiWarningDialogPressCancel. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wifiWarningDialogPressOK()V
    .locals 5

    const-string/jumbo v2, "WifiWarningDialog"

    const-string/jumbo v3, "wifiWarningDialogPressOK"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x46

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    const-string/jumbo v2, "WifiWarningDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SystemProperties.get(persist.sys.setupwizard) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.setupwizard"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiWarningDialog"

    const-string/jumbo v3, "wifiWarningDialogPressOK. dismiss dialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "WifiWarningDialog"

    const-string/jumbo v2, "WifiWarningDialog.onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mIsLightTheme:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mEnableWarningDialogIntent:Landroid/content/Intent;

    const-string/jumbo v2, "dialog_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wlan_enable_warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiWarningDialog"

    const-string/jumbo v2, "Receive request: wlan_enable_warning. "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->setVisible(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
