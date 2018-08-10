.class Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"

# interfaces
.implements Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbProfileGroupSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenInApp(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-wrap0(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-wrap2(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
