.class public Lcom/android/incallui/sns/SecEmailHelper;
.super Lcom/android/incallui/sns/SecAsyncQueryHelper;
.source "SecEmailHelper.java"


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private final SELECTION:Ljava/lang/String;

.field private final TOKEN:I

.field private final URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecAsyncQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    .line 14
    iput v2, p0, Lcom/android/incallui/sns/SecEmailHelper;->TOKEN:I

    .line 15
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->URI:Landroid/net/Uri;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? AND "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->SELECTION:Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/sns/SecEmailHelper;->PROJECTION:[Ljava/lang/String;

    .line 32
    const-string v0, "SecEmailHelper"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public startQuery(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V
    .locals 12
    .param p1, "cookie"    # Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const-string v0, "cookie is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    .line 42
    .local v10, "contactIdNum":J
    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-gtz v0, :cond_2

    .line 43
    const-string v0, "no contact ID"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "contactId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/sns/SecEmailHelper;->URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/incallui/sns/SecEmailHelper;->PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/sns/SecEmailHelper;->SELECTION:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object v8, v6, v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/sns/SecEmailHelper;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
