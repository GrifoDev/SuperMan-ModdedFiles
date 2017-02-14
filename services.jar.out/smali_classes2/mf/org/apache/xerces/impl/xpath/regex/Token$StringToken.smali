.class Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40098649ad72dbecL


# instance fields
.field final refNumber:I

.field string:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->refNumber:I

    return-void
.end method


# virtual methods
.method getReferenceNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->refNumber:I

    return v0
.end method

.method getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->type:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->quoteMeta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->refNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
