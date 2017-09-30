.class public Lcom/thoughtworks/xstream/io/binary/Token$EndNode;
.super Lcom/thoughtworks/xstream/io/binary/Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndNode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInput;B)V
    .locals 0

    return-void
.end method

.method public writeTo(Ljava/io/DataOutput;B)V
    .locals 0

    return-void
.end method
