.class public Lcom/android/incallui/callerinfocard/item/ProfileItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "ProfileItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileItem"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mAppType:I

    const v0, 0x7f02037b

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    const v1, 0x7f02037b

    iput v1, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mIconRes:I

    const-string v1, "sync4"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mContent:Ljava/lang/String;

    :cond_0
    return-void
.end method
