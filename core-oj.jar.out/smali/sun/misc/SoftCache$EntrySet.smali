.class Lsun/misc/SoftCache$EntrySet;
.super Ljava/util/AbstractSet;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field hashEntries:Ljava/util/Set;

.field final synthetic this$0:Lsun/misc/SoftCache;


# direct methods
.method private constructor <init>(Lsun/misc/SoftCache;)V
    .locals 1

    iput-object p1, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    invoke-static {v0}, Lsun/misc/SoftCache;->-get0(Lsun/misc/SoftCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/SoftCache;Lsun/misc/SoftCache$EntrySet;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/misc/SoftCache$EntrySet;-><init>(Lsun/misc/SoftCache;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lsun/misc/SoftCache$EntrySet$1;

    invoke-direct {v0, p0}, Lsun/misc/SoftCache$EntrySet$1;-><init>(Lsun/misc/SoftCache$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    invoke-static {v0}, Lsun/misc/SoftCache;->-wrap1(Lsun/misc/SoftCache;)V

    instance-of v0, p1, Lsun/misc/SoftCache$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    nop

    nop

    invoke-static {p1}, Lsun/misc/SoftCache$Entry;->-get0(Lsun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method
