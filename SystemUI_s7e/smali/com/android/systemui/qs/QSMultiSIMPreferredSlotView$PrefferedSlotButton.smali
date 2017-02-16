.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "QSMultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefferedSlotButton"
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I


# instance fields
.field private mButtonGroup:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mSlotButtonImage:Landroid/widget/ImageView;

.field private mSlotButtonLine2OnlyText:Landroid/widget/TextView;

.field private mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

.field private mSlotButtonTextLine1:Landroid/widget/TextView;

.field private mSlotButtonTextLine2:Landroid/widget/TextView;

.field private mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->values()[Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->SMS:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-com-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040102

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    iput-object p3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->setViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private getDefaultSlotId(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)I
    .locals 2

    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get6(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get5(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-getcom-android-systemui-qs-QSMultiSIMPreferredSlotView$ButtonTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0674

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0675

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0676

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshSlotInfo()V
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getDefaultSlotId(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SIM_CARD_MANAGER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get8(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0677

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get7(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get0()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v3}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[I

    move-result-object v3

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-get2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0678

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public refreshLocale()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    sget-object v1, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    :cond_1
    return-void
.end method

.method protected setViews(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonGroup:Landroid/view/ViewGroup;

    const v0, 0x7f1302ee

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2WithImage:Landroid/view/ViewGroup;

    const v0, 0x7f1302ed

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    const v0, 0x7f1302f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    const v0, 0x7f1302ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonImage:Landroid/widget/ImageView;

    const v0, 0x7f1302f1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method public updateTextColor()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0163

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->mSlotButtonLine2OnlyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
