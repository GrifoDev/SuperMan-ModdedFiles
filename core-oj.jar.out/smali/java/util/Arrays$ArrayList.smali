.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 3825
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3826
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 3825
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3880
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Arrays$ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3885
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 3887
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3884
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 3854
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3866
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    if-nez p1, :cond_1

    .line 3867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 3868
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 3869
    return v0

    .line 3867
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3871
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 3872
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3873
    return v0

    .line 3871
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3875
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3893
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3894
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 3895
    .local v0, "a":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3896
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3892
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 3859
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 3860
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 3861
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3831
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3902
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3836
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Arrays$ArrayList;, "Ljava/util/Arrays$ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 3842
    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    move-result v0

    .line 3843
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 3844
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 3845
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3844
    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 3846
    :cond_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3847
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 3848
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 3849
    :cond_1
    return-object p1
.end method
