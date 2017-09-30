.class Lcom/sec/android/app/sysscope/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b()V

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/l;->a()Lcom/sec/android/app/sysscope/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/l;->b()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v4}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nOS : Android "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nMODEL : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nSERIAL : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nFINGERPRINT : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nResult :\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v4

    invoke-static {v0, v3, v2, v4}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/String;II)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    const-string v3, "SysScope scanning finished"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "kernelStatus"

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Result"

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v0, "SysScopeService"

    const-string v2, "SysScopeService : send status Intent"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "vzw.os.rooted"

    :try_start_1
    const-string v0, "false"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v3

    if-ne v3, v6, :cond_2

    const-string v3, "root_status"

    const-string v4, "FALSE"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SysScopeService"

    const-string v4, "FALSE"

    invoke-static {v3, v4}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-virtual {v3}, Lcom/sec/android/app/sysscope/service/SysScopeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sysscope/service/SysScopeService;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SysScopeService"

    const-string v3, "checked"

    invoke-static {v0, v3}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.verizon.security.ROOT_STATUS"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v0

    if-ne v0, v6, :cond_3

    const-string v0, "status"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v0, "SysScopeService"

    const-string v1, "SysScopeService : send VZW status Intent"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "SysScopeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v3, "root_status"

    const-string v4, "TRUE"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SysScopeService"

    const-string v4, "TRUE"

    invoke-static {v3, v4}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v0, "true"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    const-string v0, "status"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "SysScopeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method
