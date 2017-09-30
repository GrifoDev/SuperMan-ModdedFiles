.class public Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;
.super Lcom/thoughtworks/xstream/io/binary/Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapIdToValue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    iput-wide p1, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInput;B)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->readId(Ljava/io/DataInput;B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Ljava/io/DataOutput;B)V
    .locals 2

    iget-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->writeId(Ljava/io/DataOutput;JB)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method
