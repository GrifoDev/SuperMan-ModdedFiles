.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

.field final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " old state: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v13

    :cond_0
    if-nez v13, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to get persona info for user "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-boolean v0, v13, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    move/from16 v16, v0

    iget-boolean v14, v13, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap5(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v15

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isUserManaged "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " and user-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " and isKioskEnabled-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " and isSuperLocked-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap6(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v7

    move-object/from16 v0, v18

    invoke-static {v1, v0, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap16(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/samsung/android/knox/container/ContainerCreationParams;II)V

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const-string/jumbo v7, "com.sec.knox.containeragent.klms.created.b2c"

    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap8(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap8(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v6

    if-eq v6, v5, :cond_9

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, v19

    array-length v8, v0

    move v7, v1

    :goto_1
    if-ge v7, v8, :cond_9

    aget-object v2, v19, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onStateChange null params when switching from init to active. Removing container....."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const/4 v7, 0x1

    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const-string/jumbo v7, "com.sec.knox.containeragent.klms.created.b2b"

    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const-string/jumbo v7, "com.sec.knox.containeragent.klms.removed.b2c"

    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const-string/jumbo v7, "com.sec.knox.containeragent.klms.removed.b2b"

    invoke-static {v1, v3, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v7, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const/4 v8, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap14(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_b

    const/4 v1, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_c

    aget-object v2, v19, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v7, v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static {v7, v2, v8, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    const/4 v7, 0x0

    invoke-static {v1, v7, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    :cond_c
    return-void
.end method
