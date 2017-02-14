.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->containerId:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 2

    const-string/jumbo v0, "ApplicationPolicy"

    const-string/jumbo v1, "PersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    const-string/jumbo v0, "ApplicationPolicy"

    const-string/jumbo v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 3

    const-string/jumbo v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Persona.onStateChange: oldstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get2(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;Lcom/samsung/android/knox/SemPersonaState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
