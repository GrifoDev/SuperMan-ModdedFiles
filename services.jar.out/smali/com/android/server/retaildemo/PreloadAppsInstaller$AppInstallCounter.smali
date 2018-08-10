.class Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;
.super Ljava/lang/Object;
.source "PreloadAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/PreloadAppsInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInstallCounter"
.end annotation


# instance fields
.field private expectedCount:I

.field private finishedCount:I

.field private final mContext:Landroid/content/Context;

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    iput-object p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    return-void
.end method

.method private checkIfAllFinished()V
    .locals 4

    iget v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    iget v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "All preloads finished installing for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "demo_user_setup_complete"

    const-string/jumbo v2, "1"

    iget v3, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized appInstallFinished()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    invoke-direct {p0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->checkIfAllFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setExpectedAppsCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    invoke-direct {p0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->checkIfAllFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
