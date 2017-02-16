.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    sparse-switch p0, :sswitch_data_0

    .line 76
    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 51
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 54
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    .line 55
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 58
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    .line 59
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 62
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_3
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    .line 63
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 66
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_4
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    .line 67
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 70
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    .line 71
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 48
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
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 115
    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>(Landroid/os/Parcel;)V

    .line 90
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 93
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_1
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>(Landroid/os/Parcel;)V

    .line 94
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 97
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_2
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>(Landroid/os/Parcel;)V

    .line 98
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 101
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_3
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>(Landroid/os/Parcel;)V

    .line 102
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 105
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_4
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>(Landroid/os/Parcel;)V

    .line 106
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 109
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .end local v0    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>(Landroid/os/Parcel;)V

    .line 110
    .local v0, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_0

    .line 87
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
