.class Lcom/android/server/power/ShutdownThread$19;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$19;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$19;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$19;->val$endTime:J

    iput p5, p0, Lcom/android/server/power/ShutdownThread$19;->val$timeout:I

    iput-object p6, p0, Lcom/android/server/power/ShutdownThread$19;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@Start shutdown radios"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "sys.deviceOffReq"

    const-string/jumbo v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "sys.radio.shutdown"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "nfc"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v10

    const-string/jumbo v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    const-string/jumbo v14, "bluetooth_manager"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_a

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "Disabling WiFi..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    const/16 v14, 0xe6

    iput v14, v9, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "Waiting for NFC, Wi-Fi and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    const/4 v14, 0x2

    :try_start_0
    invoke-interface {v10, v14}, Landroid/nfc/INfcAdapter;->doNciLogDump(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v10, :cond_c

    :try_start_1
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v11, 0x1

    :goto_2
    if-nez v11, :cond_2

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "Turning off NFC..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_4
    if-eqz v12, :cond_e

    :try_start_3
    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v14

    xor-int/lit8 v13, v14, 0x1

    :goto_5
    if-nez v13, :cond_4

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "Turning off cellular radios..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_6
    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "Waiting for NFC and Radio..."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    :goto_7
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get16()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$timeout:I

    int-to-long v14, v14

    sub-long/2addr v14, v4

    long-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4028000000000000L    # 12.0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$19;->val$timeout:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v14, v14

    invoke-static {v14}, Lcom/android/server/power/ShutdownThread;->-set10(I)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v14

    add-int/lit8 v14, v14, 0x6

    invoke-static {v14}, Lcom/android/server/power/ShutdownThread;->-set10(I)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v14

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/server/power/ShutdownThread;->-wrap13(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_5
    if-nez v13, :cond_6

    :try_start_4
    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v14

    xor-int/lit8 v13, v14, 0x1

    :goto_8
    if-eqz v13, :cond_6

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@Radio turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v11, :cond_7

    :try_start_5
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@NFC turned off."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v13, :cond_10

    if-eqz v11, :cond_10

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@NFC, Radio and modem shutdown complete."

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$done:[Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-boolean v15, v14, v16

    :cond_8
    return-void

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "NullPointerException because of nci"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during nci log writing"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v11, 0x1

    goto/16 :goto_3

    :catch_3
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during bluetooth permanent log dump"

    invoke-static {v14, v15, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_4

    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_5

    :catch_4
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_6

    :catch_5
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during radio shutdown"

    invoke-static {v14, v15, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_f
    const/4 v11, 0x0

    goto :goto_9

    :catch_6
    move-exception v7

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "RemoteException during NFC shutdown"

    invoke-static {v14, v15, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@before sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x1f4

    :try_start_6
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_a
    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "!@after sleep"

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "ShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "!@[Phone off retry:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$19;->val$endTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " radio="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " nfcOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " WiFiOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/ShutdownThread$19;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v14, v16

    goto/16 :goto_7

    :catch_7
    move-exception v6

    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v15, "InterruptedException"

    invoke-static {v14, v15, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_a
.end method
