.class Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "VoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisualCallPagerAdapter"
.end annotation


# instance fields
.field private mChildCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mChildCount:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7

    const v6, 0x7f040164

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem visualcall position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I
    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$402(I)I

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    const-string v3, "smart_ivr_callerid_info"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04005a

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateIVRList(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1600(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;Landroid/view/View;)V

    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V
    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1700(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    move-object v1, v0

    :goto_2
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040059

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v3, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-virtual {v3, v0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->updateVoiceCallButtons()V
    invoke-static {v3}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;->access$1800(Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;)V

    move-object v1, v0

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mChildCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataSetChanged:mChildCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mChildCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
