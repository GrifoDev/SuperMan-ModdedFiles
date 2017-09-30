.class Lcom/android/incallui/sns/SecLinkedInHelper$1;
.super Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "description="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string v0, "failed to get image from Linkedin"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->reqId:I

    if-eq v0, p1, :cond_3

    :cond_2
    const-string v0, "reqId is not matched"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedin:Z

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    const-string v0, "set Linkedin photo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v1}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePhotoForLinkedin(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to close input stream."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string v2, "failed to create drawable from URI"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Unable to close input stream."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Unable to close input stream."

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method
