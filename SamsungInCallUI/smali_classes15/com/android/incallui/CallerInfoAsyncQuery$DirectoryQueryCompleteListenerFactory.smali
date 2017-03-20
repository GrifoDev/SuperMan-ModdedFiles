.class final Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQueryCompleteListenerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mIsListenerCalled:Z

.field private final mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 659
    iput p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 660
    iput-object p3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    .line 662
    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    .line 663
    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/android/incallui/CallerInfo;
    .param p4, "x4"    # J

    .prologue
    .line 633
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V

    return-void
.end method

.method private addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V
    .locals 10
    .param p1, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p2, "directoryId"    # J

    .prologue
    .line 685
    iget-boolean v4, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v4, :cond_1

    .line 687
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 688
    invoke-static {v4, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCachedContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 689
    .local v0, "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f0904b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "directoryLabel":Ljava/lang/String;
    invoke-interface {v0, v1, p2, p3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    .line 691
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v5, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, v0}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    .line 694
    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 695
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 696
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 695
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 697
    if-eqz v3, :cond_0

    .line 698
    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v6, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->addPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 700
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 706
    .end local v0    # "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .end local v1    # "directoryLabel":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 700
    .restart local v0    # "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .restart local v1    # "directoryLabel":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 701
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "CallerInfoAsyncQuery"

    const-string v5, "failed to fetch directory contact photo"

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 700
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 695
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 700
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p4, "directoryId"    # J

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "shouldCallListener":Z
    monitor-enter p0

    .line 669
    :try_start_0
    iget v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 670
    iget-boolean v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    if-nez v1, :cond_1

    .line 671
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    .line 672
    const/4 v0, 0x1

    .line 674
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v1, :cond_2

    .line 679
    invoke-direct {p0, p3, p4, p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V

    .line 680
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 682
    :cond_2
    return-void

    .line 674
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public newListener(J)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 709
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;J)V

    return-object v0
.end method
