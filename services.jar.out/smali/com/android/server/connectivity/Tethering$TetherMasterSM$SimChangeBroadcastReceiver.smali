.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    const-string/jumbo v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "simchange mGenerationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", current generationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eq v11, v12, :cond_0

    return-void

    :cond_0
    const-string/jumbo v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "got Sim changed to state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mSimNotLoadedSeen="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-nez v11, :cond_1

    const-string/jumbo v11, "LOADED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_1
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "LOADED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    :try_start_0
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1040035

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get24(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-static {v13, v11}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12

    throw v11
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v11, "Tethering"

    const-string/jumbo v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x2

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_4
    monitor-exit v12

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "extraAddTetherType"

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "extraRunProvision"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get1()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_8
    const-string/jumbo v11, "Tethering"

    const-string/jumbo v12, "re-evaluate provisioning"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string/jumbo v11, "Tethering"

    const-string/jumbo v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method
