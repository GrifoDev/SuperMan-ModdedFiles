.class Lsun/nio/ch/SharedFileLockTable$FileLockReference;
.super Ljava/lang/ref/WeakReference;
.source "FileLockTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SharedFileLockTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLockReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# instance fields
.field private fileKey:Lsun/nio/ch/FileKey;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileLock;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;",
            "Lsun/nio/ch/FileKey;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey:Lsun/nio/ch/FileKey;

    return-void
.end method


# virtual methods
.method fileKey()Lsun/nio/ch/FileKey;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey:Lsun/nio/ch/FileKey;

    return-object v0
.end method
