.class Lcom/android/launcher2/Launcher$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V
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

    iput-object p1, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$9;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$9;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$9;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->finishExitAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$500(Lcom/android/launcher2/Launcher;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popup/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitAllappsAnimation onAnimationEnd mPopupMenu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$700()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/Launcher$9;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popup/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    # setter for: Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$702(Z)Z

    :cond_1
    return-void
.end method
