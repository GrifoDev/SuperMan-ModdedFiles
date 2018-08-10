.class public Lcom/samsung/android/content/clipboard/data/SemTextClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemTextClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemTextClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mNumberOfTrailingWhiteLines:I

.field private transient mText:Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    iput v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private setClipData()V
    .locals 5

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/plain"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v3, "clipboarddragNdrop"

    invoke-direct {v0, v3, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "SemTextClipData"

    const-string/jumbo v4, "text equals"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    instance-of v3, p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    if-nez v3, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setNumberOfTrailingWhiteLines(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 3

    const/high16 v2, 0x20000

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    return v0
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toLoad()V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x20000

    if-le v4, v5, :cond_0

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/sec/clipboard/util/HtmlUtils;->isHtml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v5, "&#10;"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v5, "&#10;"

    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    if-le v3, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    sub-int v1, v3, v4

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    :cond_4
    const-string/jumbo v4, "SemTextClipData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SemTextClipData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public toSave()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mNumberOfTrailingWhiteLines:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v1, "SemTextClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mText is an instance of Spanned: mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    const-string/jumbo v1, "SemTextClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mText is not an instance of Spanned: mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemTextClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "SemTextClipData"

    const-string/jumbo v1, "text write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
