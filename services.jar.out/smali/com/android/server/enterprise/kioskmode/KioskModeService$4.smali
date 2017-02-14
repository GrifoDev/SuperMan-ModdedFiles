.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v5, -0x2710

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string/jumbo v4, "KioskModeService"

    const-string/jumbo v5, "can\'t get user id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-interface {v4, v2, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not installed at userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap9(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-get1(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is disabled by admin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap9(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap2(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap9(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    goto :goto_0
.end method
