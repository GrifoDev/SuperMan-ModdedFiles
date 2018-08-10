.class Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/os/AsyncTask;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintAttributes;ILandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;

    iput p7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    iput-object p8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 14

    const/4 v13, 0x0

    :try_start_0
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v9}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_0

    return-object v13

    :cond_0
    new-instance v7, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v7, v9, v10}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v11, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v11}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v9}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    return-object v13

    :cond_1
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v7, v9}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v6

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-boolean v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v9, :cond_4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    invoke-static {v9, v10, v11, v0, v12}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap2(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-boolean v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v9, :cond_7

    :goto_1
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v7, v6}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v9}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_8

    :try_start_2
    invoke-virtual {v7}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v9, :cond_2

    :try_start_3
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_2
    :try_start_4
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v5, v9, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v13

    :cond_4
    :try_start_5
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v9, v9, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v1, v9, v10}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v7}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v10, :cond_5

    :try_start_7
    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_3
    :try_start_8
    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v5, v10, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw v9
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v8

    return-object v8

    :cond_7
    :try_start_9
    iget v9, v0, Landroid/graphics/RectF;->left:F

    iget v10, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_1

    :cond_8
    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v7, v9}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v7}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v9, :cond_9

    :try_start_b
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :cond_9
    :goto_4
    :try_start_c
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v5, v9, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :cond_a
    return-object v13

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "PrintHelperKitkat"

    const-string/jumbo v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
