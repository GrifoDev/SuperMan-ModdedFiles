.class Lcom/android/launcher2/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageWorkspace(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$hotseat:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$hotseat:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$hotseat:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHotseatItems(Ljava/util/List;)V

    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "bindPageWorkspace:: Callback to Bind hotseat"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
