.class Lsun/misc/SoftCache$Entry;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;

.field final synthetic this$0:Lsun/misc/SoftCache;

.field private value:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lsun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    return-object v0
.end method

.method constructor <init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    iput-object p3, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lsun/misc/SoftCache;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/SoftCache;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lsun/misc/SoftCache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    :goto_1
    xor-int/2addr v1, v2

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    invoke-static {v2}, Lsun/misc/SoftCache;->-get1(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
