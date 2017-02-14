.class public Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
    }
.end annotation


# static fields
.field private static mQuickPanelOn:Z


# instance fields
.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mContext:Landroid/content/Context;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mScanDialogHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "Received null intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v8, "BluetoothStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string/jumbo v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "android.bluetooth.adapter.extra.STATE"

    const/high16 v9, -0x80000000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "BluetoothStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AdapterStateChanged :: state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v8, :cond_1

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "Error: BluetoothAdapter not supported by system"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    sget-boolean v8, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    sput-boolean v11, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "QuickPanelBluetoothON :: com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v12, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "For launch gearmanager from non-system app :: com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "For launch gearmanager from non-system app :: sendBroadcast()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "MAC"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "DATA"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v8, :cond_6

    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "Error: BluetoothAdapter not supported by system"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v8, :cond_8

    :cond_7
    const-string/jumbo v8, "BluetoothStatusReceiver"

    const-string/jumbo v9, "Error: mCachedDeviceManager or mLocalBluetoothAdapter not supported by system"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v8, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v10, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    invoke-virtual {v2, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0
.end method
