.class Lcom/android/server/pm/PersonaManagerService$11;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$info:Lcom/samsung/android/knox/SemPersonaInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 3

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, " abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public userStopped(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, " user stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    iput-boolean v4, v2, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    iput-boolean v4, v2, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$11;->val$info:Lcom/samsung/android/knox/SemPersonaInfo;

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$11;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v3, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profile Exception in startUserInBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
