.class Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifierOp"
.end annotation


# instance fields
.field final v1:I

.field final v2:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v1:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v2:I

    return-void
.end method


# virtual methods
.method getData()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v1:I

    return v0
.end method

.method getData2()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v2:I

    return v0
.end method
