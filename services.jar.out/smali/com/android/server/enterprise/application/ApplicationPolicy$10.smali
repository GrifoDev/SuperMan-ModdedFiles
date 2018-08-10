.class Lcom/android/server/enterprise/application/ApplicationPolicy$10;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo v4, "ApplicationPolicy"

    const-string/jumbo v5, "boot completed - refreshWidgetStatus"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-set1(Lcom/android/server/enterprise/application/ApplicationPolicy;Z)Z

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap9(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$10;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$10$1;->start()V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$10;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap17(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
