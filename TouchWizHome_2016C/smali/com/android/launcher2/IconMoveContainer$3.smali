.class Lcom/android/launcher2/IconMoveContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconMoveContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$3;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$3;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainer;->bulkUnload()V

    return-void
.end method
