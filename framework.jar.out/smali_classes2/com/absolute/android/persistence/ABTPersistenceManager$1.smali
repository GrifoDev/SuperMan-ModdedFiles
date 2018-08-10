.class Lcom/absolute/android/persistence/ABTPersistenceManager$1;
.super Ljava/lang/Object;
.source "ABTPersistenceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/ABTPersistenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;

    move-result-object v2

    new-instance v3, Lcom/absolute/android/persistence/ABTPersistenceManager;

    invoke-direct {v3, v2}, Lcom/absolute/android/persistence/ABTPersistenceManager;-><init>(Lcom/absolute/android/persistence/IABTPersistence;)V

    invoke-static {v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$102(Lcom/absolute/android/persistence/ABTPersistenceManager;)Lcom/absolute/android/persistence/ABTPersistenceManager;

    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$100()Lcom/absolute/android/persistence/ABTPersistenceManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$200(Lcom/absolute/android/persistence/ABTPersistenceManager;Lcom/absolute/android/persistence/IABTPersistence;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
