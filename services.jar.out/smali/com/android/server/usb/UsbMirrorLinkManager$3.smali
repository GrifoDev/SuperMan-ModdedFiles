.class Lcom/android/server/usb/UsbMirrorLinkManager$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get4(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "connected"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "ncm"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v2, v2, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    if-ne v2, v4, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "usb: usb state msg has been received and starting ncm tethering"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap3(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START_NCM_CALLED:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v4, v2, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
