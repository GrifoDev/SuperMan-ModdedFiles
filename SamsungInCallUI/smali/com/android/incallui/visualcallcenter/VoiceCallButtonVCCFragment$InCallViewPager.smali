.class public Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;
.super Landroid/support/v4/view/ViewPager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InCallViewPager"
.end annotation


# static fields
.field private static mScrollable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->mScrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->mScrollable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$600()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$700()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->mScrollable:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$InCallViewPager;->mScrollable:Z

    return-void
.end method
