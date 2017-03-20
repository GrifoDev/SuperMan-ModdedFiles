.class public Lcom/android/incallui/callerinfocard/item/CallerInfoCardItemManager;
.super Ljava/lang/Object;
.source "CallerInfoCardItemManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v0, p3

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget v0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    sparse-switch v0, :sswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :sswitch_0
    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :sswitch_1
    new-instance v0, Lcom/android/incallui/callerinfocard/item/BirthdayItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/BirthdayItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :sswitch_2
    new-instance v0, Lcom/android/incallui/callerinfocard/item/AnniversaryItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/AnniversaryItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :sswitch_3
    new-instance v0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :sswitch_4
    new-instance v0, Lcom/android/incallui/callerinfocard/item/MemoItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/MemoItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :sswitch_5
    new-instance v0, Lcom/android/incallui/callerinfocard/item/MessageItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/MessageItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :sswitch_6
    new-instance v0, Lcom/android/incallui/callerinfocard/item/EmailItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/EmailItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :sswitch_7
    new-instance v0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
