.class public Lcom/android/internal/util/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/Predicates$AndPredicate;,
        Lcom/android/internal/util/Predicates$NotPredicate;,
        Lcom/android/internal/util/Predicates$OrPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/Predicates$AndPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/android/internal/util/Predicates$AndPredicate;)V

    return-object v0
.end method

.method public static varargs and([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Predicates;->and(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/Predicates$NotPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$NotPredicate;-><init>(Lcom/android/internal/util/Predicate;Lcom/android/internal/util/Predicates$NotPredicate;)V

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/Predicates$OrPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/android/internal/util/Predicates$OrPredicate;)V

    return-object v0
.end method

.method public static varargs or([Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/android/internal/util/Predicate",
            "<-TT;>;)",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Predicates;->or(Ljava/lang/Iterable;)Lcom/android/internal/util/Predicate;

    move-result-object v0

    return-object v0
.end method
