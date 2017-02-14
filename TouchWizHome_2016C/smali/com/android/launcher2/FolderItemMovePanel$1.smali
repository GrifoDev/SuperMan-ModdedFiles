.class Lcom/android/launcher2/FolderItemMovePanel$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderItemMovePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderItemMovePanel;->showFolderPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderItemMovePanel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderItemMovePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderItemMovePanel$1;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderItemMovePanel$1;->this$0:Lcom/android/launcher2/FolderItemMovePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderItemMovePanel;->setVisibility(I)V

    return-void
.end method
