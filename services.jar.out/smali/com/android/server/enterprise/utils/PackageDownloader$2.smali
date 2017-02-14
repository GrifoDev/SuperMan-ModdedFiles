.class Lcom/android/server/enterprise/utils/PackageDownloader$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040a0e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap3(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040a0f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
