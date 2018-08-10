.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 9

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v5}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteStatementInfo;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v7

    invoke-virtual {v5, v6, v7, p4, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    iget-object v5, v2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    iget v5, v2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz p3, :cond_2

    array-length v5, p3

    iget v6, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Too many bind arguments.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " arguments were provided but the statement needs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " arguments."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    sget-object v5, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    const/4 v5, 0x0

    iput v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v5, v2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteProgram;->onCorruption(I)V

    throw v1

    :cond_2
    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    new-array v5, v5, [Ljava/lang/Object;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz p3, :cond_3

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length v6, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p3, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    const/4 v5, 0x7

    if-ne v3, v5, :cond_6

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v5, v6, p4}, Landroid/database/sqlite/SQLitePragma;->checkAndSetSpecialPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CREATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TEMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(Z)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot bind argument at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because the index is out of range.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    return-void
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    return-void
.end method

.method public clearBindings()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final getSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final getSql()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    return-void
.end method

.method protected final onCorruption()V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    return-void
.end method

.method protected final onCorruption(I)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    return-void
.end method
