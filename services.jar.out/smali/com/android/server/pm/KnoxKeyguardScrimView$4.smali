.class Lcom/android/server/pm/KnoxKeyguardScrimView$4;
.super Ljava/lang/Object;
.source "KnoxKeyguardScrimView.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 7

    const-string/jumbo v4, "KnoxKeyguardScrimView"

    const-string/jumbo v5, "On DesktopMode State Changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->hideScrim()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap0(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap0(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap0(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KnoxKeyguardScrimView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current send personaId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "KnoxKeyguardEventFlag"

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    const-string/jumbo v6, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-get1(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.knox.containeragent"

    const-string/jumbo v6, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v4}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-get1(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "KnoxKeyguardScrimView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start: threw an exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
