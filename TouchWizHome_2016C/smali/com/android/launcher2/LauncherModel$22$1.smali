.class Lcom/android/launcher2/LauncherModel$22$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$22;

.field final synthetic val$appItems:Ljava/util/List;

.field final synthetic val$homeItems:Ljava/util/List;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$22;Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$22$1;->this$1:Lcom/android/launcher2/LauncherModel$22;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$appItems:Ljava/util/List;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$homeItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$22$1;->this$1:Lcom/android/launcher2/LauncherModel$22;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$22;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges, bindBadgeUpdated !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$appItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$22$1;->val$homeItems:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
