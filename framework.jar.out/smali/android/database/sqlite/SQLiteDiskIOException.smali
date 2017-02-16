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

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    .line 30
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 31
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_READ"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'read\'"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 32
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHORT_READ"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'short read\'"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 33
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_WRITE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'write\'"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 34
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_FSYNC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'fsync\'"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 35
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DIR_FSYNC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'dir fsync\'"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 36
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_TRUNCATE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'truncate\'"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 37
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_FSTAT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Failed to get database file information with system call stat(). Please confirm whether database file has been removed."

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 38
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_UNLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'unlock\'"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 39
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_RDLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred because of holding incompatible lock."

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 40
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DELETE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'delete\'"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 41
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_BLOCKED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O operation is blocked."

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 42
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_NOMEM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "There is no enough heap memory for I/O operation."

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 43
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_ACCESS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O operation access is deined."

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 44
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CHECKRESERVEDLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "A RESERVED lock held on file by other process."

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 45
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_LOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'lock\'"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 46
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CLOSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'close\'"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 47
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DIR_CLOSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'dir close\'"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 48
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMOPEN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'share memory open (ftrucate)\'"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 49
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMSIZE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available space in disk."

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 50
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMLOCK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'shared memory lock\'"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 51
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SHMMAP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'shared memory mmap\'"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 52
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_SEEK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'seek\'"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 53
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_DELETE_NOENT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Can not delete path or file."

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 54
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_MMAP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'mmap\'"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 55
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_GETTEMPPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'get temporary path\'"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 56
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_CONVPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\'converted path\'"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 57
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_VNODE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Disk I/O error occurred."

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 58
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR_LOCK_EBADF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "I/O error happened due to bad file descriptor. There is possibility the partition changed to read-only."

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 29
    sput-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 68
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

    .line 67
    return-void
.end method

.method private static addErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    const-string/jumbo v0, "(code "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    const-string/jumbo v0, ""

    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v0, " (code 10)"

    return-object v0
.end method

.method public static makeCausedBy(I)Ljava/lang/String;
    .locals 4
    .param p0, "minorCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 79
    const-string/jumbo v0, ""

    .line 80
    .local v0, "caused":Ljava/lang/String;
    sget-object v1, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v1, v1, p0

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 81
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

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget-object v1, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v1, v1, p0

    aget-object v0, v1, v3

    goto :goto_0
.end method
