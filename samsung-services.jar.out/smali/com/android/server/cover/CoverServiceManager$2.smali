.class Lcom/android/server/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iput p2, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected : name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get5(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap5(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap6(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bound:cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverServiceManager;->-wrap12(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get2(Lcom/android/server/cover/CoverServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverServiceManager;->-wrap7(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/cover/CoverServiceManager;->-set0(Lcom/android/server/cover/CoverServiceManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get3(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected : name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/cover/CoverServiceManager;->-get5(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/cover/CoverServiceManager;->-wrap5(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->-wrap11(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbound:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap12(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get0()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/cover/CoverServiceManager;->-wrap6(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v3

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->disconnect()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected : retry to connect cover service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$2;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverServiceManager;->-wrap9(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/cover/CoverServiceManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected : give up to connect cover service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
