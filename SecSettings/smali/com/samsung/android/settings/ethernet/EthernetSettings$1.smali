.class Lcom/samsung/android/settings/ethernet/EthernetSettings$1;
.super Landroid/database/ContentObserver;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->-wrap0(Lcom/samsung/android/settings/ethernet/EthernetSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "eth_device_conn"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "EthernetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->-wrap1(Lcom/samsung/android/settings/ethernet/EthernetSettings;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->-set0(Lcom/samsung/android/settings/ethernet/EthernetSettings;Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/ethernet/EthernetSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->finish()V

    :cond_0
    return-void
.end method
