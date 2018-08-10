.class Lcom/android/server/usb/UsbNotificationHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "locale changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->-get3(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->-get1(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Current Locale is same as received Locale"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Current Locale is different from received Locale"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v3, v1}, Lcom/android/server/usb/UsbNotificationHandler;->-set0(Lcom/android/server/usb/UsbNotificationHandler;Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbNotificationHandler;->reflashNotificaton()V

    goto :goto_0
.end method
