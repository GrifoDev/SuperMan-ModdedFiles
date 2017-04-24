.class public Lcom/android/incallui/callerinfocard/item/EmailItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "EmailItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailItem"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 4

    const/4 v2, -0x1

    const v1, 0x7f02036a

    iput v1, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mIconRes:I

    const-string v1, "subject"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mContent:Ljava/lang/String;

    :cond_0
    const-string v1, "timeStamp"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/EmailItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mDate:Ljava/lang/String;

    :cond_1
    return-void
.end method
