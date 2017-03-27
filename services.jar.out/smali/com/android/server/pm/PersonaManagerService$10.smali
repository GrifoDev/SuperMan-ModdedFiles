.class Lcom/android/server/pm/PersonaManagerService$10;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$onReboot:Z

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$onReboot:Z

    iput p3, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$personaId:I

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 1

    const-string/jumbo v0, "userStopAborted"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    return-void
.end method

.method public userStopped(I)V
    .locals 3

    const-string/jumbo v0, "userStopped"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " User Stopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$onReboot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/pm/PersonaManagerService$10;->val$personaId:I

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap57(Lcom/android/server/pm/PersonaManagerService;I)V

    return-void
.end method
