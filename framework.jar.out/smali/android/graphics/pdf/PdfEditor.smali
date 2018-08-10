.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private final mNativeDocument:J

.field private mPageCount:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "input cannot be null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v6, 0x0

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v4, v6, v7, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    sget-object v4, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    iget-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    move-result v1

    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v4, "close"

    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "file descriptor not seekable"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method private doClose()V
    .locals 4

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native nativeOpen(IJ)J
.end method

.method private static native nativeRemovePage(JI)I
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private static native nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native nativeWrite(JI)V
.end method

.method private throwIfClosed()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Matrix must be afine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outCropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outMediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outSize cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getPageCount()I
    .locals 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    return v0
.end method

.method public getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPageSize(ILandroid/graphics/Point;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removePage(I)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    if-nez p2, :cond_0

    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_0
    if-nez p3, :cond_1

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v9}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    sget-object v10, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    iget v7, v9, Landroid/graphics/Point;->x:I

    iget v8, v9, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_1
    sget-object v10, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    move v2, p1

    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 4

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method
