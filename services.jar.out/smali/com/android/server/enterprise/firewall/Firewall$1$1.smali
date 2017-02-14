.class Lcom/android/server/enterprise/firewall/Firewall$1$1;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/Firewall$1;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-get1(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap2(Lcom/android/server/enterprise/firewall/Firewall;)V

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-set1(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap3(Lcom/android/server/enterprise/firewall/Firewall;)V

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->-set0(Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$1$1;->this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap1(Lcom/android/server/enterprise/firewall/Firewall;)V

    return-void
.end method
