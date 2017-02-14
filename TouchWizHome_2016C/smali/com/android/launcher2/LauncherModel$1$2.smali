.class Lcom/android/launcher2/LauncherModel$1$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$1;

.field final synthetic val$appsUpdates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$1;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$1$2;->this$1:Lcom/android/launcher2/LauncherModel$1;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$1$2;->val$appsUpdates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$1$2;->this$1:Lcom/android/launcher2/LauncherModel$1;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$1;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel;->getCallback()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "setPackageState(Apps), bindRestoreItemsChange()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$1$2;->val$appsUpdates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsRestoreItemsChange(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method
