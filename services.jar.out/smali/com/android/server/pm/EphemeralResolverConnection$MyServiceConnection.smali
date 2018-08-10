.class final Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/EphemeralResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/EphemeralResolverConnection;->-get1()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Connected to instant app resolver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/EphemeralResolverConnection;->-set1(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get2(Lcom/android/server/pm/EphemeralResolverConnection;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/EphemeralResolverConnection;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Disconnected from instant app resolver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
