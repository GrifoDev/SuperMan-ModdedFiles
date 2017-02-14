.class final Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;
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
    name = "LinkedinQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method private constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    const-string v5, "onQueryComplete"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    instance-of v5, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-eqz v5, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    :cond_2
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_0

    const-string v5, "picture_url"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PICTURE_URL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
    invoke-static {v5}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
    invoke-static {v5}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mAppId:I
    invoke-static {v6}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$700(Lcom/android/incallui/sns/SecLinkedInHelper;)I

    move-result v6

    invoke-interface {v5, v6, v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->getImage(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->reqId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
