.class public Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;->mUri:Landroid/net/Uri;

    const-string v0, "support_lunar_birthday"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data15"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;->mProjection:[Ljava/lang/String;

    :goto_0
    const-string v0, "contact_id=? AND mimetype=? AND data2=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;->mSelection:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "vnd.android.cursor.item/contact_event"

    aput-object v0, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    return-void

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/AnniversaryQueryArgs;->mProjection:[Ljava/lang/String;

    goto :goto_0
.end method
