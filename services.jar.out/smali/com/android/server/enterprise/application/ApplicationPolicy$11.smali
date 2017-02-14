.class Lcom/android/server/enterprise/application/ApplicationPolicy$11;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerECContainerRemovalListener()V
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

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "ApplicationPolicy"

    const-string/jumbo v6, "registerECContainerRemovalListener"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "personaid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "owneruid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v5, "isEC"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isEC ownerUid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-ne v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v6, "com.sec.knox.knoxecswitcher/com.sec.knox.knoxecswitcher.SwitchECActivity"

    invoke-static {v5, v6, v9, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap1(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v6, "com.sec.knox.knoxecswitcher"

    invoke-static {v5, v6, v9, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap0(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;[BI)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$11;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v5, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap10(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    goto :goto_0
.end method
