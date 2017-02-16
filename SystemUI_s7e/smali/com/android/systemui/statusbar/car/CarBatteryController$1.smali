.class Lcom/android/systemui/statusbar/car/CarBatteryController$1;
.super Ljava/lang/Object;
.source "CarBatteryController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/CarBatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/CarBatteryController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/car/CarBatteryController;->-set0(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;->this$0:Lcom/android/systemui/statusbar/car/CarBatteryController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->-set0(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method
