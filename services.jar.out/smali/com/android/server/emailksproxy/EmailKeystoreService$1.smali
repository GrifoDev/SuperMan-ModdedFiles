.class Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    iput p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-static {v6}, Lcom/android/server/emailksproxy/EmailKeystoreService;->-get0(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-static {v6, v7}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    const-string/jumbo v6, "EmailKeystoreService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "grantAccessForAKS call setGrant : uidscep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " alias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iget-object v7, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_0

    :catch_3
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_1
    throw v6
.end method
