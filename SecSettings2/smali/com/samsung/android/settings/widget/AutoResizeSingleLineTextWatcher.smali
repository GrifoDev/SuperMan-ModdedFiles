.class public Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
.super Ljava/lang/Object;
.source "AutoResizeSingleLineTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mMaxTextSize:I

.field private mTargetView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    iput-object p1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    iput p2, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    return-void
.end method

.method private resize(Ljava/lang/CharSequence;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object v11, p1

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    sub-int v3, v1, v4

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ne v1, v12, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_2
    const/4 v10, 0x1

    iget v9, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mMaxTextSize:I

    :goto_0
    add-int/lit8 v1, v9, -0x1

    if-ge v10, v1, :cond_4

    add-int v1, v10, v9

    div-int/lit8 v8, v1, 0x2

    int-to-float v1, v8

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ne v1, v12, :cond_3

    move v10, v8

    goto :goto_0

    :cond_3
    move v9, v8

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    int-to-float v4, v10

    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->resize(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setMaxTextSize(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->resize(Ljava/lang/CharSequence;)V

    return-void
.end method
