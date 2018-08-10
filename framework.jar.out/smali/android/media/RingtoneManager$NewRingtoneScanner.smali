.class Landroid/media/RingtoneManager$NewRingtoneScanner;
.super Ljava/lang/Object;
.source "RingtoneManager.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewRingtoneScanner"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/RingtoneManager;


# direct methods
.method public constructor <init>(Landroid/media/RingtoneManager;Ljava/io/File;)V
    .locals 2

    iput-object p1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->this$0:Landroid/media/RingtoneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p2, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-static {p1}, Landroid/media/RingtoneManager;->-get0(Landroid/media/RingtoneManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "Unable to put new ringtone Uri in queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public take()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/RingtoneManager$NewRingtoneScanner;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method
