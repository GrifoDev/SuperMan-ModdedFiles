.class Lcom/android/launcher2/FolderAnimator$1;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FolderAnimator"

    const-string v1, "mOnAnimationCancel : mIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$1;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method
