.class public abstract Lcom/google/a/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/a/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/a/b/x",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/a/b/x;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/a/b/x;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/b/g;

    invoke-direct {v0, p0}, Lcom/google/a/b/g;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/a/a/a;)Lcom/google/a/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/a/a",
            "<TF;+TT;>;)",
            "Lcom/google/a/b/x",
            "<TF;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/d;

    invoke-direct {v0, p1, p0}, Lcom/google/a/b/d;-><init>(Lcom/google/a/a/a;Lcom/google/a/b/x;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
