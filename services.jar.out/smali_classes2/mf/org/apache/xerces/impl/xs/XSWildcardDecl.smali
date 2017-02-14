.class public Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
.super Ljava/lang/Object;
.source "XSWildcardDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSWildcard;


# static fields
.field public static final ABSENT:Ljava/lang/String;


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fDescription:Ljava/lang/String;

.field public fNamespaceList:[Ljava/lang/String;

.field public fProcessContents:S

.field public fType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-void
.end method

.method private areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    return v4

    :cond_5
    return v1

    :cond_6
    return v4
.end method


# virtual methods
.method public allowNamespace(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v4, v0

    move v3, v2

    move v0, v2

    :goto_0
    if-lt v3, v4, :cond_5

    :cond_4
    if-nez v0, :cond_0

    return v1

    :cond_5
    if-nez v0, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eq p1, v5, :cond_6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v0

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eq p1, v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

.method elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    if-nez v0, :cond_0

    aget-object v2, p2, v1

    if-eq p1, v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getConstraintType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNsConstraintList()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProcessContents()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return v0
.end method

.method public getProcessContentsAsString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "invalid value"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "skip"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "lax"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "strict"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v2, v3

    move v0, v3

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v5, p1, v2

    aput-object v5, v4, v0

    move v0, v1

    goto :goto_1

    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v4, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v3, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v4, :cond_4

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v5, :cond_5

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_0

    return v3

    :cond_5
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v5, :cond_7

    :cond_6
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v4, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3
.end method

.method public performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v10, 0x3

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    int-to-short v0, p2

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v3, :cond_4

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v3, :cond_8

    :goto_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    int-to-short v0, v0

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v6

    :cond_2
    return-object v2

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    int-to-short v0, v0

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v3, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v1, :cond_9

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v10, :cond_c

    :goto_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v10, :cond_10

    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-ne v0, v1, :cond_11

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v0, v1, :cond_12

    :goto_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    int-to-short v0, v0

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object p0, p1

    goto :goto_0

    :cond_9
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v10, :cond_5

    :cond_a
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v1, :cond_d

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_4
    array-length v7, v1

    new-array v8, v7, [Ljava/lang/String;

    move v4, v5

    move v2, v5

    :goto_5
    if-ge v4, v7, :cond_f

    aget-object v3, v1, v4

    aget-object v9, v0, v5

    if-ne v3, v9, :cond_e

    :cond_b
    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_c
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v1, :cond_a

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_4

    :cond_e
    aget-object v3, v1, v4

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v3, v9, :cond_b

    add-int/lit8 v3, v2, 0x1

    aget-object v9, v1, v4

    aput-object v9, v8, v2

    move v2, v3

    goto :goto_6

    :cond_f
    iput-short v10, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-static {v8, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_10
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v10, :cond_6

    iput-short v10, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v0, v1, :cond_7

    return-object v2

    :cond_12
    move-object p0, p1

    goto :goto_3
.end method

.method public performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    int-to-short v0, p2

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v8, :cond_4

    :cond_0
    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    return-object v9

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    int-to-short v0, v0

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v8, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v1, :cond_8

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v7, :cond_9

    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v7, :cond_a

    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v7, :cond_1

    :goto_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v0, v7, :cond_b

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_2
    sget-object v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    aget-object v4, v1, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-ne v4, v5, :cond_c

    if-nez v3, :cond_13

    iput-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object v1, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v1, :cond_5

    iput-short v1, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v7, :cond_6

    iput-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v1, v0, v6

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v1, v0, v8

    goto :goto_0

    :cond_a
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_2

    :cond_c
    aget-object v4, v1, v6

    invoke-virtual {p0, v4, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    if-nez v0, :cond_11

    :cond_e
    if-eqz v0, :cond_12

    :cond_f
    iput-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object v1, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_d

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0

    :cond_11
    if-nez v3, :cond_e

    iput-short v7, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v1, v0, v6

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v1, v0, v8

    goto/16 :goto_0

    :cond_12
    if-eqz v3, :cond_f

    return-object v9

    :cond_13
    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0
.end method

.method subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "WC["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "##any"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "##other"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    :goto_2
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const-string/jumbo v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    :goto_5
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    move v2, v3

    move v0, v3

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v5, p1, v2

    aput-object v5, v4, v0

    move v0, v1

    goto :goto_1

    :cond_1
    array-length v1, p2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v0, v3, :cond_3

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_3
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v0, v3, :cond_1

    goto :goto_0
.end method
