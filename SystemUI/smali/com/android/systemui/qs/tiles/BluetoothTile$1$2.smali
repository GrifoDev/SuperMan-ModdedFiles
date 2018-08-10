.class Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile$1;->onBluetoothScanStateChanged(Z)V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get6(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothScanStateChanged update = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$1$2;->this$1:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get5(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
