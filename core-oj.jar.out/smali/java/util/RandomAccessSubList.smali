.class Ljava/util/RandomAccessSubList;
.super Ljava/util/SubList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/SubList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/RandomAccessSubList;-><init>(Ljava/util/AbstractList;II)V

    return-object v0
.end method
