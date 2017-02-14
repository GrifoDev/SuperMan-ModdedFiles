.class Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;
.super Ljava/lang/Object;
.source "UsbChargingNotiDialogVzw.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->-get0(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
