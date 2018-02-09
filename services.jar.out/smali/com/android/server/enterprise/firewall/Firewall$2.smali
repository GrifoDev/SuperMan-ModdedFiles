.class Lcom/android/server/enterprise/firewall/Firewall$2;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get3(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get1(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get4(Lcom/android/server/enterprise/firewall/Firewall;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap2(Lcom/android/server/enterprise/firewall/Firewall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0xfa

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "createIptablesChains(): Thread was Interrupted."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains()Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;->-set0(Lcom/android/server/enterprise/firewall/Firewall;Z)Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "IP Tables initialization was done"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap1(Lcom/android/server/enterprise/firewall/Firewall;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-void
.end method
