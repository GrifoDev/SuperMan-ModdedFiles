.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4$1;
.super Ljava/lang/Thread;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4$1;->this$1:Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x2ee0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string/jumbo v1, "UsbModeChooserActivity"

    const-string/jumbo v2, "sendEmptyMessage : HANDLE_MESSAGE_PORT_ROLE_SWAP_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4$1;->this$1:Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UsbModeChooserActivity"

    const-string/jumbo v2, "Interrupted thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
