.class Lcom/android/launcher2/FolderAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->animateHoverExpand()V
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

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I
    invoke-static {v1}, Lcom/android/launcher2/FolderAnimator;->access$500(Lcom/android/launcher2/FolderAnimator;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I
    invoke-static {v0, v1}, Lcom/android/launcher2/FolderAnimator;->access$502(Lcom/android/launcher2/FolderAnimator;I)I

    return-void
.end method
