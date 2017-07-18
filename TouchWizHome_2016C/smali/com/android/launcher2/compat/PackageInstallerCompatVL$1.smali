.class Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/compat/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionDisplayToLauncher(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {v2}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$200(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$300(Lcom/android/launcher2/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v2, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {v2}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$400(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$000(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    new-instance v4, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v3, v4}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$100(Lcom/android/launcher2/compat/PackageInstallerCompatVL;Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onProgressChanged(IF)V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$200(Lcom/android/launcher2/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    new-instance v2, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v1, v2}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;->access$100(Lcom/android/launcher2/compat/PackageInstallerCompatVL;Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V

    :cond_0
    return-void
.end method
