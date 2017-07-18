.class Lcom/android/launcher2/CellLayoutMoveApps$1;
.super Ljava/lang/Object;
.source "CellLayoutMoveApps.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutMoveApps;->animationIntoText(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutMoveApps;

.field final synthetic val$showtohide:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutMoveApps;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMoveApps$1;->this$0:Lcom/android/launcher2/CellLayoutMoveApps;

    iput-boolean p2, p0, Lcom/android/launcher2/CellLayoutMoveApps$1;->val$showtohide:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutMoveApps$1;->val$showtohide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps$1;->this$0:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-static {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->access$000(Lcom/android/launcher2/CellLayoutMoveApps;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps$1;->this$0:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-static {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->access$000(Lcom/android/launcher2/CellLayoutMoveApps;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
