.class public Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;


# instance fields
.field private final format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v4, 0x5

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;IIZ)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/sql/Timestamp;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x30

    check-cast p1, Ljava/sql/Timestamp;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;->format:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    const v2, 0x3b9aca00

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xa

    :goto_1
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
