.class Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/UsbModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbConnectionBroadcastReceiver"
.end annotation


# instance fields
.field private mConnected:Z

.field private mListeningToUsbEvents:Z

.field final synthetic this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/connecteddevice/UsbModePreferenceController;Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mConnected:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mConnected:Z

    iget-object v1, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->-get1(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->-wrap0(Lcom/android/settings/connecteddevice/UsbModePreferenceController;Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->-get0(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "connected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mConnected:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/settings/connecteddevice/UsbModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/UsbModePreferenceController;->-get0(Lcom/android/settings/connecteddevice/UsbModePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/UsbModePreferenceController$UsbConnectionBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_0
    return-void
.end method
