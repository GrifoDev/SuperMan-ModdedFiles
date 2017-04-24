.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSetupActivity$1;,
        Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;
    }
.end annotation


# instance fields
.field private mAutoFinishOnConnection:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsNetworkRequired:Z

.field private mIsWifiRequired:Z

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSelectedNetwork:Z

.field private mWifiConnected:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/wifi/WifiSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_1
    return v2
.end method

.method private isWifiConnected()Z
    .locals 3

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshConnectionState()V
    .locals 4

    const v1, 0x7f0b10df

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSetupActivity"

    const-string/jumbo v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish(I)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    :cond_0
    const v0, 0x7f0b016e

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0
.end method

.method private setNextButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setNextButtonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 3

    const-string/jumbo v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishing, resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->finish()V

    return-void
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method networkSelected()V
    .locals 2

    const-string/jumbo v0, "WifiSetupActivity"

    const-string/jumbo v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "wifi_auto_finish_on_connect"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    const-string/jumbo v2, "is_network_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    const-string/jumbo v2, "is_wifi_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    const-string/jumbo v2, "wifi_require_user_network_selection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNavigateBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->onBackPressed()V

    return-void
.end method

.method public onNavigateNext()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->finish(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b129a

    :goto_1
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b129b

    goto :goto_1
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {p1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
