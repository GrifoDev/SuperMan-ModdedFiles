.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private mNativePicture:J

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 39
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativePicture"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Picture;->mNativePicture:J

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Picture;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Picture;->mNativePicture:J

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 48
    return-void

    .line 49
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Picture;-><init>(J)V

    return-object v0
.end method

.method private static native nativeBeginRecording(JII)J
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeDraw(JJ)V
.end method

.method private static native nativeEndRecording(J)V
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeWriteToStream(JLjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 78
    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(JII)J

    move-result-wide v0

    .line 79
    .local v0, "ni":J
    new-instance v2, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;J)V

    iput-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 80
    iget-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Picture;->nativeDraw(JJ)V

    .line 125
    return-void
.end method

.method public endRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 91
    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 92
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeEndRecording(J)V

    .line 89
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDestructor(J)V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 60
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    .line 173
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 172
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Picture;->nativeWriteToStream(JLjava/io/OutputStream;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 167
    :cond_1
    return-void
.end method
