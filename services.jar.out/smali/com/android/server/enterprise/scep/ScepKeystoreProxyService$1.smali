.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    iput p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-static {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->-get0(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1
    throw v5
.end method
