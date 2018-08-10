.class public Lcom/sec/ims/im/ImStickerData;
.super Ljava/lang/Object;
.source "ImStickerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/im/ImStickerData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/im/ImStickerData;",
            ">;"
        }
    .end annotation
.end field

.field private static final contentType:Ljava/lang/String; = "application/vnd.gsma.rcs-sticker+xml"


# instance fields
.field private final innerUri:Ljava/lang/String;

.field private isSticker:Z

.field private mStickerId:Ljava/lang/String;

.field private mStickerItemId:Ljava/lang/String;

.field private mStickerItemName:Ljava/lang/String;

.field private mStickerItemThumbnailUri:Ljava/lang/String;

.field private mStickerItemThumbnailUrl:Ljava/lang/String;

.field private mStickerItemUri:Ljava/lang/String;

.field private mStickerItemUrl:Ljava/lang/String;

.field private mStickerName:Ljava/lang/String;

.field private mStickerNums:Ljava/lang/String;

.field private mStickerThumbnail:Ljava/lang/String;

.field private mStickerUntil:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/im/ImStickerData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImStickerData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImStickerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    const-string/jumbo v1, "content://com.samsung.rcs.im/getstickerfile/"

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->innerUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    const-string/jumbo v8, "content://com.samsung.rcs.im/getstickerfile/"

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->innerUri:Ljava/lang/String;

    const-string/jumbo v6, ""

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-eq v2, v10, :cond_4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "set"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "id"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    const-string/jumbo v8, "until"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v8, "item"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "id"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    const-string/jumbo v8, "url"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    const-string/jumbo v8, "thumbnail"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_3
    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "thumbnail"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v8, "nums"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://com.samsung.rcs.im/getstickerfile/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://com.samsung.rcs.im/getstickerfile/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    const-string/jumbo v0, "content://com.samsung.rcs.im/getstickerfile/"

    iput-object v0, p0, Lcom/sec/ims/im/ImStickerData;->innerUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public static getContentType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "application/vnd.gsma.rcs-sticker+xml"

    return-object v0
.end method

.method private urlToUriParser(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    :cond_0
    const-string/jumbo v5, "[?&=]"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const-string/jumbo v4, ""

    if-eqz v3, :cond_4

    array-length v5, v3

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    const/4 v2, 0x1

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_5

    aget-object v5, v3, v2

    const-string/jumbo v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget-object v1, v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-object v0, v3, v5

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string/jumbo v5, ""

    return-object v5

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStickerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemThumbnailUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerNums()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerUntil()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    return-object v0
.end method

.method public isSticker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return v0
.end method

.method public setSticker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return-void
.end method

.method public setStickerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemThumbnailUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    return-void
.end method

.method public setStickerItemUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    return-void
.end method

.method public setStickerNums(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    return-void
.end method

.method public setStickerThumbnail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setStickerUntil(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImStickerData [mStickerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemThumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStickerItemThumbnailUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
