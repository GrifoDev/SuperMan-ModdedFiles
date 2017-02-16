.class public Lcom/android/incallui/sns/SecAsyncQueryHelper;
.super Landroid/content/AsyncQueryHandler;
.source "SecAsyncQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 30
    const-string v2, "onQueryComplete"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "listener":Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;
    iget-object v2, p0, Lcom/android/incallui/sns/SecAsyncQueryHelper;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/android/incallui/sns/SecAsyncQueryHelper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;
    check-cast v1, Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    .line 37
    .restart local v1    # "listener":Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    if-eqz p3, :cond_2

    .line 43
    const-string v2, "cursor closed"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 44
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_2
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz p3, :cond_2

    .line 43
    const-string v2, "cursor closed"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 44
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz p3, :cond_3

    .line 43
    const-string v3, "cursor closed"

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 44
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public setQueryListener(Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/sns/SecAsyncQueryHelper;->mListener:Ljava/lang/ref/WeakReference;

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecAsyncQueryHelper;->mListener:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
