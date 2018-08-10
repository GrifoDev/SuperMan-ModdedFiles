.class Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;
.super Landroid/database/MatrixCursor;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryCursor"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/internal/content/FileSystemProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/content/FileSystemProvider;->buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object p4, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    invoke-static {p1, v1, v0}, Lcom/android/internal/content/FileSystemProvider;->-wrap0(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-super {p0}, Landroid/database/MatrixCursor;->close()V

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->this$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->mFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/internal/content/FileSystemProvider;->-wrap1(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)V

    return-void
.end method
