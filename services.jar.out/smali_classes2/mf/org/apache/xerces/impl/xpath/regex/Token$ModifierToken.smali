.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;
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
    name = "ModifierToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e7d56b5cd050864L


# instance fields
.field final add:I

.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final mask:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method getOptions()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    return v0
.end method

.method getOptionsMask()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    return v0
.end method

.method size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "(?"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
