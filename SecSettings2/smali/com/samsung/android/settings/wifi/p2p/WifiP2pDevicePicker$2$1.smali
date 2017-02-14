.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;->this$1:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;->this$1:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-set1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method
