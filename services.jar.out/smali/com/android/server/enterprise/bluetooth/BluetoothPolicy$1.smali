.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-get3(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothPolicyService"

    const-string/jumbo v4, "***** Restarting Bluetooth *****"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v3, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-set0(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-wrap0(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-wrap1(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    goto :goto_0
.end method
