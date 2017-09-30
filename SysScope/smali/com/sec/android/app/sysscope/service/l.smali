.class final Lcom/sec/android/app/sysscope/service/l;
.super Lcom/sec/android/app/sysscope/service/f;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;Lcom/sec/android/app/sysscope/service/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/service/l;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->d(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service busy, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->d(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/sec/android/app/sysscope/engine/j;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sysscope/engine/j;->a(I)V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->h(Lcom/sec/android/app/sysscope/service/SysScopeService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;->a(Z)V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPeriodicScan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_0
.end method

.method public a(ILcom/sec/android/app/sysscope/service/b;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.sysscope"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "SysScopeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v3, "SysScope Permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->d(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SysScopeService"

    const-string v1, "service busy"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v1, "SysScopeService"

    const-string v2, "Failed to get SysScope Version."

    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sysscope/service/l;->a(Lcom/sec/android/app/sysscope/service/b;)V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    const-string v1, "SysScopeService"

    const-string v2, "Send listener"

    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Lcom/sec/android/app/sysscope/service/b;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sysscope/engine/i;->a(Z)V

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "versionName"

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->f(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->g(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(Lcom/sec/android/app/sysscope/service/b;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/sec/android/app/sysscope/engine/j;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/j;->a()I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_0
.end method

.method public d()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/l;->a()Lcom/sec/android/app/sysscope/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/l;->b()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/i;->a()Z

    move-result v0

    return v0
.end method
