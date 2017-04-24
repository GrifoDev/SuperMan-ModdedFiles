.class Lcom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    iput-boolean p2, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v4, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method
