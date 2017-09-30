.class public Lcom/thoughtworks/xstream/io/binary/Token$Value;
.super Lcom/thoughtworks/xstream/io/binary/Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/binary/Token$Value;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInput;B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Value;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Value;->value:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Ljava/io/DataOutput;B)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/Token$Value;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/binary/Token$Value;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method
