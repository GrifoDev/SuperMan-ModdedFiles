.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private mCorrupt_code:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0xb

    .line 33
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    .line 27
    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 28
    const/16 v0, 0x1a

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "database disk image is malformed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "file is encrypted or is not a database"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 27
    iput v3, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 28
    const/16 v2, 0x1a

    filled-new-array {v3, v2}, [I

    move-result-object v2

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    .line 29
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 30
    const-string/jumbo v3, "database disk image is malformed"

    aput-object v3, v2, v4

    .line 31
    const-string/jumbo v3, "file is encrypted or is not a database"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 29
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 41
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    aget v2, v2, v0

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 35
    .end local v1    # "pos":I
    :cond_0
    return-void

    .line 40
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCorruptCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    return v0
.end method
