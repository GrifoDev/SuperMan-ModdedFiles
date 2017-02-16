.class public Landroid/sec/clipboard/data/list/ClipboardDataHtml;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHtml.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mFirstImgPath:Ljava/lang/String;

.field private mHtml:Ljava/lang/String;

.field private mPlainText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    .line 53
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    move-object v1, v0

    .line 54
    nop

    nop

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    move-object v1, v0

    .line 55
    nop

    nop

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 56
    return-object v0
.end method
