.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "SystemUIImageButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageButton$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field private mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iput v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIImageButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v1, "SystemUIImageButton"

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

    new-instance v2, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageButton;Lcom/android/systemui/widget/SystemUIImageButton$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set0(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set3(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set13(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set9(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set5(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set11(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set15(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set17(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set1(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set7(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

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
        :pswitch_9
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set4(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set14(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set10(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set6(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set16(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get10(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get10(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set12(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set18(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set2(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-set8(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_8
    return-void
.end method

.method private updateButtonImage()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get2(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    const-string/jumbo v5, "SystemUIImageButton"

    const-string/jumbo v6, "apply style: theme"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get11(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get7(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v3

    :cond_2
    :goto_0
    if-lez v4, :cond_4

    sget-object v5, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    const-string/jumbo v5, "SystemUIImageButton"

    const-string/jumbo v6, "filter is not null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-lez v3, :cond_5

    const-string/jumbo v5, "SystemUIImageButton"

    const-string/jumbo v6, "resBgId is not null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    :cond_6
    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get0(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "SystemUIImageButton"

    const-string/jumbo v6, "apply style: adaptive color"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    :cond_8
    const-string/jumbo v5, "SystemUIImageButton"

    const-string/jumbo v6, "apply style: white-bg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    if-gtz v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v5

    if-lez v5, :cond_9

    sget-object v5, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v6

    invoke-virtual {v5, v6, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const-string/jumbo v5, "SystemUIImageButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#%08X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v4

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string/jumbo v0, "SystemUIImageButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->updateButtonImage()V

    return-void
.end method
