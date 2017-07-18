.class Lsun/nio/ch/IOVecWrapper;
.super Ljava/lang/Object;
.source "IOVecWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/IOVecWrapper$Deallocator;
    }
.end annotation


# static fields
.field private static final BASE_OFFSET:I

.field private static final LEN_OFFSET:I

.field private static final SIZE_IOVEC:I

.field static addressSize:I

.field private static final cached:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/IOVecWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final address:J

.field private final buf:[Ljava/nio/ByteBuffer;

.field private final position:[I

.field private final remaining:[I

.field private final shadow:[Ljava/nio/ByteBuffer;

.field private final size:I

.field private final vecArray:Lsun/nio/ch/AllocatedNativeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    sput v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    sput v0, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    sget v0, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    sput v0, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/nio/ch/IOVecWrapper;->size:I

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    new-array v0, p1, [I

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    iput-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/NativeObject;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/ch/IOVecWrapper;->address:J

    return-void
.end method

.method static get(I)Lsun/nio/ch/IOVecWrapper;
    .locals 3

    sget-object v1, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/IOVecWrapper;

    if-eqz v0, :cond_0

    iget v1, v0, Lsun/nio/ch/IOVecWrapper;->size:I

    if-ge v1, p0, :cond_0

    iget-object v1, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lsun/nio/ch/IOVecWrapper;

    invoke-direct {v0, p0}, Lsun/nio/ch/IOVecWrapper;-><init>(I)V

    new-instance v1, Lsun/nio/ch/IOVecWrapper$Deallocator;

    iget-object v2, v0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-direct {v1, v2}, Lsun/nio/ch/IOVecWrapper$Deallocator;-><init>(Lsun/nio/ch/AllocatedNativeObject;)V

    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    sget-object v1, Lsun/nio/ch/IOVecWrapper;->cached:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method clearRefs(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, p1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aput-object v1, v0, p1

    return-void
.end method

.method getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getPosition(I)I
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    aget v0, v0, p1

    return v0
.end method

.method getRemaining(I)I
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    aget v0, v0, p1

    return v0
.end method

.method getShadow(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method putBase(IJ)V
    .locals 4

    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x0

    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/NativeObject;->putInt(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    goto :goto_0
.end method

.method putLen(IJ)V
    .locals 4

    sget v1, Lsun/nio/ch/IOVecWrapper;->SIZE_IOVEC:I

    mul-int/2addr v1, p1

    sget v2, Lsun/nio/ch/IOVecWrapper;->LEN_OFFSET:I

    add-int v0, v1, v2

    sget v1, Lsun/nio/ch/IOVecWrapper;->addressSize:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/NativeObject;->putInt(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/IOVecWrapper;->vecArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2, p3}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    goto :goto_0
.end method

.method setBuffer(ILjava/nio/ByteBuffer;II)V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->buf:[Ljava/nio/ByteBuffer;

    aput-object p2, v0, p1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->position:[I

    aput p3, v0, p1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->remaining:[I

    aput p4, v0, p1

    return-void
.end method

.method setShadow(ILjava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper;->shadow:[Ljava/nio/ByteBuffer;

    aput-object p2, v0, p1

    return-void
.end method
