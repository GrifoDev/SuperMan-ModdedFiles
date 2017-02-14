.class Lcom/android/server/pm/KnoxTimeoutHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "invalid bundle!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "invalid action!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "personaId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " time out  for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "container userId does not exist!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "INTENT_ACTION_LOCK_TIMEOUT is received but container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is removed, no locking needed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get0(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "User is inside container and its trust is granted. By pass keyguard and reset security timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4, v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap6(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    return-void

    :cond_4
    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "lock it up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get0(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v4

    if-ne v3, v4, :cond_5

    const-string/jumbo v4, "KnoxTimeoutHandler"

    const-string/jumbo v5, "keyguard show"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler$1;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v4}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    :cond_5
    return-void
.end method
