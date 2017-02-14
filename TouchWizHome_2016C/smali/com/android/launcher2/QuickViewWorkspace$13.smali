.class Lcom/android/launcher2/QuickViewWorkspace$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewZeroPageOnOff(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$13;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$13;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$13;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$200(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_0
    return-void
.end method
