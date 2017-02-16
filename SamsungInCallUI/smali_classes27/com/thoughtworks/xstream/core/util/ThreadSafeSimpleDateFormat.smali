.class public Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;
.super Ljava/lang/Object;
.source "ThreadSafeSimpleDateFormat.java"


# instance fields
.field private final formatString:Ljava/lang/String;

.field private final pool:Lcom/thoughtworks/xstream/core/util/Pool;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;IIZ)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "initialPoolSize"    # I
    .param p4, "maxPoolSize"    # I
    .param p5, "lenient"    # Z

    .prologue
    .line 45
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "initialPoolSize"    # I
    .param p5, "maxPoolSize"    # I
    .param p6, "lenient"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 53
    new-instance v0, Lcom/thoughtworks/xstream/core/util/Pool;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;

    invoke-direct {v1, p0, p3, p6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;-><init>(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;Ljava/util/Locale;Z)V

    invoke-direct {v0, p4, p5, v1}, Lcom/thoughtworks/xstream/core/util/Pool;-><init>(IILcom/thoughtworks/xstream/core/util/Pool$Factory;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method private fetchFromPool()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/Pool;->fetchFromPool()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 83
    .local v0, "format":Ljava/text/DateFormat;
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->timeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 84
    .local v1, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    :cond_0
    return-object v0

    .line 83
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->fetchFromPool()Ljava/text/DateFormat;

    move-result-object v0

    .line 66
    .local v0, "format":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->fetchFromPool()Ljava/text/DateFormat;

    move-result-object v0

    .line 75
    .local v0, "format":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->pool:Lcom/thoughtworks/xstream/core/util/Pool;

    invoke-virtual {v2, v0}, Lcom/thoughtworks/xstream/core/util/Pool;->putInPool(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method
