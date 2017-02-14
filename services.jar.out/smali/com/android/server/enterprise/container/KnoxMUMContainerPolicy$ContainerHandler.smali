.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_ACTION_PACKAGE_ADDED:I = 0x6

.field public static final MSG_ACTION_PACKAGE_REMOVED:I = 0x7

.field public static final MSG_KLMS_LICENSE_UPDATE:I = 0x2

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1

.field public static final MSG_UPDATE_CONTAINER_CREATION_STATUS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v41

    const/16 v26, 0x0

    move-object/from16 v0, v41

    instance-of v2, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    if-nez v2, :cond_2

    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.start.SETUP_WIZARD"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    instance-of v2, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "Secure folder SetupWizard started"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string/jumbo v2, "creation_params"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createContainer: intent from User:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with requestid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "Knox SetupWizard started"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.sec.knox.knoxsetupwizardclient"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.install.BBC_CONTAINER"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.bbc.bbcagent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x2

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x3

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x4

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "creation status: reqId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", containerId -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", adminUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", creatorUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v35

    array-length v10, v0

    move v9, v2

    :goto_2
    if-ge v9, v10, :cond_6

    aget-object v3, v35, v9

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sending creation update to package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap13(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get12()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap12(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap13(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get12()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap12(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_6
    if-lez v4, :cond_a

    if-ne v7, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    if-lez v13, :cond_a

    if-eq v13, v6, :cond_a

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_9

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Sending creation update to app uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    :goto_3
    move/from16 v0, v42

    if-ge v2, v0, :cond_a

    aget-object v3, v36, v2

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sending creation update to package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap13(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap13(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get12()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "create callback found, updating callback.."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x3ea

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    if-lez v4, :cond_b

    const/16 v38, 0x3e9

    const-string/jumbo v2, "containerid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get12()Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v2

    move/from16 v0, v38

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set2(Lcom/samsung/android/knox/IEnterpriseContainerCallback;)Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    goto/16 :goto_0

    :cond_b
    const/16 v2, -0x3f9

    if-ne v4, v2, :cond_c

    const/16 v38, 0x3f8

    const-string/jumbo v2, "containerid"

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "requestid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_c
    const-string/jumbo v2, "containerid"

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :catch_1
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "MSG_REMOVE_ORPHANED_CONTAINERS received"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v33

    :cond_d
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_e
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/SemPersonaInfo;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v23, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v31

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    if-lez v13, :cond_10

    if-eqz v31, :cond_e

    :cond_10
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Orphan container removing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    iget v10, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x1

    invoke-static {v2, v9, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto :goto_6

    :pswitch_3
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "ContainerHandler.MSG_START_MIGRATION_WIZARD is called ..."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/samsung/android/knox/container/ContainerCreationParams;

    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.start.MIGRATION_WIZARD"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.knox.containeragent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "creation_params"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createContainer: intent from User:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with requestid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "MSG_KLMS_LICENSE_UPDATE received"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v34

    :cond_11
    if-eqz v34, :cond_1a

    const/16 v39, 0x0

    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v40

    check-cast v40, Lcom/android/server/pm/PersonaManagerService;

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v32, v0

    const/16 v27, 0x0

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_12
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/SemPersonaInfo;

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-nez v2, :cond_12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v18

    :cond_13
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->getPreviousState()Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v37

    :cond_14
    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_17

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persona id matched!! - container_id - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    iget v10, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x5a

    move/from16 v0, v16

    if-ne v0, v2, :cond_16

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "currentState for persona- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    iget v10, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " previousState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Landroid/content/pm/PersonaNewEvent;->LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Lcom/samsung/android/knox/SemPersonaState;

    :cond_15
    if-eqz v40, :cond_12

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Lcom/samsung/android/knox/SemPersonaInfo;)Z

    move-result v39

    if-eqz v39, :cond_12

    add-int/lit8 v28, v27, 0x1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    aput v2, v32, v27

    move/from16 v27, v28

    goto/16 :goto_7

    :cond_16
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "setting persona state to KLMS_LOCKED"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    move-object/from16 v0, v24

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Landroid/content/pm/PersonaNewEvent;->LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Lcom/samsung/android/knox/SemPersonaState;

    goto/16 :goto_7

    :cond_17
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persona id unmatched!! - container_id - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    iget v10, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_18
    if-lez v27, :cond_0

    const/16 v22, 0x0

    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    aget v9, v32, v22

    invoke-interface {v2, v9}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Starting contaienr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v32, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in background after reboot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_19
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    :catch_3
    move-exception v21

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to start User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v32, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in Background:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "persona list is null"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9, v2, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap9(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9, v2, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap10(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
