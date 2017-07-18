.class public Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceGooglePlusItem;
.super Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.source "SocialNetworkServiceGooglePlusItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAppIconResourceId()I
    .locals 1

    const v0, 0x7f020375

    return v0
.end method

.method public getMessageColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    return-object v0
.end method

.method public getUpdateColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "timestamp_utc"

    return-object v0
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method
