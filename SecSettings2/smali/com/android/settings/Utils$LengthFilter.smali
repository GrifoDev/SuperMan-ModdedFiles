.class public Lcom/android/settings/Utils$LengthFilter;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextLimitToast:Landroid/widget/Toast;

.field private maxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    return-void
.end method

.method private makeTextLimitToast(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0e2e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    return-void
.end method

.method private showTextLimitMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/Utils$LengthFilter;->makeTextLimitToast(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/Utils$LengthFilter;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/Utils$LengthFilter;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p4, p5, p6}, Lcom/android/settings/Utils;->-wrap0(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    :cond_1
    if-gtz v0, :cond_2

    const-string/jumbo v2, ""

    return-object v2

    :cond_2
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_3

    const/4 v2, 0x0

    return-object v2

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/Utils$LengthFilter;->showTextLimitMessage()V

    :cond_4
    add-int v2, p2, v0

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/Utils$LengthFilter;->maxLength:I

    return-void
.end method
