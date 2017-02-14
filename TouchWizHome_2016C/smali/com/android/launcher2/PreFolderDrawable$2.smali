.class Lcom/android/launcher2/PreFolderDrawable$2;
.super Ljava/lang/Object;
.source "PreFolderDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PreFolderDrawable;->startScaleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PreFolderDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PreFolderDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # setter for: Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I
    invoke-static {v0, v1}, Lcom/android/launcher2/PreFolderDrawable;->access$002(Lcom/android/launcher2/PreFolderDrawable;I)I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # setter for: Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I
    invoke-static {v0, v1}, Lcom/android/launcher2/PreFolderDrawable;->access$102(Lcom/android/launcher2/PreFolderDrawable;I)I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/PreFolderDrawable;->access$300(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher2/PreFolderDrawable;->access$300(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PreFolderDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/PreFolderDrawable;->access$300(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable$2;->this$0:Lcom/android/launcher2/PreFolderDrawable;

    # getter for: Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/launcher2/PreFolderDrawable;->access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
