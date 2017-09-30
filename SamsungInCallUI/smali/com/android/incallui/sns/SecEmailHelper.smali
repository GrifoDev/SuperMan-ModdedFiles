.class public Lcom/android/incallui/sns/SecEmailHelper;
.super Lcom/android/incallui/sns/SecAsyncQueryHelper;


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private final SELECTION:Ljava/lang/String;

.field private final TOKEN:I

.field private final URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecAsyncQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    iput v2, p0, Lcom/android/incallui/sns/SecEmailHelper;->TOKEN:I

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->SELECTION:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->PROJECTION:[Ljava/lang/String;

    const-string v0, "SecEmailHelper"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startQuery(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "cookie is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const-string v0, "no contact ID"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/sns/SecEmailHelper;->URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/incallui/sns/SecEmailHelper;->PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/sns/SecEmailHelper;->SELECTION:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/sns/SecEmailHelper;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
