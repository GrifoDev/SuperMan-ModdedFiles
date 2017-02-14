.class Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnionOp"
.end annotation


# instance fields
.field final branches:Ljava/util/Vector;


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method addElement(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
