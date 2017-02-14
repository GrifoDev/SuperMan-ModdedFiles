.class Landroid/media/MediaScannerConnection$SemClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mDirectories:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mDirectories:[Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mDirectories:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaScannerConnection;->semScanDirectories([Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection$SemClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
