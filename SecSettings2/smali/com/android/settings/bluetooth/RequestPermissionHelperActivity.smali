.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "RequestPermissionHelperActivity"

    const-string/jumbo v3, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    return v5

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    const-string/jumbo v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    return v5

    :cond_2
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return v4
.end method


# virtual methods
.method createDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b107e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    const v1, 0x7f0b101c

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0b101d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_1

    const v1, 0x7f0b1085

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b1084

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    const/16 v2, 0x1e

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    :cond_1
    :goto_0
    const/16 v4, 0xb

    if-eq v0, v4, :cond_2

    const/16 v4, 0xc

    if-ne v0, v4, :cond_3

    :cond_2
    const/16 v3, -0x3e8

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->dismiss()V

    :cond_1
    return-void
.end method
