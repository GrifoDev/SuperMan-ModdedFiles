.class Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbChargingNotiDialogVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$1;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->-get0(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    return-void
.end method
