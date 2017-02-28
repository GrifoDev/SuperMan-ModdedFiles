.class Lcom/android/launcher2/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindHomePageAdjust(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$finalMax:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->val$finalMax:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->val$finalMax:I

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomePageAdjust(I)V

    :cond_0
    return-void
.end method
