.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;->registerPersonaStateObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 0

    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0

    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0

    return-void
.end method

.method public onResetPersona(I)V
    .locals 0

    return-void
.end method

.method public onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 20

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_9

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_9

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In onStateChange: old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: authInfoMgr not null and migration needed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v16

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap7(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: install package in container is failed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: Package install success"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/user/0/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/user/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v5, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    const/4 v3, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In onStateChange: EnterprisePartitionManager#copy failed for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v15, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get0()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {v15, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-static {v3, v5, v15}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap9(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    if-eqz v3, :cond_5

    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap4(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    move/from16 v0, p1

    invoke-direct {v6, v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v7, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/os/Bundle;

    move-result-object v9

    const/4 v8, 0x0

    move/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendorInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-static {v3, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap8(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: Failed to clear authenticator app data"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: Restoring authenticator config"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v0, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get1()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap6(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap4(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;

    move-result-object v19

    if-eqz v12, :cond_7

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get3(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get4()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get4()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-set0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    return-void

    :catch_0
    move-exception v13

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In onStateChange: RemoteException"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
