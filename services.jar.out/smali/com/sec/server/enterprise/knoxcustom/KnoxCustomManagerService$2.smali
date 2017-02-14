.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get5()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get6()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get8()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get7()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-wrap1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-set1(Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get8()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get9()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get7()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-wrap2(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v1, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-wrap4(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get3(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-set0(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Z)Z

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-wrap3(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    goto :goto_1
.end method
