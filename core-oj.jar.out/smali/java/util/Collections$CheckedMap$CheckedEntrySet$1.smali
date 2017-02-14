.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

.field final synthetic val$i:Ljava/util/Iterator;

.field final synthetic val$valueType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$2:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    iput-object p3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
