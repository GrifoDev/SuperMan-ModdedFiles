.class final Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, -0x1

    const-string v0, "onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    instance-of v1, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-eqz v1, :cond_5

    check-cast p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    :goto_1
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "data1"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "account_type"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const-string v3, "com.linkedin.android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedinDirectConnection:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_REQUESTED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "emailList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.sec.android.app.sns3.permission.REQUEST_PEOPLE_LOOKUP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method
