.class Lcom/android/settings/bluetooth/BluetoothSettings$8;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->ShowChinaPermissionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    const-string/jumbo v1, "bluetooth_security_on_check"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    const-string/jumbo v1, "bluetooth_security_on_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
