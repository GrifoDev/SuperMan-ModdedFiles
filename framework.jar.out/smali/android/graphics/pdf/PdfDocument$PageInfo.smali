.class public final Landroid/graphics/pdf/PdfDocument$PageInfo;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    }
.end annotation


# instance fields
.field private mContentRect:Landroid/graphics/Rect;

.field private mPageHeight:I

.field private mPageNumber:I

.field private mPageWidth:I


# direct methods
.method static synthetic -get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return v0
.end method

.method static synthetic -get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return v0
.end method

.method static synthetic -set0(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return p1
.end method

.method static synthetic -set2(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return p1
.end method

.method static synthetic -set3(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0

    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return v0
.end method
