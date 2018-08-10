.class Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x418

    const/16 v7, 0x404

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string/jumbo v6, "AudioBalanceSeekbarPreference"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;Z)Z

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-wrap0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V

    return-void

    :cond_3
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v8, :cond_4

    if-ne v5, v7, :cond_2

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;Z)Z

    goto :goto_0
.end method
