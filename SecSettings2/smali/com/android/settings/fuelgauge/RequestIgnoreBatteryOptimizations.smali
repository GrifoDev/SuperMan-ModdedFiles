.class public Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestIgnoreBatteryOptimizations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->setResult(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RequestIgnoreBatteryOptimizations"

    const-string/jumbo v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "deviceidle"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v5, "RequestIgnoreBatteryOptimizations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string/jumbo v5, "RequestIgnoreBatteryOptimizations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No data supplied for IGNORE_BATTERY_OPTIMIZATION_SETTINGS in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_1
    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "RequestIgnoreBatteryOptimizations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not should prompt, already ignoring optimizations: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "RequestIgnoreBatteryOptimizations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not hold permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "RequestIgnoreBatteryOptimizations"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested package doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->finish()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f0b1a48

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0b1a49

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v5, 0x7f0b101c

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v5, 0x7f0b101d

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RequestIgnoreBatteryOptimizations;->setupAlert()V

    return-void
.end method
