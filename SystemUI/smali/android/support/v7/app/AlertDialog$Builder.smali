.class public Landroid/support/v7/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Landroid/support/v7/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, p0, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/support/v7/app/AlertDialog;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v2, v0, Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertController$AlertParams;->apply(Landroid/support/v7/app/AlertController;)V

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method
