.class public abstract Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "SocialNetworkServiceItem"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract getAppIconResourceId()I
.end method

.method public abstract getMessageColumnName()Ljava/lang/String;
.end method

.method public abstract getUpdateColumnName()Ljava/lang/String;
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    iput-object p3, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getAppIconResourceId()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mIconRes:I

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getMessageColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mContent:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getUpdateColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method protected setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mUpdateTime:J

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mUpdateTime:J

    const-wide/32 v4, 0x5265c00

    const-wide/32 v6, 0x240c8400

    const/high16 v8, 0x40000

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mOptionalDate:Ljava/lang/String;

    :cond_0
    return-void
.end method
