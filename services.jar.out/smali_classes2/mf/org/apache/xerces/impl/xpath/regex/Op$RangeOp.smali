.class Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeOp"
.end annotation


# instance fields
.field final tok:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;->tok:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;->tok:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    return-object v0
.end method
