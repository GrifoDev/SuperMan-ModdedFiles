.class Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "TypefaceCompatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/TypefaceCompatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method
