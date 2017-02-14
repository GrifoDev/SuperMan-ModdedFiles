.class public Lcom/android/setupwizardlib/items/ButtonItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEnabled:Z

.field private mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

.field private mText:Ljava/lang/CharSequence;

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    sget v0, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    sget v1, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_enabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_theme:I

    sget v2, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 4

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    if-eqz v2, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    return-object v2
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    return v0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot bind to ButtonItem\'s view"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;->onClick(Lcom/android/setupwizardlib/items/ButtonItem;)V

    :cond_0
    return-void
.end method
