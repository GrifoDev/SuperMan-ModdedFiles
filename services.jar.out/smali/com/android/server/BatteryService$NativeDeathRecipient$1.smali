.class Lcom/android/server/BatteryService$NativeDeathRecipient$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$NativeDeathRecipient;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$NativeDeathRecipient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "batteryproperties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set1(Lcom/android/server/BatteryService;Landroid/os/IBatteryPropertiesRegistrar;)Landroid/os/IBatteryPropertiesRegistrar;

    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    new-instance v4, Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, v5, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/BatteryService$NativeDeathRecipient;-><init>(Lcom/android/server/BatteryService;Landroid/os/IBinder;)V

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-set8(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$NativeDeathRecipient;)Lcom/android/server/BatteryService$NativeDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v2

    new-instance v4, Lcom/android/server/BatteryService$BatteryListener;

    iget-object v5, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, v5, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V

    invoke-interface {v2, v4}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "BatteryPropertiesRegistrar : Faild to register"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Faild to get batteryproperties service, try again."

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
