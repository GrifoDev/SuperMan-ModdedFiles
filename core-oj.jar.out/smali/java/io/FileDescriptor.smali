.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final err:Ljava/io/FileDescriptor;

.field public static final in:Ljava/io/FileDescriptor;

.field public static final out:Ljava/io/FileDescriptor;


# instance fields
.field private descriptor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/io/FileDescriptor;->dupFd(I)Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    return-void
.end method

.method private static dupFd(I)Ljava/io/FileDescriptor;
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2, p0}, Ljava/io/FileDescriptor;-><init>(I)V

    sget v3, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/FileDescriptor;-><init>(I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native isSocket(I)Z
.end method


# virtual methods
.method public final getInt$()I
    .locals 1

    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method public isSocket$()Z
    .locals 1

    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    invoke-static {v0}, Ljava/io/FileDescriptor;->isSocket(I)Z

    move-result v0

    return v0
.end method

.method public final setInt$(I)V
    .locals 0

    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    return-void
.end method

.method public native sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation
.end method

.method public valid()Z
    .locals 2

    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
