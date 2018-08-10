.class public Lcom/samsung/android/content/clipboard/data/SemIntentClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemIntentClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemIntentClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private setClipData()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "text/vnd.android.intent"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v5, "clipboarddragNdrop"

    invoke-direct {v0, v5, v4, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData(Landroid/content/ClipData;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const-string/jumbo v2, "SemIntentClipData"

    const-string/jumbo v3, "intent equals"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public setIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemIntentClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "SemIntentClipData"

    const-string/jumbo v1, "Intent write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
