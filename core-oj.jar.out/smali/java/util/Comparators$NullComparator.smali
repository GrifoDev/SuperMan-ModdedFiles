.class final Ljava/util/Comparators$NullComparator;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final nullFirst:Z

.field private final real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .param p1, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p2, "real":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    .line 73
    iput-object p2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    .line 71
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 78
    if-nez p1, :cond_2

    .line 79
    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 80
    :cond_2
    if-nez p2, :cond_4

    .line 81
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v1

    goto :goto_1

    .line 83
    :cond_4
    iget-object v1, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v1, :cond_5

    :goto_2
    return v0

    :cond_5
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_2
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    const/4 v1, 0x0

    .line 95
    new-instance v2, Ljava/util/Comparators$NullComparator;

    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v3, :cond_1

    :goto_1
    invoke-direct {v2, v0, v1}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v2

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    goto :goto_1
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_0

    .end local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0

    .restart local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v2, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_0
.end method
