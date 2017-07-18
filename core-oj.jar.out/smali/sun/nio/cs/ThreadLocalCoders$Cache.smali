.class abstract Lsun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/lang/ThreadLocal;

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    aget-object v1, p1, p2

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aput-object v1, p1, v3

    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_1

    iget v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v0, :cond_4

    invoke-direct {p0, v1, v0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    :cond_4
    return-object v2
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
