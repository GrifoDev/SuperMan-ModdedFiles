.class Ljava/util/LinkedHashMap$LinkedHashMapEntry;
.super Ljava/util/HashMap$HashMapEntry;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    return-void
.end method

.method private addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
.end method

.method private remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
.end method


# virtual methods
.method recordAccess(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get0(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljava/util/LinkedHashMap;->modCount:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->remove()V

    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    :cond_0
    return-void
.end method

.method recordRemoval(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->remove()V

    return-void
.end method
