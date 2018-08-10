.class Lcom/android/server/usb/UsbMirrorLinkManager$2;
.super Landroid/os/Handler;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get3(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connect_in_call_popup_msg"

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-set1(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connect_pin_window_popup_msg"

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-set2(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connect_in_voice_assistant_popup_msg"

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-wrap0(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$2;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->-set3(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
