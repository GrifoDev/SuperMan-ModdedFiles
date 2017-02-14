.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string/jumbo v2, "power"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get6()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v2, 0x1

    invoke-static {v1, v2, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-wrap9(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto :goto_0
.end method
