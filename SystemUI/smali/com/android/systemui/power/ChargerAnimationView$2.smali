.class Lcom/android/systemui/power/ChargerAnimationView$2;
.super Ljava/lang/Object;
.source "ChargerAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;

.field final synthetic val$currentChargerType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->val$currentChargerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v7, 0x64

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->val$currentChargerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get9(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->-get9(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationView;->-get9(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get0(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v0

    if-ge v0, v6, :cond_0

    const-string/jumbo v0, "PowerUI.ChargerAnimationView"

    const-string/jumbo v1, "Animation is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->val$currentChargerType:I

    invoke-static {v0, v7, v1}, Lcom/android/systemui/power/ChargerAnimationView;->-wrap1(Lcom/android/systemui/power/ChargerAnimationView;II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PowerUI.ChargerAnimationView"

    const-string/jumbo v1, "Animation stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get3(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get2(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get9(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get7(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get4(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get1(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;->onChargerAnimationEnd()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->-set0(Lcom/android/systemui/power/ChargerAnimationView;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get8(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationView;->-get8(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationView;->-get8(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get0(Lcom/android/systemui/power/ChargerAnimationView;)I

    move-result v0

    if-ge v0, v6, :cond_2

    const-string/jumbo v0, "PowerUI.ChargerAnimationView"

    const-string/jumbo v1, "Animation is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->val$currentChargerType:I

    invoke-static {v0, v7, v1}, Lcom/android/systemui/power/ChargerAnimationView;->-wrap1(Lcom/android/systemui/power/ChargerAnimationView;II)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "PowerUI.ChargerAnimationView"

    const-string/jumbo v1, "Animation stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get8(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get7(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get4(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0}, Lcom/android/systemui/power/ChargerAnimationView;->-get1(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;->onChargerAnimationEnd()V

    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView$2;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-static {v0, v4}, Lcom/android/systemui/power/ChargerAnimationView;->-set0(Lcom/android/systemui/power/ChargerAnimationView;I)I

    goto/16 :goto_0
.end method
