.class public Lcom/android/incallui/callerinfocard/item/ProfileItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "ProfileItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileItem"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mAppType:I

    .line 34
    const v0, 0x7f020368

    iput v0, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mIconRes:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 43
    const v1, 0x7f020368

    iput v1, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mIconRes:I

    .line 44
    const-string v1, "sync4"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/ProfileItem;->mContent:Ljava/lang/String;

    .line 48
    :cond_0
    return-void
.end method
