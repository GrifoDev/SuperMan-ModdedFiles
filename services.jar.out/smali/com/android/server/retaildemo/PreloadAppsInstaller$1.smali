.class Lcom/android/server/retaildemo/PreloadAppsInstaller$1;
.super Landroid/app/PackageInstallObserver;
.source "PreloadAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/PreloadAppsInstaller;->installPackage(Ljava/io/File;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/PreloadAppsInstaller;ILjava/lang/String;Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    iput p2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    iput-object p3, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " installed u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-wrap0(Lcom/android/server/retaildemo/PreloadAppsInstaller;Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-static {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->this$0:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    iget v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$userId:I

    iget-object v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-wrap0(Lcom/android/server/retaildemo/PreloadAppsInstaller;Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be installed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$apkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->val$counter:Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    invoke-virtual {v0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->appInstallFinished()V

    goto :goto_0
.end method
