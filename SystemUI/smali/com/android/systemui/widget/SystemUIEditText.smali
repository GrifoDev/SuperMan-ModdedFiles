.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "SystemUIEditText.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIEditText$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field protected final mDrawPaint:Landroid/graphics/Paint;

.field private mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    iput v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIEditText;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v1, "SystemUIEditText"

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

    new-instance v2, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(Lcom/android/systemui/widget/SystemUIEditText;Lcom/android/systemui/widget/SystemUIEditText$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set0(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set1(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set9(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set5(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set3(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set11(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set7(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0xc -> :sswitch_6
        0xf -> :sswitch_2
        0x11 -> :sswitch_5
    .end sparse-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get1(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get1(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set2(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get9(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get9(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set10(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get5(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get5(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set6(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get3(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get3(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set4(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get11(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get11(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set12(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get7(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get7(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIEditText;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-set8(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_5
    return-void
.end method

.method private updateEditText()V
    .locals 14

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->semClearAllTextEffect()V

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get2(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get4(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SystemUIEditText"

    const-string/jumbo v8, "apply style: theme"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get6(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get8(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowColor()I

    move-result v3

    if-eqz v1, :cond_4

    move v5, v0

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get4(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v7

    if-lez v7, :cond_1

    sget-object v7, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v8}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get4(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :cond_1
    :goto_1
    const-string/jumbo v7, "SystemUIEditText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "textColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "#%08X"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", shadowColor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "#%08X"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUIEditText;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->getShadowDy()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9, v3}, Lcom/android/systemui/widget/SystemUIEditText;->setShadowLayer(FFFI)V

    return-void

    :cond_2
    iget v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get0(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SystemUIEditText"

    const-string/jumbo v8, "apply style: adaptive color"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get0(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get9(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get11(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SystemUIEditText"

    const-string/jumbo v8, "apply style: white-bg"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get10(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->-get12(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v4

    goto/16 :goto_0

    :cond_4
    if-lez v6, :cond_5

    if-gtz v4, :cond_6

    :cond_5
    const-string/jumbo v7, "SystemUIEditText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid res = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object v7, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    sget-object v7, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string/jumbo v0, "SystemUIEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIEditText;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->updateEditText()V

    return-void
.end method
