.class final Landroid/graphics/pdf/PdfDocument$PdfCanvas;
.super Landroid/graphics/Canvas;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PdfCanvas"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Landroid/graphics/pdf/PdfDocument;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfDocument;
    .param p2, "nativeCanvas"    # J

    .prologue
    .line 251
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$PdfCanvas;->this$0:Landroid/graphics/pdf/PdfDocument;

    .line 252
    invoke-direct {p0, p2, p3}, Landroid/graphics/Canvas;-><init>(J)V

    .line 251
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
