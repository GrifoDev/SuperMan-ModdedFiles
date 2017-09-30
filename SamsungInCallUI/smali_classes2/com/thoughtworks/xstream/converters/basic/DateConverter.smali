.class public Lcom/thoughtworks/xstream/converters/basic/DateConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ErrorReporter;


# static fields
.field private static final DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

.field private static final DEFAULT_ERA_PATTERN:Ljava/lang/String;

.field private static final DEFAULT_PATTERN:Ljava/lang/String;

.field private static final ERA_START:J

.field private static final UTC:Ljava/util/TimeZone;


# instance fields
.field private final acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field private final defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field private final defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field private final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    const-string v0, "yyyy-MM-dd HH:mm:ss.S z"

    const-string v0, "yyyy-MM-dd G HH:mm:ss.S z"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "yyyy-MM-dd HH:mm:ss.S z"

    :goto_0
    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v0, "yyyy-MM-dd G HH:mm:ss.S z"

    :goto_1
    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm:ss.S z"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "yyyy-MM-dd HH:mm:ss.S a"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "yyyy-MM-dd HH:mm:ssz"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "yyyy-MM-dd HH:mm:ss z"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const-string v0, "yyyy-MM-dd HH:mm:ss \'UTC\'"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "yyyy-MM-dd HH:mm:ssa"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    nop

    nop

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    return-void

    :cond_2
    const-string v0, "yyyy-MM-dd HH:mm:ss.S \'UTC\'"

    goto :goto_0

    :cond_3
    const-string v0, "yyyy-MM-dd G HH:mm:ss.S \'UTC\'"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V
    .locals 8

    const/4 v4, 0x4

    const/4 v7, 0x0

    const/16 v5, 0x14

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    :goto_0
    new-instance v0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz p3, :cond_1

    array-length v0, p3

    new-array v0, v0, [Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    :goto_1
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    move v0, v7

    :goto_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    aget-object v2, p3, v0

    const/4 v4, 0x1

    move-object v3, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;IIZ)V

    aput-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    goto :goto_0

    :cond_1
    new-array v0, v7, [Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 7

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ERA_PATTERN:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->UTC:Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_PATTERN:Ljava/lang/String;

    sget-object v1, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->DEFAULT_ACCEPTABLE_FORMATS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 3

    const-string v0, "Default date pattern"

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    const-string v0, "Default era date pattern"

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string v1, "Alternative date pattern"

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eq v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->acceptableFormats:[Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->ERA_START:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultEraFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;->defaultFormat:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
