.class public abstract Landroid/support/v14/preference/PreferenceDialogFragment;
.super Landroid/app/DialogFragment;
.source "PreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroid/support/v7/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getPreference()Landroid/support/v7/preference/DialogPreference;
    .locals 4

    iget-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DialogPreference;

    iput-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    :cond_0
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    return-object v2
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    instance-of v6, v5, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Target fragment must implement TargetFragment interface"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v2, v5

    check-cast v2, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_4

    invoke-interface {v2, v4}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/DialogPreference;

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v6

    iput v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    iget-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    :cond_1
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string/jumbo v6, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string/jumbo v6, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string/jumbo v6, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string/jumbo v6, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    const-string/jumbo v6, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, -0x2

    iput v4, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v14/preference/PreferenceDialogFragment;->requestInputMethod(Landroid/app/Dialog;)V

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget v0, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceDialogFragment;->onDialogClosed(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PreferenceDialogFragment.icon"

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
