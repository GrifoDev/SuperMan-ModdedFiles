.class Landroid/media/MediaInserter$BulkInsertHandler;
.super Landroid/os/Handler;
.source "MediaInserter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BulkInsertHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaInserter;


# direct methods
.method constructor <init>(Landroid/media/MediaInserter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "tableUri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v3}, Landroid/media/MediaInserter;->-get0(Landroid/media/MediaInserter;)Landroid/content/ContentProviderClient;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v3}, Landroid/media/MediaInserter;->-get1(Landroid/media/MediaInserter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaInserter$BulkInsertHandler;->this$0:Landroid/media/MediaInserter;

    invoke-static {v3}, Landroid/media/MediaInserter;->-get1(Landroid/media/MediaInserter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
