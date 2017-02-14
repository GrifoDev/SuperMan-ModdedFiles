.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v9, v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "userInfo list returned is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v9, 0x10e

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BootCompleteReceiver: getting extended extensions for userId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "UID is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "Extensions"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget v10, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v2, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap9(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-static {v9, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap6(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    :goto_1
    const/16 v9, 0x118

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "AUDIT"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget v10, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v0, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap8(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget v10, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-wrap3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DLP : Extensions set at boot time in kernel for user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method
