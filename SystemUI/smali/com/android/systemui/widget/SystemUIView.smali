.class public Lcom/android/systemui/widget/SystemUIView;
.super Landroid/view/View;
.source "SystemUIView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIView$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field private mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iput v2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v1, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v1, "SystemUIView"

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

    new-instance v2, Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIView;Lcom/android/systemui/widget/SystemUIView$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set0(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set1(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set9(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set5(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set3(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set7(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set11(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_5
        0xf -> :sswitch_2
        0x10 -> :sswitch_6
    .end sparse-switch
.end method

.method private refreshResIds()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set2(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get7(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get7(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set10(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set6(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get3(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get3(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set4(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set12(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->-set8(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_5
    return-void
.end method

.method private updateImage()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get2(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    const-string/jumbo v3, "SystemUIView"

    const-string/jumbo v4, "setBackgroundResource!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUIView;->setBackgroundResource(I)V

    :cond_1
    if-lez v1, :cond_2

    const-string/jumbo v3, "SystemUIView"

    const-string/jumbo v4, "setBackgroundColor!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIView;->setBackgroundColor(I)V

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get0(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_4
    iget v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get7(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_5
    const-string/jumbo v3, "SystemUIView"

    const-string/jumbo v4, "apply style: white-bg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get10(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get7(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/widget/SystemUIView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 3

    const-string/jumbo v0, "SystemUIView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->updateImage()V

    return-void
.end method
