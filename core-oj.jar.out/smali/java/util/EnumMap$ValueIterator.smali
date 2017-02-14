.class Ljava/util/EnumMap$ValueIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$ValueIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap$ValueIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    iput v0, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    iget-object v0, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
