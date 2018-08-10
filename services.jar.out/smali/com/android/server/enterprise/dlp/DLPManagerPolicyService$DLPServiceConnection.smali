.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
.super Ljava/lang/Object;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DLPServiceConnection"
.end annotation


# instance fields
.field private mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

.field private mUserInfoId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    iput p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    return-void
.end method


# virtual methods
.method public getDLPService()Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/knox/dlp/IFrameworkConnector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get1()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get1()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected DLPServiceConnection: Service connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DLP Interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DLP ComponentName className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get1()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get1()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: DLPServiceConnection Removing the Entry from MAPs for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
