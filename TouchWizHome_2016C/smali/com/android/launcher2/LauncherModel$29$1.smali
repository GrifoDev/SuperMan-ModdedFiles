.class Lcom/android/launcher2/LauncherModel$29$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$29;

.field final synthetic val$allApps:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$29;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$29$1;->this$1:Lcom/android/launcher2/LauncherModel$29;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$29$1;->val$allApps:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$29$1;->val$allApps:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->setModelItems(Ljava/util/Map;)V

    const-string v0, "Launcher.Model"

    const-string v1, "MenuAppModel.setModelItems called for Folder multiple selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$29$1;->this$1:Lcom/android/launcher2/LauncherModel$29;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$29;->val$folder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->showSearchAppListAfterLoadAllApps()V

    return-void
.end method
