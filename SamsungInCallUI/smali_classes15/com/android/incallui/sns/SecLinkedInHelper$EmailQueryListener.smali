.class final Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;
.super Ljava/lang/Object;
.source "SecLinkedInHelper.java"

# interfaces
.implements Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmailQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method private constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/sns/SecLinkedInHelper;
    .param p2, "x1"    # Lcom/android/incallui/sns/SecLinkedInHelper$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, -0x1

    .line 271
    const-string v6, "onQueryComplete"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    if-nez p3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "cookieWrapper":Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    instance-of v6, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-eqz v6, :cond_2

    move-object v2, p2

    .line 280
    check-cast v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    .line 282
    :cond_2
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v6, :cond_0

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v4, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 288
    const-string v6, "data1"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "columnIndex":I
    if-eq v1, v8, :cond_4

    .line 290
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "emailAddress":Ljava/lang/String;
    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v3, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->email:Ljava/lang/String;

    .line 292
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v3    # "emailAddress":Ljava/lang/String;
    :cond_4
    const-string v6, "account_type"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 296
    if-eq v1, v8, :cond_3

    .line 297
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "accountType":Ljava/lang/String;
    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    if-nez v6, :cond_3

    .line 299
    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const-string v7, "com.linkedin.android"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    goto :goto_1

    .line 303
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "columnIndex":I
    :cond_5
    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 304
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_REQUESTED"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v6, "emailList"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    iget-object v6, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.android.app.sns3.permission.REQUEST_PEOPLE_LOOKUP"

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
