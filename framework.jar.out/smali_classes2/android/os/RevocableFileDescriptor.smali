.class public Landroid/os/RevocableFileDescriptor;
.super Ljava/lang/Object;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RevocableFileDescriptor$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RevocableFileDescriptor"


# instance fields
.field private final mCallback:Landroid/os/ProxyFileDescriptorCallback;

.field private mInner:Ljava/io/FileDescriptor;

.field private mOuter:Landroid/os/ParcelFileDescriptor;

.field private volatile mRevoked:Z


# direct methods
.method static synthetic -get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic -get1(Landroid/os/RevocableFileDescriptor;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return v0
.end method

.method static synthetic -set0(Landroid/os/RevocableFileDescriptor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v1, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v1, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v2, v3

    const/16 v3, 0x1c0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {p0, p1, p2}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2, v1}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public isRevoked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return v0
.end method

.method public revoke()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method
