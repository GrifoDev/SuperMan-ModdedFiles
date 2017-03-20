.class public Lcom/thoughtworks/xstream/io/binary/Token$Attribute;
.super Lcom/thoughtworks/xstream/io/binary/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    .line 277
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    .line 271
    iput-wide p1, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->id:J

    .line 272
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->value:Ljava/lang/String;

    .line 273
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
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->readId(Ljava/io/DataInput;B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->id:J

    .line 286
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->value:Ljava/lang/String;

    .line 287
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
    .line 280
    iget-wide v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->id:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->writeId(Ljava/io/DataOutput;JB)V

    .line 281
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 282
    return-void
.end method
