.class public Landroid/database/sqlite/SQLiteConstraintException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteConstraintException.java"


# static fields
.field public static final errCode:I = 0x13

.field public static final errString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SQLITE_CONSTRAINT"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_CHECK"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_COMMITHOOK"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_FOEIGNKEY"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_FUNCTION"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_NOTNULL"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_PRIMARYKEY"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_TRIGGER"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_UNIQUE"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_VTAB"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SQLITE_CONSTRAINT_ROWID"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Landroid/database/sqlite/SQLiteConstraintException;->errString:[Ljava/lang/String;

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

    invoke-static {p1}, Landroid/database/sqlite/SQLiteConstraintException;->addErrCode(Ljava/lang/String;)Ljava/lang/String;

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
    const-string/jumbo v0, " (code 19)"

    return-object v0
.end method
