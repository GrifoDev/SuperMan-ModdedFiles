.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1;
.super Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.source "PeriodicAdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field final synthetic val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {v1, p0, v2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .locals 10

    iget-object v9, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;ILandroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncLost(I)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {v1, p0, v2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
