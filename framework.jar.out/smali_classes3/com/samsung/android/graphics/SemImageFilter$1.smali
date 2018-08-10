.class Lcom/samsung/android/graphics/SemImageFilter$1;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter;->postDelayedAnimationTask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
