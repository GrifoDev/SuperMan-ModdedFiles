.class Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile$1;->onBluetoothDevicesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get6(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$1;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
