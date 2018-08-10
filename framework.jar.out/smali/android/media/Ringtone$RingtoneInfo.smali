.class Landroid/media/Ringtone$RingtoneInfo;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneInfo"
.end annotation


# instance fields
.field private mHighlightOffset:I

.field private mIsExternalRingtone:Z

.field private mIsUsingRingtoneCache:Z

.field private mRingtoneUri:Landroid/net/Uri;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    iput v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    iput-boolean v1, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    iput v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    return-void
.end method

.method protected static parse(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone$RingtoneInfo;
    .locals 11

    const/4 v10, 0x1

    new-instance v2, Landroid/media/Ringtone$RingtoneInfo;

    invoke-direct {v2}, Landroid/media/Ringtone$RingtoneInfo;-><init>()V

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    iput v3, v2, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    iput-boolean v10, v2, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    invoke-static {v3}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v7, v5, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_0
    const-string/jumbo v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Change URI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v2, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/media/RingtoneManager;->isExternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    :cond_0
    const/4 v7, 0x0

    iput v7, v2, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    return-object v2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v4, p1

    goto :goto_0

    :cond_3
    iput-boolean v10, v2, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    :try_start_0
    const-string/jumbo v7, "highlight_offset"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "highlightoffset is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v7, "Ringtone"

    const-string/jumbo v8, "Failed get highlight offset"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected getHighlightOffset()I
    .locals 1

    iget v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    return v0
.end method

.method protected getType()I
    .locals 1

    iget v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    return v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected isExternalRingtone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    return v0
.end method

.method protected isUsingRingtoneCache()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    return v0
.end method
