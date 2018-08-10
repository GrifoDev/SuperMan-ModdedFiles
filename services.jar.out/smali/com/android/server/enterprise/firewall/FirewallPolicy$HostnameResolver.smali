.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    aget-object v1, p1, v2

    invoke-static {v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->-get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    return-object v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v3, "HostnameResolver.doInBackground() - Couldn\'t create user context"

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return v0
.end method
