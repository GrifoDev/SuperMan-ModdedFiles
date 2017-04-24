.class Lcom/android/server/am/ActivityStackSupervisor$1$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityStackSupervisor$1;

.field final synthetic val$pms:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$secureFolderId:I

.field final synthetic val$top:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$1;ILcom/android/server/am/ActivityRecord;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->this$1:Lcom/android/server/am/ActivityStackSupervisor$1;

    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$secureFolderId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$top:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$pms:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->this$1:Lcom/android/server/am/ActivityStackSupervisor$1;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$secureFolderId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$top:Lcom/android/server/am/ActivityRecord;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;ILcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$pms:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$1$1;->val$secureFolderId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    const-string/jumbo v0, "SecureFolder"

    const-string/jumbo v1, "Secure folder will be locked!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
