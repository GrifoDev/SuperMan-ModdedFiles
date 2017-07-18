.class Lcom/android/launcher2/Workspace$23;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->animatePage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$pageChanged:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher2/Workspace$23;->val$pageChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$2602(Lcom/android/launcher2/Workspace;I)I

    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$2702(Lcom/android/launcher2/Workspace;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v6}, Lcom/android/launcher2/Workspace;->access$2602(Lcom/android/launcher2/Workspace;I)I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageUtils;->enableZeroPageSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->showZeroPageSettingDialog()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v6}, Lcom/android/launcher2/Workspace;->access$2702(Lcom/android/launcher2/Workspace;I)I

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace$23;->val$pageChanged:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Logging;->setZeroPageStartTime()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
