.class public final Lcom/thoughtworks/xstream/core/util/FastStack;
.super Ljava/lang/Object;


# instance fields
.field private pointer:I

.field private stack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    return-void
.end method

.method private resizeStack(I)V
    .locals 4

    const/4 v3, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasStuff()Z
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method public popSilently()V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->resizeStack(I)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    aput-object p1, v0, v1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    return-object v0
.end method

.method public replaceSilently(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->pointer:I

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/FastStack;->stack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
