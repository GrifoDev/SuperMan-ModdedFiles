.class Lcom/samsung/android/directpeninput/PopupCue$CueContainer;
.super Landroid/widget/FrameLayout;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/PopupCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CueContainer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHoverCue:Landroid/view/View;

.field private mTouchCue:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/directpeninput/PopupCue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/directpeninput/PopupCue;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/directpeninput/PopupCue;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->this$0:Lcom/samsung/android/directpeninput/PopupCue;

    .line 687
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 688
    iput-object p2, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    .line 689
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->initLayout()V

    .line 686
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 693
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    .line 694
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const v1, 0x1080aff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 696
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    .line 697
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const v1, 0x1080afe

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 699
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 700
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    return-void
.end method


# virtual methods
.method public getHoverCueDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 712
    const v2, 0x1080afe

    .line 711
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 713
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->this$0:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-static {v0, v2}, Lcom/samsung/android/directpeninput/PopupCue;->-set0(Lcom/samsung/android/directpeninput/PopupCue;Z)Z

    .line 737
    :cond_0
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public switchCueButton(Z)V
    .locals 3
    .param p1, "isTouched"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 721
    if-eqz p1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
