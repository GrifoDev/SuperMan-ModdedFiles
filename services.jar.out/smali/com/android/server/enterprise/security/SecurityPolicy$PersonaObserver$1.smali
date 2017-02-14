.class Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

.field final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$previousState:Lcom/samsung/android/knox/SemPersonaState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$previousState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$previousState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PersonaObserver.onStateChange() : container has activated, containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PersonaObserver.onStateChange() : container has locked, containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->stopBannerService(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityPolicy"

    const-string/jumbo v2, "PersonaObserver.onStateChange() occurs exception."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
