.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3330
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    .line 3332
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    .line 3330
    return-void
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 3347
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempt to insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3348
    const-string/jumbo v1, " value into map with value type "

    .line 3347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3348
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    .line 3347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3352
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    if-ne p1, p0, :cond_0

    .line 3353
    const/4 v0, 0x1

    return v0

    .line 3354
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 3355
    const/4 v0, 0x0

    return v0

    .line 3356
    :cond_1
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 3357
    check-cast p1, Ljava/util/Map$Entry;

    .line 3356
    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3335
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3336
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3337
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3341
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3343
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3342
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3338
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>.CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
