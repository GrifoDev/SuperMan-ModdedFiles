.class final Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterBufferPool"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x3


# instance fields
.field private fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fExternalBufferSize:I

.field private fExternalTop:I

.field private fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fInternalBufferSize:I

.field private fInternalTop:I

.field private fPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    iput p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    return-void
.end method


# virtual methods
.method public getBuffer(Z)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    if-gt v0, v1, :cond_2

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    if-gt v0, v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V
    .locals 2

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aput-object p1, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setExternalBufferSize(I)V
    .locals 1

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    return-void
.end method
