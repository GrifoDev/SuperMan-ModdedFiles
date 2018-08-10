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

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->mFirstImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    return-object v0
.end method
