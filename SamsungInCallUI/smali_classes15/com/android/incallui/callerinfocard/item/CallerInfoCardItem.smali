.class public abstract Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.super Ljava/lang/Object;
.source "CallerInfoCardItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfoCardItem"


# instance fields
.field protected final ONE_DAY_MILLIS:J

.field protected mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

.field protected mAppType:I

.field protected mContent:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

.field protected mDate:Ljava/lang/String;

.field protected mDeleted:Z

.field protected mIconRes:I

.field protected mOptionalDate:Ljava/lang/String;

.field protected mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->ONE_DAY_MILLIS:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->ONE_DAY_MILLIS:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->build(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private build(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    move-object v0, p4

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    if-nez v0, :cond_0

    const-string v0, "CallerInfoCardItem"

    const-string v1, "mCookieWrapper is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    if-nez p3, :cond_1

    const-string v0, "CallerInfoCardItem"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->deleteItem()V

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I

    move-result v0

    return v0
.end method

.method protected final deleteItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    check-cast p1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getAppType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    return v0
.end method

.method public final getIconRes()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mIconRes:I

    return v0
.end method

.method public final getOptionalDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    return-wide v0
.end method

.method protected getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x3

    const-wide/32 v10, 0x5265c00

    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const-string v0, "CallerInfoCardItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateTimeString: after - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    add-long v0, p2, v10

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, p2

    move-wide v4, v10

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v6, 0x1

    :goto_1
    const/16 v0, 0x8

    if-ge v6, v0, :cond_3

    int-to-long v0, v6

    mul-long/2addr v0, v10

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v7, 0x1

    :cond_3
    if-eqz v7, :cond_5

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardDateUtils;->getLocalizedDateFormat(Landroid/content/Context;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    goto :goto_2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAppType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mIconRes:I

    return-void
.end method

.method protected abstract setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
.end method

.method protected setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "appType"

    iget v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mAppType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "deleted"

    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDeleted:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "date"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "updateTime"

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
