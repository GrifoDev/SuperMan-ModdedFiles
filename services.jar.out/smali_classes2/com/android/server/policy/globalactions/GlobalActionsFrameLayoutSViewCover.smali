.class public Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayoutSViewCover.java"


# instance fields
.field bg:Landroid/widget/LinearLayout;

.field childcnt:I

.field childindex:[I

.field mHandler:Landroid/os/Handler;

.field sv:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1090067

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1090067

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iget v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    const v2, 0x10203c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    const v2, 0x10203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    return v0
.end method

.method public hideAllView(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    const v4, 0x10203d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$1;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showAllView(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;-><init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    return-void
.end method
