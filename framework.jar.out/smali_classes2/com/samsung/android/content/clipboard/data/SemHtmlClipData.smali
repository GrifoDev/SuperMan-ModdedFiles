.class public Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemHtmlClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHtmlClipData"

.field private static final regex:Ljava/lang/String; = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

.field private static final regex2:Ljava/lang/String; = "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHtml:Ljava/lang/String;

.field private mPlainText:Ljava/lang/String;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method private setClipData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 133
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 134
    .local v2, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v3, v4, v7, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 135
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, v7, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 136
    .local v0, "data":Landroid/content/ClipData;
    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 277
    const-string/jumbo v2, "SemHtmlClipData"

    const-string/jumbo v3, "html equals"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    return v1

    .line 283
    :cond_0
    instance-of v2, p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    if-nez v2, :cond_1

    .line 284
    return v1

    :cond_1
    move-object v0, p1

    .line 287
    nop

    nop

    .line 288
    .local v0, "trgData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData()V

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 308
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 309
    return-object v1

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    return-object v4

    .line 316
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, "file":Ljava/io/File;
    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    return-object v4
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailBitmap(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 215
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v4

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "Result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 221
    const-string/jumbo v4, "SemHtmlClipData"

    const-string/jumbo v5, "getThumbnailBitmap : Data is empty."

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-object v0

    .line 225
    :cond_1
    const-string/jumbo v2, ""

    .line 227
    .local v2, "sFileName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 234
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_2

    .line 235
    const-string/jumbo v4, "SemHtmlClipData"

    const-string/jumbo v5, "getThumbnailBitmap : FileName is empty."

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-object v0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 246
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 247
    return-object v0

    .line 240
    .restart local v0    # "Result":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_4

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "substring":Ljava/lang/String;
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "Result":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 244
    .end local v3    # "substring":Ljava/lang/String;
    .local v0, "Result":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "Result":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public getThumbnailFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    return-object v0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 295
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 297
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SemHtmlClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 113
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 114
    :cond_0
    return v3

    .line 117
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    .line 129
    .end local v0    # "result":Z
    .end local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_0
    return v0

    .line 119
    .restart local v0    # "result":Z
    .restart local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :pswitch_1
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .end local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 122
    .restart local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :pswitch_2
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .end local p2    # "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 123
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_0

    .local v0, "result":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setClipboardDataHtml(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "plain"    # Ljava/lang/String;
    .param p3, "firstImg"    # Landroid/graphics/Bitmap;
    .param p4, "firstImgPath"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 106
    iput-object p4, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setHtml(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 151
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    return v1

    .line 155
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 156
    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 159
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "SemHtmlClipData"

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    const-string/jumbo v1, "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 171
    :goto_0
    const-string/jumbo v0, "SemHtmlClipData"

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 174
    iput-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 176
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    return v4

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v5, :cond_2

    .line 194
    :cond_1
    const-string/jumbo v2, "SemHtmlClipData"

    const-string/jumbo v3, "filePath is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v4

    .line 197
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "tempFile":Ljava/io/File;
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 201
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const-string/jumbo v2, "SemHtmlClipData"

    const-string/jumbo v3, "setHtmlWithImagePath : value is GOOD file path."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v5

    .line 202
    :cond_3
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 203
    const-string/jumbo v2, "SemHtmlClipData"

    const-string/jumbo v3, "setHtmlWithImagePath : value is no file descriptor ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4
    return v4
.end method

.method public setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    .line 184
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setThumbnailImagePath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 253
    :cond_0
    return v4

    .line 256
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    .line 257
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 259
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    return v3

    .line 262
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 263
    const-string/jumbo v2, "SemHtmlClipData"

    const-string/jumbo v3, "ClipboardDataHtml : value is no file descriptor ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemHtmlClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 331
    const-string/jumbo v0, "SemHtmlClipData"

    const-string/jumbo v1, "html write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mPlainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->mThumbnailImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    return-void
.end method
