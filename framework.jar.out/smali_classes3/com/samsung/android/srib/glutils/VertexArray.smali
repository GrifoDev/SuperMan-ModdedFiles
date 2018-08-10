.class public Lcom/samsung/android/srib/glutils/VertexArray;
.super Ljava/lang/Object;
.source "VertexArray.java"


# instance fields
.field BYTES_PER_FLOAT:I

.field private final floatBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/srib/glutils/VertexArray;->BYTES_PER_FLOAT:I

    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/srib/glutils/VertexArray;->BYTES_PER_FLOAT:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/srib/glutils/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public setVertexAttribPointer(IIII)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/glutils/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/samsung/android/srib/glutils/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    move v0, p2

    move v1, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/glutils/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
