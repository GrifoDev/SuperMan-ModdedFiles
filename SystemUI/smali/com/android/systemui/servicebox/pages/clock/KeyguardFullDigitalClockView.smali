.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;
.super Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;
.source "KeyguardFullDigitalClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->onFinishInflate()V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const-string/jumbo v1, ":ss"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const-string/jumbo v1, ":ss"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v3, v0, v4

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_0

    aget v3, v0, v4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    aget v3, v0, v5

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    return v5

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public setClockVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->setClockVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardFullDigitalClockView;->mTimeSecView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    return-void
.end method
