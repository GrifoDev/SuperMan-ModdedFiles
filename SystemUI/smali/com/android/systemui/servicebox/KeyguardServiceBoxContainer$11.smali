.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateExpandState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field final synthetic val$isExpandFinal:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput-boolean p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->val$isExpandFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v2, "updateExpandState() >> PROGRESS >> onPreDraw()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->val$isExpandFinal:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get8(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get8(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandState() << END << isExpandFinal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;->val$isExpandFinal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
