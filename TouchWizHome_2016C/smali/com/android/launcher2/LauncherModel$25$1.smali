.class Lcom/android/launcher2/LauncherModel$25$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$25;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$25;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$25$1;->this$1:Lcom/android/launcher2/LauncherModel$25;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$25$1;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$25$1;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$25$1;->this$1:Lcom/android/launcher2/LauncherModel$25;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$25;->val$item:Lcom/android/launcher2/HomeFolderItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcut(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method
