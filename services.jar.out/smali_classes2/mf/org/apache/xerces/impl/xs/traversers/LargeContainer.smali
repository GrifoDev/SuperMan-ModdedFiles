.class Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;
.super Lmf/org/apache/xerces/impl/xs/traversers/Container;
.source "XSAttributeChecker.java"


# instance fields
.field items:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/Container;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    return-object v0
.end method

.method put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->pos:I

    aput-object p2, v0, v1

    return-void
.end method
