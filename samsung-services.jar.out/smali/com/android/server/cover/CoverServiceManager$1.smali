.class Lcom/android/server/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v9, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive : action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pkgName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v2, :cond_4

    if-eqz v5, :cond_7

    const-string/jumbo v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9, v6}, Lcom/android/server/cover/CoverServiceManager;->-wrap4(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v7

    :goto_0
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9}, Lcom/android/server/cover/CoverServiceManager;->-get3(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9}, Lcom/android/server/cover/CoverServiceManager;->-get5(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Lcom/android/server/cover/CoverServiceManager;->-wrap0(Lcom/android/server/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap5(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap3(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap10(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v10

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_6
    return-void

    :cond_7
    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager$1;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v9, v6}, Lcom/android/server/cover/CoverServiceManager;->-wrap1(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method
