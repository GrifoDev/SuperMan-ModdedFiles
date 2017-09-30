.class public Lcom/android/incallui/callerinfocard/item/EmailItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;


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
    .locals 2

    const/4 v1, -0x1

    const v0, 0x7f020423

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mIconRes:I

    const-string v0, "subject"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mContent:Ljava/lang/String;

    :cond_0
    const-string v0, "timeStamp"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mUpdateTime:J

    iget-wide v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/incallui/callerinfocard/item/EmailItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/EmailItem;->mDate:Ljava/lang/String;

    :cond_1
    return-void
.end method
