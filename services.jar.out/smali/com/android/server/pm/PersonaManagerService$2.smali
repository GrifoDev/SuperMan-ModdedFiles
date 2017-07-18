.class Lcom/android/server/pm/PersonaManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v14, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "android.intent.extra.user_handle"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v14, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "sys.knox.store"

    const-string/jumbo v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "onReceive USER_SWITCHED it is not knox container"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onReceive USER_SWITCHED in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v14

    if-nez v14, :cond_1

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v10

    if-eqz v10, :cond_1

    array-length v14, v10

    if-lez v14, :cond_1

    const/4 v4, 0x0

    :goto_1
    array-length v14, v10

    if-ge v4, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v15, v10, v4

    invoke-static {v14, v15}, Lcom/android/server/pm/PersonaManagerService;->-wrap37(Lcom/android/server/pm/PersonaManagerService;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v14, "sys.knox.store"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "onReceive USER_SWITCHED it is knox container"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    invoke-static {v14, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap52(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v14, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "android.intent.extra.user_handle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onReceive USER_ADD userId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x64

    if-lt v12, v14, :cond_4

    const/16 v14, 0xc8

    if-le v12, v14, :cond_2

    :cond_4
    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "userId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is not Knox, so disable Knox packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.knox.containeragent2"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.knox.packageverifier"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.knox.shortcutsms"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.samsung.android.bbc.fileprovider"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.samsung.knox.knoxtrustagent"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.knox.bluetooth"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v14

    const-string/jumbo v15, "com.sec.knox.knoxlauncher"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "not exist card type launcher"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v14, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "personaid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput v9, v6, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "ACTION_SCREEN_ON onReceive"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    const/16 v15, 0x13

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v14, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, "PersonaManagerService"

    const-string/jumbo v15, "ACTION_BIO_ADDED onReceive"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v7, :cond_9

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/samsung/android/knox/SemPersonaInfo;->setIsIrisReset(Z)V

    goto :goto_3

    :cond_a
    const-string/jumbo v14, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string/jumbo v14, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string/jumbo v14, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string/jumbo v14, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v15, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "PID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/samsung/android/knox/SemPersonaInfo;->setIsFingerReset(Z)V

    new-instance v13, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "knox_finger_print_plus"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_c

    iget v14, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v15, v7, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/PersonaManagerService;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v14, "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string/jumbo v14, "personaid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "on Receive : SDP_TIMEOUT personaId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v14, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v15, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v14, v15, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v14

    if-eqz v14, :cond_e

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "inside onReceive() state is ACTIVE "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v16, v0

    iget v0, v5, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v5, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput v9, v6, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v14, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-string/jumbo v14, "personaid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v6, Landroid/os/Message;->arg1:I

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "on Receive : LOCK_TIMEOUT personaId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v6, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v14, "com.sec.knox.container.INTENT_ACTION_RESET_PWD_TIMEOUT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-string/jumbo v14, "personaid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v6, Landroid/os/Message;->arg1:I

    const-string/jumbo v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "on Receive : RESET_PWD_TIMEOUT  personaId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v6, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v14}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
