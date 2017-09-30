.class final Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;
.super Ljava/lang/Object;

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
    .locals 3

    const-string v0, "onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    instance-of v1, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    :goto_1
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    const-string v0, "picture_url"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PICTURE_URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v2}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$700(Lcom/android/incallui/sns/SecLinkedInHelper;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->getImage(ILjava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->reqId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_1
.end method
