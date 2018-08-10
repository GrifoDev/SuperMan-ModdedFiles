.class public Landroid/database/sqlite/SQLitePragma;
.super Ljava/lang/Object;
.source "SQLitePragma.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLitePragma"

.field private static final mJournalPattern:Ljava/util/regex/Pattern;

.field private static final mNumberPattern:Ljava/util/regex/Pattern;

.field private static final mPragmaPattern:Ljava/util/regex/Pattern;

.field private static final mTurnOnPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string/jumbo v0, "^pragma\\s+(main\\.)?(case_sensitive_like|cache_size|automatic_index|busy_timeout|journal_mode)\\s*(=|\\()(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(on|yes|1|true)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*[`\"\'\\[\\s]*\\s*(\\+|-)?\\s*(0x)?([0-9a-f]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*[`\"\'\\[\\s]*\\s*(DELETE|TUNCATE|PERSIST|MEMORY|WAL|OFF)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    return-void
.end method

.method private checkAndSetSpecialPragma()V
    .locals 5

    sget-object v3, Landroid/database/sqlite/SQLitePragma;->mPragmaPattern:Ljava/util/regex/Pattern;

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v3, "automatic_index"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateAutomaticIndex(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v3, "case_sensitive_like"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCaseSensitveLike(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "cache_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateCacheSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "busy_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateBusyTimeout(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "journal_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLitePragma;->updateJournalMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkAndSetSpecialPragma(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getMaxConnectionPoolSize()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLitePragma;

    invoke-direct {v1, p0, p1}, Landroid/database/sqlite/SQLitePragma;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {v1}, Landroid/database/sqlite/SQLitePragma;->checkAndSetSpecialPragma()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndSetSpecialPragma failed from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private extractIntFromValue(Ljava/lang/String;)I
    .locals 7

    sget-object v5, Landroid/database/sqlite/SQLitePragma;->mNumberPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Could not extract int value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_2

    const/16 v5, 0x10

    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v4, :cond_1

    const-string/jumbo v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_2
    const/16 v5, 0xa

    goto :goto_0
.end method

.method private extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Landroid/database/sqlite/SQLitePragma;->mJournalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutomaticIndex(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->setAutomaticIndexEnabled(Z)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get automatic_index value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateBusyTimeout(Ljava/lang/String;)V
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setBusyTimeout(J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get busy_timeout value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateCacheSize(Ljava/lang/String;)V
    .locals 5

    const v1, 0x7fffffff

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractIntFromValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->setCacheSize(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get cache_size value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalied cache size (under 10) \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', ignore sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCaseSensitveLike(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLitePragma;->mTurnOnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->setCaseSensitiveLikeEnabled(Z)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get case_sensitive_like value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateJournalMode(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLitePragma;->extractJournalModeFromValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to get journal_mode value from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "wal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLitePragma;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SQLitePragma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disableWriteAheadLogging failed from this sql : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLitePragma;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
