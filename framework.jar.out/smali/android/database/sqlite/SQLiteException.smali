.class public Landroid/database/sqlite/SQLiteException;
.super Landroid/database/SQLException;
.source "SQLiteException.java"


# static fields
.field private static final errString:[[Ljava/lang/String;

.field private static final errString2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_OK"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_ERROR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SQL(query) error or missing database."

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_INTERNAL"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_PERM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Access permission denied."

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_ABORT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Callback routine requested an abort."

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_BUSY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database file is locked."

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_LOCKED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "A table in the database is locked."

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOMEM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "There is no enough heap memory for application."

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_READONLY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Attempt to write a readonly database. (database may be deleted by other process)"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_INTERRUPT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Operation terminated by interrupt function."

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_IOERR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "disk I/O error occurred."

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CORRUPT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database disk image is malformed."

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTFOUND"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Unknown operation code."

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_FULL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available space in disk."

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Unable to open the database file."

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_PROTOCOL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Database lock protocol error."

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_EMPTY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Database is empty."

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_SCHEMA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The database schema changed."

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_TOOBIG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "String or BLOB exceeds size limits."

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CONSTRAINT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Abort due to constraint violation."

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_MISMATCH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Data type mismatch."

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_MISUSE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Library used incorrectly."

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOLFS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Uses OS features not supported on host."

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_AUTH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Authorization denied."

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_FORMAT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Auxiliary database format error."

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_RANGE"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTADB"

    aput-object v2, v1, v3

    const-string/jumbo v2, "File opened that is not a database file or encrypted."

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_NOTICE"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_WARNING"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "SQLITE_ROW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SQLITE_DONE"

    aput-object v1, v0, v4

    sput-object v0, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    invoke-static {}, Landroid/database/sqlite/SQLiteException;->waitIfDeviceOnShutdown()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/database/sqlite/SQLiteException;->waitIfDeviceOnShutdown()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteException;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/database/sqlite/SQLiteException;->waitIfDeviceOnShutdown()V

    return-void
.end method

.method private static getCausedBy(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    return-object v0

    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->makeCausedBy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private static getErrString(II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    return-object v0

    :sswitch_0
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :sswitch_1
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteDiskIOException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :sswitch_2
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    return-object v0

    :sswitch_3
    if-lez p1, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0xe -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method private static makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    const/4 v3, -0x1

    invoke-direct {v0, v3, p0}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMajorCode()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    const/16 v3, 0x65

    if-gt v1, v3, :cond_0

    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString2:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x64

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    if-ltz v1, :cond_2

    sget-object v3, Landroid/database/sqlite/SQLiteException;->errString:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteExceptionLog;->getMinorCode()I

    move-result v2

    const/16 v3, 0xe

    if-ne v1, v3, :cond_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, ""

    return-object v3

    :cond_1
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getErrString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->setErrString(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteException;->getCausedBy(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteExceptionLog;->makeSQLiteExceptionLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private static waitIfDeviceOnShutdown()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->isDeviceOnShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "waitIfOnShutdown"

    const-string/jumbo v3, "shutdown process is ongoing...freezing for a second."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
