.class Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0x160

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const-string/jumbo v5, "com.samsung.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v5, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "KeyguardAutoLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mWearableDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , isEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set10(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v6, "extra.AUTO_LOCK_SERVICE_VALID"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set7(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v6, "extra.AUTO_LOCK_SERVICE_IN_CRITERIA"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set1(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v6, "extra.AUTO_LOCK_SERVICE_OUT_CRITERIA"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v6, "extra.AUTO_LOCK_SERVICE_IN_MARGIN"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v6, "extra.AUTO_LOCK_SERVICE_OUT_MARGIN"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set9(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    :goto_0
    const-string/jumbo v5, "KeyguardAutoLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AUTO_LOCK_SERVICE_VALID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mCriteria_IN_RSSI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mCriteria_OUT_RSSI ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mOffset_IN_RSSI ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get13(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mOffset_OUT_RSSI ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get14(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set1(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set9(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, "KeyguardAutoLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_AUTO_LOCK_SERVICE : Device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , mWearableDevice ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set10(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "KeyguardAutoLock"

    const-string/jumbo v6, "ACTION_AUTO_LOCK_SERVICE : mWearableDevice =/= device !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    const-string/jumbo v5, "KeyguardAutoLock"

    const-string/jumbo v6, "ACTION_OUT_OF_RANGE_ALERT or SEM_ACTION_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_8
    const-string/jumbo v5, "KeyguardAutoLock"

    const-string/jumbo v6, "ACTION_IN_OF_RANGE_ALERT or SEM_ACTION_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v10, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "com.samsung.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x161

    invoke-virtual {v5, v6, v3, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
