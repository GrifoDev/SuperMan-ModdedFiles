.class public Lcom/thoughtworks/xstream/io/binary/Token$Formatter;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private contructToken(B)Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "Unknown token type"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Value;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Value;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public read(Ljava/io/DataInput;)Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    and-int/lit8 v4, v1, 0x7

    int-to-byte v3, v4

    and-int/lit8 v4, v1, 0x38

    int-to-byte v0, v4

    invoke-direct {p0, v3}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->contructToken(B)Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/thoughtworks/xstream/io/binary/Token;->readFrom(Ljava/io/DataInput;B)V

    return-object v2
.end method

.method public write(Ljava/io/DataOutput;Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v0

    const-wide/16 v4, 0xff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    invoke-virtual {p2, p1, v2}, Lcom/thoughtworks/xstream/io/binary/Token;->writeTo(Ljava/io/DataOutput;B)V

    return-void

    :cond_0
    const-wide/32 v4, 0xffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const-wide v4, 0xffffffffL

    cmp-long v3, v0, v4

    if-gtz v3, :cond_2

    const/16 v2, 0x18

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    goto :goto_0
.end method
