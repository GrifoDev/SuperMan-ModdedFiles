.class public final Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument$PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>(Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pageNumber must be non negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set3(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set1(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set2(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set0(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    .locals 2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentRect does not fit the page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set0(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-object p0
.end method
