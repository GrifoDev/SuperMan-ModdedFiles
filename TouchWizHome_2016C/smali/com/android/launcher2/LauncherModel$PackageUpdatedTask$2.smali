.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$modifiedFinal:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->appsUpdated(Ljava/util/List;)V

    return-void
.end method
