.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;
.super Lcom/android/incallui/widget/SecVoiceButton;
.source "PhoneVoiceRecorderNotiButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setMeasuredSizeForRipple(II)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setRippleEffectSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/SecVoiceButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setMeasuredSizeForRipple(II)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setRippleEffectSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/widget/SecVoiceButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setMeasuredSizeForRipple(II)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setRippleEffectSize(II)V

    return-void
.end method


# virtual methods
.method protected isInMultiWindowMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
