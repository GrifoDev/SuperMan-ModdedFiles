.class public Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;
.super Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.source "SocialNetworkServiceGooglePlusItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAppIconResourceId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f020362

    return v0
.end method

.method public getMessageColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "message"

    return-object v0
.end method

.method public getUpdateColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "timestamp_utc"

    return-object v0
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
