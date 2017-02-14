.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    goto :goto_0

    nop

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

.method public static createClipBoardData(Landroid/os/Parcel;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    nop

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
