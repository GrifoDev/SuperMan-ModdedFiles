.class Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxPage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showLockStarServiceBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

.field final synthetic val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;->val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;->val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$4;->val$page:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v1, 0x1

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
