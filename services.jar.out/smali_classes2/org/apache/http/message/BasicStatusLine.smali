.class public Lorg/apache/http/message/BasicStatusLine;
.super Ljava/lang/Object;
.source "BasicStatusLine.java"

# interfaces
.implements Lorg/apache/http/StatusLine;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21e85bd4afe13085L


# instance fields
.field private final protoVersion:Lorg/apache/http/ProtocolVersion;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Version"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/ProtocolVersion;

    iput-object v0, p0, Lorg/apache/http/message/BasicStatusLine;->protoVersion:Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v0, "Status code"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicStatusLine;->statusCode:I

    iput-object p3, p0, Lorg/apache/http/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicStatusLine;->protoVersion:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/apache/http/message/BasicStatusLine;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/http/message/BasicLineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
