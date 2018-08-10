.class public final Landroid/view/ViewStub;
.super Landroid/view/View;
.source "ViewStub.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStub$OnInflateListener;,
        Landroid/view/ViewStub$ViewReplaceRunnable;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/view/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method static synthetic -wrap0(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/internal/R$styleable;->ViewStub:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewStub;->mID:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/view/ViewStub;->setWillNotDraw(Z)V

    return-void
.end method

.method private inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    :goto_0
    iget v2, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewStub;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/view/ViewStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method private replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getInflatedId()I
    .locals 1

    iget v0, p0, Landroid/view/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/ViewStub;->mLayoutResource:I

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "ViewStub must have a valid layoutResource"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewStub;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInflatedId(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setInflatedIdAsync"
    .end annotation

    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    return-void
.end method

.method public setInflatedIdAsync(I)Ljava/lang/Runnable;
    .locals 1

    iput p1, p0, Landroid/view/ViewStub;->mInflatedId:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutResourceAsync"
    .end annotation

    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    return-void
.end method

.method public setLayoutResourceAsync(I)Ljava/lang/Runnable;
    .locals 1

    iput p1, p0, Landroid/view/ViewStub;->mLayoutResource:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewStub;->mInflateListener:Landroid/view/ViewStub$OnInflateListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setVisibilityAsync"
    .end annotation

    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method

.method public setVisibilityAsync(I)Ljava/lang/Runnable;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewStub$ViewReplaceRunnable;

    invoke-direct {p0, v0}, Landroid/view/ViewStub;->inflateViewNoAdd(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/view/ViewStub$ViewReplaceRunnable;-><init>(Landroid/view/ViewStub;Landroid/view/View;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
