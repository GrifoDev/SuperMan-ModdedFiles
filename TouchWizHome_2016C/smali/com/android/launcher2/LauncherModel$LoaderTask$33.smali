.class Lcom/android/launcher2/LauncherModel$LoaderTask$33;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->checkBindFestivalWorkspace(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$festivalAppWidgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$33;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$33;->val$festivalAppWidgets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$33;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$33;->val$festivalAppWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeDeleteFestivalPage(Ljava/util/List;)V

    :cond_0
    return-void
.end method
