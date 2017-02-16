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
    .param p1, "size"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 48
    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    .line 47
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .locals 4
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 54
    aget-object v1, p1, p2

    .line 55
    .local v1, "ob":Ljava/lang/Object;
    move v0, p2

    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_0

    .line 56
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v0

    .line 55
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    :cond_0
    aput-object v1, p1, v3

    .line 53
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 64
    .local v1, "oa":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 65
    iget v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v1, v3, [Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "ob":Ljava/lang/Object;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object v2, v1, v3

    .line 83
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v3}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 84
    return-object v2

    .line 68
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 69
    aget-object v2, v1, v0

    .line 70
    .restart local v2    # "ob":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    if-lez v0, :cond_4

    .line 74
    invoke-direct {p0, v1, v0}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 75
    :cond_4
    return-object v2
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
