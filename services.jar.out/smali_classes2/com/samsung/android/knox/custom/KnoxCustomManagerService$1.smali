.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "multiWindowDynamicEnabled"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "deviceSpeakerEnabledState"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    :goto_1
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get0(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v6, v11}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarMode"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    const/16 v9, 0x3e8

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarMode"

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_3
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarClockState"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarClockState"

    const/16 v9, 0x3e8

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarClockState"

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_4
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarIconsState"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarIconsState"

    const/16 v9, 0x3e8

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarIconsState"

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_5
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedHardKeyIntentState"

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v11, :cond_6

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "hardKeyIntentMode"

    const/16 v9, 0x3e8

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedHardKeyIntentState"

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get2(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/16 v7, 0x1800

    invoke-virtual {v6, v11, v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    :cond_7
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception for multi-window state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set0(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-set0(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto/16 :goto_1

    :catch_4
    move-exception v3

    goto :goto_5

    :catch_5
    move-exception v3

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_3

    :catch_7
    move-exception v3

    goto/16 :goto_2
.end method
