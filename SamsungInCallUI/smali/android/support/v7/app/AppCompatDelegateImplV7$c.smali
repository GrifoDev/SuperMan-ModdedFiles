.class Landroid/support/v7/app/AppCompatDelegateImplV7$c;
.super Landroid/support/v7/widget/ContentFrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2

    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/k;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
