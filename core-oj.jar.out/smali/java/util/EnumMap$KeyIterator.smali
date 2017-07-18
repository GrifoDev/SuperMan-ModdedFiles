.class Ljava/util/EnumMap$KeyIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeyIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EnumMap$KeyIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    iput v0, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    iget-object v0, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
