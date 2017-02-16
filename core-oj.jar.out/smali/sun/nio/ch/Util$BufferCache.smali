.class Lsun/nio/ch/Util$BufferCache;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferCache"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private count:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    .line 64
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 78
    return-void
.end method

.method private next(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 75
    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 87
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v4, :cond_0

    .line 88
    return-object v5

    .line 90
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 93
    .local v2, "buffers":[Ljava/nio/ByteBuffer;
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v1, v2, v4

    .line 94
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, p1, :cond_5

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 97
    .local v3, "i":I
    :cond_1
    invoke-direct {p0, v3}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v3

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    if-eq v3, v4, :cond_2

    .line 98
    aget-object v0, v2, v3

    .line 99
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    .line 106
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 107
    return-object v5

    .line 101
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p1, :cond_1

    .line 102
    move-object v1, v0

    .line 103
    .local v1, "buf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 109
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_4
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    .line 113
    .end local v3    # "i":I
    :cond_5
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object v5, v2, v4

    .line 114
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v4}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v4

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 115
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 119
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    return-object v1
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method offerFirst(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 124
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 128
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object p1, v0, v1

    .line 129
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method offerLast(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 135
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 136
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/2addr v1, v2

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    rem-int v0, v1, v2

    .line 139
    .local v0, "next":I
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    aput-object p1, v1, v0

    .line 140
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 141
    const/4 v1, 0x1

    return v1
.end method

.method removeFirst()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-boolean v2, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 151
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v0, v1, v2

    .line 152
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 153
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 154
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 155
    return-object v0
.end method
