.class Lmf/org/apache/xerces/impl/xpath/regex/Op;
.super Ljava/lang/Object;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;,
        Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;
    }
.end annotation


# static fields
.field static final ANCHOR:I = 0x5

.field static final BACKREFERENCE:I = 0x10

.field static final CAPTURE:I = 0xf

.field static final CHAR:I = 0x1

.field static final CLOSURE:I = 0x7

.field static final CONDITION:I = 0x1a

.field static final COUNT:Z = false

.field static final DOT:I = 0x0

.field static final INDEPENDENT:I = 0x18

.field static final LOOKAHEAD:I = 0x14

.field static final LOOKBEHIND:I = 0x16

.field static final MODIFIER:I = 0x19

.field static final NEGATIVELOOKAHEAD:I = 0x15

.field static final NEGATIVELOOKBEHIND:I = 0x17

.field static final NONGREEDYCLOSURE:I = 0x8

.field static final NONGREEDYQUESTION:I = 0xa

.field static final NRANGE:I = 0x4

.field static final QUESTION:I = 0x9

.field static final RANGE:I = 0x3

.field static final STRING:I = 0x6

.field static final UNION:I = 0xb

.field static nofinstances:I


# instance fields
.field next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->nofinstances:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    return-void
.end method

.method static createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method static createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method static createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;-><init>(II)V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method static createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method static createClosure(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;-><init>(III)V

    return-object v0
.end method

.method static createCondition(Lmf/org/apache/xerces/impl/xpath/regex/Op;ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;
    .locals 6

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    const/16 v1, 0x1a

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;-><init>(IILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    iput-object p0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method static createDot()Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    return-object v0
.end method

.method static createIndependent(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    iput-object p0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method static createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method static createModifier(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;II)Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;-><init>(III)V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    iput-object p0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-object v0
.end method

.method static createNonGreedyClosure()Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    return-object v0
.end method

.method static createQuestion(Z)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .locals 2

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    if-nez p0, :cond_0

    const/16 v0, 0x9

    :goto_0
    invoke-direct {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    return-object v1

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static createRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static createUnion(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getData()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getData2()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
