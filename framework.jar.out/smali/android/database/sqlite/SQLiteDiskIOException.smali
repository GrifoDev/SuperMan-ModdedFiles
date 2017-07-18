.class public Landroid/database/sqlite/SQLiteDiskIOException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDiskIOException.java"


# static fields
.field public static final errCode:I = 0xa

.field public static final errString:[[Ljava/lang/String;

.field public static final postfix:Ljava/lang/String; = " operation."

.field public static final prefix:Ljava/lang/String; = "Disk I/O error occurred during "


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1e

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_READ"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'read\'"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHORT_READ"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'short read\'"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_WRITE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'write\'"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_FSYNC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'fsync\'"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DIR_FSYNC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'dir fsync\'"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_TRUNCATE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'truncate\'"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_FSTAT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Failed to get database file information with system call stat(). Please confirm whether database file has been removed."

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_UNLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'unlock\'"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_RDLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred because of holding incompatible lock."

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DELETE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'delete\'"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_BLOCKED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O operation is blocked."

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_NOMEM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "There is no enough heap memory for I/O operation."

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_ACCESS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O operation access is deined."

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CHECKRESERVEDLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "A RESERVED lock held on file by other process."

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_LOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'lock\'"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CLOSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'close\'"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DIR_CLOSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'dir close\'"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMOPEN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'share memory open (ftrucate)\'"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMSIZE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Write or fstat to the shm file is failed."

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'shared memory lock\'"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMMAP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'shared memory mmap\'"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SEEK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'seek\'"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DELETE_NOENT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Can not delete path or file."

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_MMAP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'mmap\'"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_GETTEMPPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'get temporary path\'"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CONVPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'converted path\'"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_VNODE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred."

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_LOCK_EBADF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "I/O error happened due to bad file descriptor. There is possibility the partition changed to read-only."

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMSIZE_FULL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available space in disk.(ENOSPC)"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->addErrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static addErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "(code "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    const-string/jumbo v0, " (code 10)"

    return-object v0
.end method

.method public static makeCausedBy(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, ""

    sget-object v1, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v1, v1, p0

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disk I/O error occurred during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v2, v2, p0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " operation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v1, v1, p0

    aget-object v0, v1, v3

    goto :goto_0
.end method
