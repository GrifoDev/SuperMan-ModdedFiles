.class Ljava/io/ObjectOutputStream$ReplaceTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplaceTable"
.end annotation


# instance fields
.field private final htab:Ljava/io/ObjectOutputStream$HandleTable;

.field private reps:[Ljava/lang/Object;


# direct methods
.method constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, p1, p2}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    return-void
.end method

.method private grow()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$ReplaceTable;->grow()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    aput-object p2, v1, v0

    return-void
.end method

.method clear()V
    .locals 4

    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    return-void
.end method

.method lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    aget-object p1, v1, v0

    :cond_0
    return-object p1
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    return v0
.end method
