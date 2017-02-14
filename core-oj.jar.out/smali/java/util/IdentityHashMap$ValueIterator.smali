.class Ljava/util/IdentityHashMap$ValueIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<TK;TV;>.IdentityHashMapIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/IdentityHashMap$ValueIterator;->this$0:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$ValueIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/IdentityHashMap$ValueIterator;->traversalTable:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueIterator;->nextIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
