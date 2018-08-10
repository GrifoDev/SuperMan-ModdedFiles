.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mUsbPrefController:Lcom/android/settings/connecteddevice/UsbModePreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ConnectedDeviceFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2eb

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/NfcPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/nfc/NfcPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    new-instance v5, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v5, p1}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v5}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/UsbBackend;)V

    iput-object v4, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->mUsbPrefController:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->mUsbPrefController:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-virtual {v2, v4}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->mUsbPrefController:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {v2, v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15003b

    return v0
.end method
