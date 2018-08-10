.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_3

    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    move v1, v0

    :cond_6
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    if-nez p0, :cond_2

    const/4 v2, -0x1

    :goto_0
    if-nez p1, :cond_3

    const/4 v3, -0x1

    :goto_1
    if-nez p0, :cond_4

    const/4 v4, -0x1

    :goto_2
    if-nez p1, :cond_5

    const/4 v5, -0x1

    :goto_3
    if-eq v2, v9, :cond_0

    if-ne v4, v9, :cond_6

    :cond_0
    const/4 v6, 0x0

    const v0, 0x7fffffff

    :goto_4
    if-eq v3, v9, :cond_1

    if-ne v5, v9, :cond_7

    :cond_1
    const/4 v7, 0x0

    const v1, 0x7fffffff

    :goto_5
    if-gt v6, v7, :cond_8

    if-gt v7, v0, :cond_8

    return v10

    :cond_2
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    :cond_6
    mul-int v6, v4, v2

    add-int v8, v6, v4

    add-int/lit8 v0, v8, -0x1

    goto :goto_4

    :cond_7
    mul-int v7, v5, v3

    add-int v8, v7, v5

    add-int/lit8 v1, v8, -0x1

    goto :goto_5

    :cond_8
    if-gt v6, v1, :cond_9

    if-gt v1, v0, :cond_9

    return v10

    :cond_9
    const/4 v8, 0x0

    return v8
.end method
