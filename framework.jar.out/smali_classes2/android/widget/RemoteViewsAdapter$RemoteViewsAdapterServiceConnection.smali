.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method static synthetic -set0(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    return p1
.end method

.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    const-string/jumbo v5, "remoteAdapterCocktail"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v5, p2, p3, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v5, "RemoteViewsAdapter"

    const-string/jumbo v6, "bind: adapter was null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v5, "RVAServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bind(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_4
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v5, p2, p3, v6}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "RemoteViewsAdapter"

    const-string/jumbo v6, "bind: adapter was null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get7(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "remoteAdapterCocktail"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    :goto_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v5, "RemoteViewsAdapter"

    const-string/jumbo v6, "unbind: adapter was null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "RVAServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unbind(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_3
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2, p3}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "RemoteViewsAdapter"

    const-string/jumbo v6, "unbind: adapter was null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
