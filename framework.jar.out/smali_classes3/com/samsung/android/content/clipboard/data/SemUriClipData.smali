.class public Lcom/samsung/android/content/clipboard/data/SemUriClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemUriClipData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemUriClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mThumbnailFilePath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private setClipData()V
    .locals 5

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/uri-list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v3, "MultiWindow_DragDrop"

    invoke-direct {v0, v3, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "SemUriClipData"

    const-string/jumbo v4, "uri equals"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    instance-of v3, p1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    if-nez v3, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v4
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isImagefile()Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;

    invoke-direct {v2, v4}, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;-><init>(Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isImagefile(Ljava/io/File;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;-><init>(Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    return-void
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :pswitch_0
    instance-of v2, p2, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public setThumbnailPath(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v2, "SemUriClipData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreviewImgPath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->isImagefile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    const-string/jumbo v2, "SemUriClipData"

    const-string/jumbo v3, "SemUriClipData : value is no file path or not image file"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemUriClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "SemUriClipData"

    const-string/jumbo v1, "Uri write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->mThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
