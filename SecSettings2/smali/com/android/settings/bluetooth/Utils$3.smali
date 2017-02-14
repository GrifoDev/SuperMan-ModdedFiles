.class final Lcom/android/settings/bluetooth/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-static {}, Lcom/android/settings/bluetooth/Utils;->-get0()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V

    invoke-static {}, Lcom/android/settings/bluetooth/Utils;->-get1()Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->setSemErrorListener(Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;)V

    return-void
.end method
