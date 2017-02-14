.class Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharOp"
.end annotation


# instance fields
.field final charData:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;->charData:I

    return-void
.end method


# virtual methods
.method getData()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;->charData:I

    return v0
.end method
