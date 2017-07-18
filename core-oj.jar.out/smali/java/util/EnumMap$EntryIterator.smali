.class Ljava/util/EnumMap$EntryIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EntryIterator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntryIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/EnumMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$EntryIterator$Entry;)V

    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    invoke-super {p0}, Ljava/util/EnumMap$EnumMapIterator;->remove()V

    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    invoke-static {v0, v1}, Ljava/util/EnumMap$EntryIterator$Entry;->-set0(Ljava/util/EnumMap$EntryIterator$Entry;I)I

    iput-object v2, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    invoke-static {v0}, Ljava/util/EnumMap$EntryIterator$Entry;->-get0(Ljava/util/EnumMap$EntryIterator$Entry;)I

    move-result v0

    goto :goto_0
.end method
