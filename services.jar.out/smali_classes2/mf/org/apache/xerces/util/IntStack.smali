.class public final Lmf/org/apache/xerces/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v0, v0

    if-le v0, p1, :cond_1

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    return-void
.end method

.method public elementAt(I)I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v0, v0, p1

    return v0
.end method

.method public peek()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ") {"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1
.end method

.method public push(I)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/IntStack;->ensureCapacity(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aput p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    return v0
.end method
