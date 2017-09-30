.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;
.super Landroid/support/v7/widget/g;


# instance fields
.field mDefaultBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateButtonBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020383

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->updateButtonBackground(Z)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/g;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
