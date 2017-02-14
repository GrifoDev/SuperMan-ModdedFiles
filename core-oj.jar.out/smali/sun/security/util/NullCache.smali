.class Lsun/security/util/NullCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/util/NullCache;

    invoke-direct {v0}, Lsun/security/util/NullCache;-><init>()V

    sput-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lsun/security/util/Cache$CacheVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setCapacity(I)V
    .locals 0

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
