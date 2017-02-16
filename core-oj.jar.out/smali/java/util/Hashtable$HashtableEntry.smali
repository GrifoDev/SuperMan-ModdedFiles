.class Ljava/util/Hashtable$HashtableEntry;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashtableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p1, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    .line 1066
    iput-object p2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 1067
    iput-object p3, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1068
    iput-object p4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1064
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 1072
    new-instance v1, Ljava/util/Hashtable$HashtableEntry;

    iget v2, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    iget-object v3, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1073
    iget-object v5, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    if-nez v5, :cond_0

    .line 1072
    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    return-object v1

    .line 1073
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    invoke-virtual {v0}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 1096
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 1097
    return v1

    :cond_0
    move-object v0, p1

    .line 1098
    check-cast v0, Ljava/util/Map$Entry;

    .line 1100
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1079
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

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
    .line 1083
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1104
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

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
    .line 1087
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 1088
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1090
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1091
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1092
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1108
    .local p0, "this":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable<TK;TV;>.HashtableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
