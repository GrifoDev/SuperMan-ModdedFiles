.class Lcom/android/launcher2/Folder$17$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Folder$17;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder$17;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$17$1;->this$1:Lcom/android/launcher2/Folder$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Folder$17$1;->this$1:Lcom/android/launcher2/Folder$17;

    iget-object v2, v2, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Folder$17$1;->this$1:Lcom/android/launcher2/Folder$17;

    iget-object v2, v2, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
