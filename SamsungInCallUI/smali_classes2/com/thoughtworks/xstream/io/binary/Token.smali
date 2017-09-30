.class public abstract Lcom/thoughtworks/xstream/io/binary/Token;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/binary/Token$Value;,
        Lcom/thoughtworks/xstream/io/binary/Token$Attribute;,
        Lcom/thoughtworks/xstream/io/binary/Token$EndNode;,
        Lcom/thoughtworks/xstream/io/binary/Token$StartNode;,
        Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;,
        Lcom/thoughtworks/xstream/io/binary/Token$Formatter;
    }
.end annotation


# static fields
.field private static final ID_EIGHT_BYTES:B = 0x20t

.field private static final ID_FOUR_BYTES:B = 0x18t

.field private static final ID_MASK:B = 0x38t

.field private static final ID_ONE_BYTE:B = 0x8t

.field private static final ID_SPLITTED:Ljava/lang/String; = "\u0000\u2021\u0000"

.field private static final ID_TWO_BYTES:B = 0x10t

.field private static final MAX_UTF8_LENGTH:I = 0xffff

.field public static final TYPE_ATTRIBUTE:B = 0x5t

.field public static final TYPE_END_NODE:B = 0x4t

.field public static final TYPE_MAP_ID_TO_VALUE:B = 0x2t

.field private static final TYPE_MASK:B = 0x7t

.field public static final TYPE_START_NODE:B = 0x3t

.field public static final TYPE_VALUE:B = 0x6t

.field public static final TYPE_VERSION:B = 0x1t


# instance fields
.field protected id:J

.field private final type:B

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>(B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    iput-byte p1, p0, Lcom/thoughtworks/xstream/io/binary/Token;->type:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/thoughtworks/xstream/io/binary/Token;

    iget-wide v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    iget-wide v4, p1, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-byte v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->type:B

    iget-byte v3, p1, Lcom/thoughtworks/xstream/io/binary/Token;->type:B

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    return-wide v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->type:B

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-byte v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->type:B

    mul-int/lit8 v0, v0, 0x1d

    iget-wide v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    iget-wide v4, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1d

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract readFrom(Ljava/io/DataInput;B)V
.end method

.method protected readId(Ljava/io/DataInput;B)J
    .locals 4

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    add-int/lit16 v0, v0, 0x80

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :sswitch_1
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    const/16 v1, -0x8000

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :sswitch_2
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :sswitch_3
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    sub-long/2addr v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method protected readString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0000\u2021\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-interface {p1, v1}, Ljava/io/DataInput;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/thoughtworks/xstream/io/binary/Token;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeId(Ljava/io/DataOutput;JB)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id must not be negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sparse-switch p4, :sswitch_data_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    long-to-int v0, p2

    int-to-byte v0, v0

    add-int/lit8 v0, v0, -0x80

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void

    :sswitch_1
    long-to-int v0, p2

    int-to-short v0, v0

    add-int/lit16 v0, v0, -0x8000

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    :sswitch_2
    long-to-int v0, p2

    const/high16 v1, -0x80000000

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method protected writeString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3fff

    if-le v0, v1, :cond_0

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    array-length v1, v0

    const v2, 0xffff

    if-gt v1, v2, :cond_1

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    const-string v1, "\u0000\u2021\u0000"

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_1
.end method

.method public abstract writeTo(Ljava/io/DataOutput;B)V
.end method
