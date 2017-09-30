.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 10

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insertion completed Successfully"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    if-eqz v2, :cond_0

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    iget-object v4, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v3, v4, v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;-><init>()V

    iget-wide v8, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->expired_time:J

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setExpiredTime(J)V

    iget-object v7, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setId(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->url:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    aput-object v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v0, "Couldn\'t insert"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    const/4 v5, 0x0

    const-string v0, "## on onQueryComplete"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    const-string v1, "group_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "folder_token"

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->folder_token:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contents_token"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

    move-result-object v0

    const/4 v1, 0x6

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "folder_token"

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->folder_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contents_token"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 10

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-lez p3, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update completed Successfully row count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    if-eqz v2, :cond_0

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    iget-object v4, p2, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v3, v4, v1

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;-><init>()V

    iget-wide v8, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->expired_time:J

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setExpiredTime(J)V

    iget-object v7, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setId(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->url:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    aput-object v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldnot update, total row count :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
