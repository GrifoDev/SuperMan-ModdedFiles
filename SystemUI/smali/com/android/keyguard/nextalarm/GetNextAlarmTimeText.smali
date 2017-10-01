.class public Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;
.super Landroid/widget/LinearLayout;
.source "GetNextAlarmTimeText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;
    }
.end annotation


# instance fields
.field public alarmText:Landroid/widget/TextView;

.field private mAlarmObserver:Lcom/di/systemui/GetNextAlarmTimeText$AlarmObserver;

.field mContext:Landroid/content/Context;

.field mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mContext:Landroid/content/Context;

    const v2, 0x7f020897

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->alarmText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->addView(Landroid/view/View;)V

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40400000    # 3.0f

    const v1, 0x7f000000

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/16 v2, 0x15

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x0

    const/16 v3, -0x5

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;-><init>(Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;->observe()V

    invoke-virtual {p0}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->updateAlarm()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public updateAlarm()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_nextalarm"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->alarmText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "lockscreen_alarm_text_color"

    const v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
