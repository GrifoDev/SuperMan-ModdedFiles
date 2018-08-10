.class public final Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
.super Landroid/preference/Preference;
.source "BtTetherDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;,
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;
    }
.end annotation


# instance fields
.field private deviceObject:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mIsProcessingAsync:Z

.field private mIsRequestUpdate:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->deviceObject:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsRequestUpdate:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->deviceObject:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsProcessingAsync:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsRequestUpdate:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsProcessingAsync:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsRequestUpdate:Z

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const v0, 0x7f0d01f1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method


# virtual methods
.method public getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v1, "bt_tether_pref"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "bt_tether_pref"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setDependency(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300ba

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsProcessingAsync:Z

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtTetherDevicePreference"

    const-string/jumbo v2, "RejectedExcutionException :: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mIsRequestUpdate:Z

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    const-string/jumbo v0, "BtTetherDevicePreference"

    const-string/jumbo v1, "onPrepareForRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method
