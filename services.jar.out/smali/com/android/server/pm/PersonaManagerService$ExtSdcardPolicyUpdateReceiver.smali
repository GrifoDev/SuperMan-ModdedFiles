.class public Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtSdcardPolicyUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x1

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "source"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "containerId"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver source- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and personaId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v6, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaManagerService.ExtSdcardPolicyUpdateReceiver pi.canUseExtSdcard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap42(Lcom/android/server/pm/PersonaManagerService;I)V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne v5, v9, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v0, :cond_4

    iget-boolean v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaManagerService.ExtSdcardPolicyUpdateReceiver pInfo.canUseExtSdcard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-wrap42(Lcom/android/server/pm/PersonaManagerService;I)V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
