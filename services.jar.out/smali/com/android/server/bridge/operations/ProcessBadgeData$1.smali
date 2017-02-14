.class Lcom/android/server/bridge/operations/ProcessBadgeData$1;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/ProcessBadgeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/ProcessBadgeData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v3, Lcom/android/server/bridge/operations/ProcessBadgeData;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Start of BadgeRunnable "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/bridge/operations/ProcessBadgeData;->-wrap0(Lcom/android/server/bridge/operations/ProcessBadgeData;I)V

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-static {v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->-get1(Lcom/android/server/bridge/operations/ProcessBadgeData;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/operations/ProcessBadgeData;->-wrap1(Lcom/android/server/bridge/operations/ProcessBadgeData;I)V

    goto :goto_0
.end method
