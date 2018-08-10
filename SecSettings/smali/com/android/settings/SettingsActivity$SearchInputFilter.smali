.class public Lcom/android/settings/SettingsActivity$SearchInputFilter;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchInputFilter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextLimitToast:Landroid/widget/Toast;

.field private maxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mContext:Landroid/content/Context;

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->maxLength:I

    return-void
.end method

.method private makeTextLimitToast(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f122133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->maxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mTextLimitToast:Landroid/widget/Toast;

    return-void
.end method

.method private showTextLimitMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity$SearchInputFilter;->makeTextLimitToast(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mTextLimitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->mTextLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget v1, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->maxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$SearchInputFilter;->showTextLimitMessage()V

    :cond_0
    if-gtz v0, :cond_1

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$SearchInputFilter;->showTextLimitMessage()V

    :cond_3
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->removeBrokenEmojiChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMaxLength()I
    .locals 1

    iget v0, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/SettingsActivity$SearchInputFilter;->maxLength:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$SearchInputFilter;->getMaxLength()I

    return-void
.end method
