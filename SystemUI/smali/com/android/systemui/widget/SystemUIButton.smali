.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "SystemUIButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIButton$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field protected mDensityDpi:I

.field private mFontScale:F

.field private mOriginalFontSize:F

.field protected mOriginalFontSizeDp:F

.field private mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v1, "SystemUIButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v2, Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIButton;Lcom/android/systemui/widget/SystemUIButton$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set0(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set3(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set15(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set9(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set5(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set17(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set11(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set1(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set13(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set7(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set4(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set16(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set10(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set6(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get17(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get17(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set18(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get11(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get11(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set12(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set2(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set14(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get7(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get7(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set8(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_8
    return-void
.end method

.method private updateButtonColor()V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->semClearAllTextEffect()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingRight()I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get4(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get6(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get2(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    iget v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    const-string/jumbo v7, "SystemUIButton"

    const-string/jumbo v8, "apply style: theme"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get10(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get10(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get8(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get8(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    :cond_2
    :goto_0
    if-lez v6, :cond_3

    sget-object v7, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUIButton;->setTextColor(I)V

    :cond_3
    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowDy()F

    move-result v9

    sget-object v10, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/systemui/widget/SystemUIButton;->setShadowLayer(FFFI)V

    :cond_4
    if-lez v4, :cond_5

    sget-object v7, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUIButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/systemui/widget/SystemUIButton;->setPadding(IIII)V

    return-void

    :cond_6
    iget v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get0(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "SystemUIButton"

    const-string/jumbo v8, "apply style: adaptive color"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SystemUIButton"

    const-string/jumbo v8, "apply style: white-bg"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get16(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get16(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get18(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get18(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    goto/16 :goto_0
.end method

.method private updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v1

    const/4 v0, 0x0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v0, 0x1

    :cond_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    mul-float/2addr v2, v3

    sget-object v3, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/widget/SystemUIButton;->setTextSize(IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSize:F

    mul-float v3, v0, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    sget-object v3, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/widget/SystemUIButton;->setTextSize(IF)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string/jumbo v0, "SystemUIButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    return-void
.end method
