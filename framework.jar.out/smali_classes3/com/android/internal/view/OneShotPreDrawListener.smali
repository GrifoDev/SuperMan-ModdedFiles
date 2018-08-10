.class public Lcom/android/internal/view/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final mReturnValue:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor <init>(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    return-void
.end method

.method public static add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object v0

    return-object v0
.end method

.method public static add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .locals 2

    new-instance v0, Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/OneShotPreDrawListener;-><init>(Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-boolean v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    return-void
.end method

.method public removeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
