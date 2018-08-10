.class Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
.super Landroid/os/FileObserver;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryObserver"
.end annotation


# static fields
.field private static final NOTIFY_EVENTS:I = 0xfcc


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mNotifyUri:Landroid/net/Uri;

.field private mRefCount:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return p1
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfcc

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    and-int/lit16 v0, p1, 0xfcc

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DirectoryObserver{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
