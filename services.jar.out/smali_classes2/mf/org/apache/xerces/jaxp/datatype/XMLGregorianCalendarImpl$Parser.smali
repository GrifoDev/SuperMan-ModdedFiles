.class final Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
.super Ljava/lang/Object;
.source "XMLGregorianCalendarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Parser"
.end annotation


# instance fields
.field private fidx:I

.field private final flen:I

.field private final format:Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

.field private final value:Ljava/lang/String;

.field private vidx:I

.field private final vlen:I


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseBigDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseInt(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v1, v0

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v1, v0

    if-ge v1, p2, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseYear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v2, v1

    sub-int v0, v2, v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    goto :goto_1
.end method

.method private peek()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method private read()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private skip(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->read()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v5, 0x2b

    const/4 v4, 0x2

    :cond_0
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseYear()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    if-ne v0, v5, :cond_4

    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    invoke-direct {p0, v4, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    if-eq v0, v5, :cond_5

    const/4 v0, -0x1

    :goto_1
    mul-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method
