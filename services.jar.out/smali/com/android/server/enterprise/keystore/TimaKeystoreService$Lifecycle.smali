.class public final Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string/jumbo v0, "TimaKeystoreService"

    const-string/jumbo v1, "TimeKeystoreService DKS LifeCycle creator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap8(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "TimaKeystoreService"

    const-string/jumbo v1, "TimeKeystoreService DKS LifeCycle onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "knox_timakeystore_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_timakeystore_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
