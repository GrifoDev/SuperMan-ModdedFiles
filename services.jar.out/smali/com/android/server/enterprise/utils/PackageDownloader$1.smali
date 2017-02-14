.class Lcom/android/server/enterprise/utils/PackageDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap2(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string/jumbo v4, "pkg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "targetPkgName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v4, v1, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap1(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v4, v3, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap1(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap0(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_0
.end method
