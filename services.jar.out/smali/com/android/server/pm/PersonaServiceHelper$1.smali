.class final Lcom/android/server/pm/PersonaServiceHelper$1;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceHelper;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Lcom/android/server/pm/Settings;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$settings:Lcom/android/server/pm/Settings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageHandler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iput p2, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    iput-object p4, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$settings:Lcom/android/server/pm/Settings;

    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iput-object p8, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v6, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const-string/jumbo v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v2, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    const/4 v2, -0x1

    :cond_0
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "PersonaServiceHelper"

    const-string/jumbo v7, "This app uninstallation is not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    if-ltz v3, :cond_2

    move v4, v5

    :cond_2
    iget v7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    invoke-static {v6, v4, v7}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v4, :cond_3

    :try_start_0
    const-string/jumbo v4, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "return delete result to caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returnCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iget v9, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->deletePackageXForKnox(Ljava/lang/String;II)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "jp.co.mmbi.app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$settings:Lcom/android/server/pm/Settings;

    const-string/jumbo v7, "android.uid.mmbi"

    const/16 v8, 0x2392

    invoke-virtual {v6, v7, v8, v5, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PersonaServiceHelper"

    const-string/jumbo v6, "Observer no longer exists."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
