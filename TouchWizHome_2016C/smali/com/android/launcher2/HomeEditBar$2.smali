.class Lcom/android/launcher2/HomeEditBar$2;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->animateDropOnDragBar(Lcom/android/launcher2/DragState;Landroid/view/DragEvent;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    iput-object p2, p0, Lcom/android/launcher2/HomeEditBar$2;->val$iv:Landroid/widget/ImageView;

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

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar$2;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$iv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

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
