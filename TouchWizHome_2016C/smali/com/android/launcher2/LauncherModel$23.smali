.class Lcom/android/launcher2/LauncherModel$23;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addShortcutToFolder(Lcom/android/launcher2/HomeFolderItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$apps:Ljava/util/List;

.field final synthetic val$homefolder:Lcom/android/launcher2/HomeFolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$23;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$23;->val$apps:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$23;->val$homefolder:Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$23;->val$apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$23;->val$homefolder:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method
