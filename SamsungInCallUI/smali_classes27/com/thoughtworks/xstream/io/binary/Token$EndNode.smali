.class public Lcom/thoughtworks/xstream/io/binary/Token$EndNode;
.super Lcom/thoughtworks/xstream/io/binary/Token;
.source "Token.java"


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

    .prologue
    .line 256
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/Token;-><init>(B)V

    .line 257
    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInput;B)V
    .locals 0
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "idType"    # B

    .prologue
    .line 263
    return-void
.end method

.method public writeTo(Ljava/io/DataOutput;B)V
    .locals 0
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "idType"    # B

    .prologue
    .line 260
    return-void
.end method
