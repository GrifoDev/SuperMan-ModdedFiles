.class Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;
.super Ljava/lang/Object;
.source "DividerButtonsGroup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->-get0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

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
