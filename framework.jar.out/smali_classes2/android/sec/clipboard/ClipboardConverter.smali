.class public Landroid/sec/clipboard/ClipboardConverter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ClipboardConverter"

    sput-object v0, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClipDataToClipboardData(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    return-object v11

    :cond_1
    invoke-static {p0}, Landroid/sec/clipboard/ClipboardConverter;->getFormatID(Landroid/content/ClipData;)I

    move-result v3

    const/4 v2, 0x0

    sparse-switch v3, :sswitch_data_0

    sget-object v9, Landroid/sec/clipboard/ClipboardConverter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "default : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :sswitch_0
    new-instance v6, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v6}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    :cond_2
    invoke-virtual {v6, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v6

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {v1, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v1

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    :cond_4
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v0

    goto :goto_0

    :sswitch_3
    new-instance v7, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v7}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    :cond_5
    invoke-virtual {v7, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_4
    new-instance v4, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v4}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z

    :cond_6
    invoke-virtual {v4, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v4

    goto/16 :goto_0

    :sswitch_5
    new-instance v8, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v8}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    invoke-static {p0}, Landroid/sec/clipboard/ClipboardConverter;->getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v8, v5}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    :cond_7
    invoke-virtual {v8, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData(Landroid/content/ClipData;)V

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static ClipboardDataToClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFormatID(Landroid/content/ClipData;)I
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/sec/clipboard/ClipboardConverter;->isImagefile(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-ne v0, v9, :cond_a

    if-ne v2, v9, :cond_6

    const/4 v1, 0x4

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-ne v5, v9, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    if-ne v7, v9, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_8
    if-ne v4, v9, :cond_9

    const/16 v1, 0x8

    goto :goto_1

    :cond_9
    if-ne v6, v9, :cond_5

    const/16 v1, 0x10

    goto :goto_1

    :cond_a
    const/16 v1, 0x20

    goto :goto_1
.end method

.method private static getUriList(Landroid/content/ClipData;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static isImagefile(Landroid/net/Uri;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;

    invoke-direct {v1, v3}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>(Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;)V

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
