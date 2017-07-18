.class Lcom/android/server/pm/PersonaManagerService$5;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->installApplications(ILjava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$packages:Ljava/util/List;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$5;->val$packages:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/PersonaManagerService$5;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$5;->val$packages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService$5;->val$personaId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
