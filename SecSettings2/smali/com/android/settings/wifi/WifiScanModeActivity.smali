.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroid/app/Activity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private mApp:Ljava/lang/String;

.field private mDialog:Landroid/app/DialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method

.method private doPositiveClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v4, "app"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->dismissDialog()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "app"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
