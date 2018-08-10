.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MemoryIntArray$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mFd:I

.field private final mIsOwner:Z

.field private final mMemoryAddr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/MemoryIntArray$1;

    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, -0x1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/16 v1, 0x400

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Max size is 1024"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, -0x1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No backing file descriptor"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private enforceNotClosed()V
    .locals 2

    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot interact with a closed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceValidIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->size()I

    move-result v0

    if-ltz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private enforceWritable()V
    .locals 2

    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "array is not writable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getMaxSize()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method private native nativeClose(IJZ)V
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method

.method private native nativeGet(IJI)I
.end method

.method private native nativeOpen(IZ)J
.end method

.method private native nativeSet(IJII)V
.end method

.method private native nativeSize(I)I
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-boolean v1, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v0, v2, v3, v1}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/util/MemoryIntArray;

    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v4, v0, Landroid/util/MemoryIntArray;->mFd:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    invoke-direct {p0, v0, v2, v3, p1}, Landroid/util/MemoryIntArray;->nativeGet(IJI)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    return v0
.end method

.method public set(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeSet(IJII)V

    return-void
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-direct {p0, v0}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    and-int/lit8 v1, p2, -0x2

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    throw v1
.end method
