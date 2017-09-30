.class public Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;->mUri:Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sync4"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "contact_id = ? AND account_type = ?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;->mSelection:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "com.samsung.android.coreapps"

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/ProfileQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method
