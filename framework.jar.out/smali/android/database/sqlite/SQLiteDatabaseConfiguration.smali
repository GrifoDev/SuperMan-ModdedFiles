.class public final Landroid/database/sqlite/SQLiteDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SQLiteDatabaseConfiguration.java"


# static fields
.field private static final DEFAULT_BUSY_TIMEOUT:J = 0x9c4L

.field private static final DEFAULT_CACHE_SIZE:I = 0x7d0

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field public static final GOOGLE_PACKAGE:I = 0x2

.field public static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"

.field public static final OTHER_PACKAGE:I = 0x0

.field public static final SAMSUNG_PACKAGE:I = 0x1

.field private static final default_wal_db_blacklist:[Ljava/lang/String;

.field private static final default_wal_db_packages:[Ljava/lang/String;

.field private static final google_package:Ljava/lang/String; = "com.google."

.field private static final preload_wal_dbs:[Ljava/lang/String;


# instance fields
.field public automaticIndexEnabled:Z

.field public busyTimeout:J

.field public cacheSize:I

.field public caseSensitiveLikeEnabled:Z

.field public final customFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteCustomFunction;",
            ">;"
        }
    .end annotation
.end field

.field public defaultWAL:Z

.field public enableWALExplicitly:Z

.field public foreignKeyConstraintsEnabled:Z

.field public final label:Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public maxSqlCacheSize:I

.field public openFlags:I

.field public final path:Ljava/lang/String;

.field public preloadWalDb:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/internal.db"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/external.db"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/mmssms.db"

    aput-object v1, v0, v5

    const-string/jumbo v1, "/contacts2.db"

    aput-object v1, v0, v6

    const-string/jumbo v1, "/profile.db"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preload_wal_dbs:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung."

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec."

    aput-object v1, v0, v4

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->default_wal_db_packages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "EmailProvider.db"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EmailProviderBody.db"

    aput-object v1, v0, v4

    const-string/jumbo v1, "iwlansettings.db"

    aput-object v1, v0, v5

    sput-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->default_wal_db_blacklist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8

    const/high16 v7, 0x20000000

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    iput p2, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/16 v1, 0x19

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    const-wide/16 v4, 0x9c4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    const/16 v1, 0x7d0

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    const-string/jumbo v1, "com.google."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isPreloadWalDb(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->defaultWAL:Z

    and-int v1, p2, v7

    if-eqz v1, :cond_6

    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->default_wal_db_packages:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v6, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->useWALModebyDefault(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_6
    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->defaultWAL:Z

    if-eqz v1, :cond_2

    :cond_7
    iget v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v1, v7

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    goto :goto_2
.end method

.method private isPreloadWalDb(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preload_wal_dbs:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static stripPathForLogs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private useWALModebyDefault(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->default_wal_db_blacklist:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    if-ne v3, v1, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public isGoogleDb()Z
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMemoryDb()Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string/jumbo v1, ":memory:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSamsungPreloadDb()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other configuration must refer to the same database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->type:I

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->defaultWAL:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->defaultWAL:Z

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    iget-object v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->automaticIndexEnabled:Z

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->caseSensitiveLikeEnabled:Z

    iget-wide v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->busyTimeout:J

    iget v0, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->cacheSize:I

    return-void
.end method
