.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

.field final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " old state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get8(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap8(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap8(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    array-length v8, v13

    move v6, v14

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v13, v6

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap16(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v6, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap16(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    array-length v2, v13

    move v0, v14

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v1, v13, v0

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v6, v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static {v6, v1, v7, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5$1;->val$personaId:I

    invoke-static {v0, v7, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap15(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    :cond_4
    return-void
.end method
