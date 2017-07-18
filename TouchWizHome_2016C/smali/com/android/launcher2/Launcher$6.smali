.class Lcom/android/launcher2/Launcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$300(Lcom/android/launcher2/Launcher;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsDestroyed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
