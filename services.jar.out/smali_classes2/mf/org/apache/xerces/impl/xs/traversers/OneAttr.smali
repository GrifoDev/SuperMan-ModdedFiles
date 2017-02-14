.class Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# instance fields
.field public dfltValue:Ljava/lang/Object;

.field public dvIndex:I

.field public name:Ljava/lang/String;

.field public valueIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->name:Ljava/lang/String;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    return-void
.end method
