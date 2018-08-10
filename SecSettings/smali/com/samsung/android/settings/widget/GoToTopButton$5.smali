.class Lcom/samsung/android/settings/widget/GoToTopButton$5;
.super Ljava/lang/Object;
.source "GoToTopButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/GoToTopButton;->init(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/GoToTopButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$5;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

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

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$5;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$5;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->-set0(Lcom/samsung/android/settings/widget/GoToTopButton;I)I

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
