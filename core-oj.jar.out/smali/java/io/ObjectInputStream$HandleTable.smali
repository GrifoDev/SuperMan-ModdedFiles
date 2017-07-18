.class Ljava/io/ObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable$HandleList;
    }
.end annotation


# static fields
.field private static final STATUS_EXCEPTION:B = 0x3t

.field private static final STATUS_OK:B = 0x1t

.field private static final STATUS_UNKNOWN:B = 0x2t


# instance fields
.field deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field entries:[Ljava/lang/Object;

.field lowDep:I

.field size:I

.field status:[B


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    return-void
.end method

.method private grow()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    new-array v3, v0, [B

    new-array v2, v0, [Ljava/lang/Object;

    new-array v1, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method

.method clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return-void
.end method

.method finish(I)V
    .locals 4

    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-gez v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v2, v2, v1

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-lt v2, p1, :cond_1

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lookupException(I)Ljava/lang/ClassNotFoundException;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/ClassNotFoundException;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupObject(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markDependency(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p2

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    :cond_2
    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    if-nez v0, :cond_3

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    aput-object v1, v0, p2

    :cond_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-ltz v0, :cond_4

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-le v0, p2, :cond_2

    :cond_4
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method markException(ILjava/lang/ClassNotFoundException;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v3, v3, p1

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    :pswitch_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v4, 0x3

    aput-byte v4, v3, p1

    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v3, p1

    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v3, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aput-object v5, v3, p1

    :cond_1
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setObject(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method size()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method
