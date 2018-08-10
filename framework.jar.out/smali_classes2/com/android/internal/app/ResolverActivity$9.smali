.class Lcom/android/internal/app/ResolverActivity$9;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$9;->val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

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

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$9;->val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

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
