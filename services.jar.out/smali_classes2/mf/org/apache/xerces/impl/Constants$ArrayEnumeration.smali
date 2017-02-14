.class Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEnumeration"
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->array:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method
