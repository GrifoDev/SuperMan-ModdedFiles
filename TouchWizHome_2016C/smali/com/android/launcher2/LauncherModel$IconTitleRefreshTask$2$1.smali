.class Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppLoader$BindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;->this$2:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;->this$2:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2;->this$1:Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1$1;-><init>(Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask$2$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
