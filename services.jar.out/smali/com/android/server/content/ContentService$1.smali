.class Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/16 v5, -0x2710

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5}, Lcom/android/server/content/ContentService;->-wrap0(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
