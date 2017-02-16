.class public Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;
.super Lcom/thoughtworks/xstream/io/binary/Token;
.source "Token.java"


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

    .prologue
    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    .line 218
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    .line 212
    iput-wide p1, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    .line 213
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInput;B)V
    .locals 2
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "idType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->readId(Ljava/io/DataInput;B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    .line 227
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public writeTo(Ljava/io/DataOutput;B)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "idType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->id:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->writeId(Ljava/io/DataOutput;JB)V

    .line 222
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 223
    return-void
.end method
