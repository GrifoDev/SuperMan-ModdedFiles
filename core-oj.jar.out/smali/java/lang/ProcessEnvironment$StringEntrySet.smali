.class Ljava/lang/ProcessEnvironment$StringEntrySet;
.super Ljava/util/AbstractSet;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-void
.end method

.method private static vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;

    if-eqz v0, :cond_0

    nop

    nop

    invoke-static {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->-get0(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    nop

    nop

    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
