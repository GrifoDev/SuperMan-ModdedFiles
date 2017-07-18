.class Lcom/android/launcher2/Workspace$24;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$widthPixels:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$24;->this$0:Lcom/android/launcher2/Workspace;

    iput p2, p0, Lcom/android/launcher2/Workspace$24;->val$widthPixels:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->enableZeroPageSettingDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$24;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/Workspace$24;->val$widthPixels:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/Workspace$24;->val$widthPixels:I

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace$24;->val$widthPixels:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/android/launcher2/Workspace$24;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$2600(Lcom/android/launcher2/Workspace;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/android/launcher2/Launcher;->setOffsetMsg(IIZ)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
