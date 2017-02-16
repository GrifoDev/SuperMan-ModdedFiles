.class public Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteCantOpenDatabaseException.java"


# static fields
.field public static final errCode:I = 0xe

.field public static final errString:[[Ljava/lang/String;


# instance fields
.field private mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    .line 27
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Unable to open the database file."

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 28
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_NOTEMPDIR"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 29
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_ISDIR"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 30
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_FULLPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_CONVPATH"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_ENOENT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Specified directory or database file does not exist."

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_ENOMEM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available memory space."

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 34
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_EACCES"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Application has no permission to open the specified database file."

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 35
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_EMFILE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Application has opened two many files. Maximum of available file descriptors in one process is 1024 in default."

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 36
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_ENOSPC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "No available space in disk."

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 37
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_EROFS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Current partition has been mounted with read-only mode."

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 38
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SQLITE_CANTOPEN_WRONG_PWD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Can not open secure database because of the wrong password."

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->errString:[[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->addErrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    .line 47
    .local v0, "codeParser":Landroid/database/sqlite/SQLiteExceptionLog;
    iget v1, v0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    iput v1, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    .line 44
    return-void
.end method

.method private static addErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    const-string/jumbo v0, "(code "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    const-string/jumbo v0, ""

    return-object v0

    .line 53
    :cond_0
    const-string/jumbo v0, " (code 14)"

    return-object v0
.end method


# virtual methods
.method public semIsWrongPasswordException()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->mErrorCode:I

    const/16 v1, 0xb0e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
