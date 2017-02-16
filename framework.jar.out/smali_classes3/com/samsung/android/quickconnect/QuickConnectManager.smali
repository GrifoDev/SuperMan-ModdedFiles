.class public final Lcom/samsung/android/quickconnect/QuickConnectManager;
.super Ljava/lang/Object;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;,
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    }
.end annotation


# static fields
.field public static final DO_QUICK_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickConnectManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/quickconnect/IQuickConnectManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickconnectservice"    # Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    .line 50
    return-void
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string/jumbo v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_0
    const-string/jumbo v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 81
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    if-eq v5, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_2
    move-object v3, v0

    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    move-object v4, v3

    .line 87
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :goto_0
    if-nez v4, :cond_4

    .line 88
    :try_start_1
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_3

    .line 94
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    .line 95
    iget-object v8, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v6

    .line 68
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v5, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RemoteException in registerListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_3

    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_4
    move-object v3, v4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_1

    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_5
    move-object v4, v3

    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/content/Context;)V
    .locals 11
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string/jumbo v6, "QuickConnectManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    .line 126
    :try_start_0
    const-string/jumbo v6, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerListener with context  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 136
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v6

    if-eq v6, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    :cond_2
    move-object v4, v0

    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    move-object v5, v4

    .line 142
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .local v5, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :goto_1
    if-nez v5, :cond_4

    .line 143
    :try_start_2
    new-instance v4, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    .end local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v8, Landroid/content/ComponentName;

    .line 150
    iget-object v9, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 149
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v4, v8}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_3
    monitor-exit v7

    .line 117
    return-void

    .line 127
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "QuickConnectManager"

    const-string/jumbo v7, "registerListener with context, context is null "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v6, "QuickConnectManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RemoteException in registerListener: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7

    throw v6

    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    .restart local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_4

    .end local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_4
    move-object v4, v5

    .end local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .restart local v4    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_2

    .local v4, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_5
    move-object v5, v4

    .restart local v5    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    goto :goto_1
.end method

.method public terminate()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const-string/jumbo v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    .line 176
    .local v0, "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    if-eq v4, p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_2
    move-object v3, v0

    .line 178
    .local v3, "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    const-string/jumbo v4, "QuickConnectManager"

    const-string/jumbo v6, "unregisterListener- found"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "delegate":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    .end local v3    # "quickconnectListener":Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    :cond_3
    if-nez v3, :cond_4

    .line 184
    const-string/jumbo v4, "QuickConnectManager"

    const-string/jumbo v6, "quickconnectListener is null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 185
    return-void

    .line 189
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v4, :cond_5

    .line 190
    const-string/jumbo v4, "QuickConnectManager"

    const-string/jumbo v6, "mQuickConnectService != null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    invoke-interface {v4, v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 192
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 194
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    const/4 v3, 0x0

    :cond_5
    :goto_0
    monitor-exit v5

    .line 165
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "QuickConnectManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException in unregisterListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
