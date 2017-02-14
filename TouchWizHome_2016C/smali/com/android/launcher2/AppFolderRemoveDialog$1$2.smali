.class Lcom/android/launcher2/AppFolderRemoveDialog$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppFolderRemoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v0, v0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
