.class Lcom/android/incallui/agif/AgifLoader$2;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifLoader;->loadPackage(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;

.field final synthetic val$category:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifLoader;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifLoader$2;->val$category:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    const-string v0, "AgifLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPackage, onQueryComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v0, "artist"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;-><init>(Lcom/android/incallui/agif/AgifLoader;Ljava/lang/String;[B[BLjava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "AgifLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPackage, onQueryComplete cursor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$2;->val$category:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$2;->val$category:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/agif/AgifLoader$2;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-static {v1}, Lcom/android/incallui/agif/AgifLoader;->access$100(Lcom/android/incallui/agif/AgifLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifLoader$2;->val$category:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw v0
.end method
