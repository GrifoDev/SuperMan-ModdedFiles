.class public Lcom/android/launcher2/MenuEditBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBar$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditBar"


# instance fields
.field private mCurrentAnimatorRes:I

.field private mDropped:Z

.field private mEntered:Z

.field private mHideAnimatorRes:I

.field private mLock:Lcom/android/launcher2/MenuEditBar$Item;

.field private mOrientation:I

.field private mPosition:I

.field private mShowAnimatorRes:I

.field private mUnlock:Lcom/android/launcher2/MenuEditBar$Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/MenuEditBar$Item;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    new-instance v1, Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/MenuEditBar$Item;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuEditBar$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    iput-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iput-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    iput v2, p0, Lcom/android/launcher2/MenuEditBar;->mOrientation:I

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private editBarBackGroundVI(Landroid/widget/ImageView;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public static findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-eqz v1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    iput v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->hideEditBar()V

    :cond_0
    return-void
.end method

.method private initRotationHelperStyle(Lcom/android/launcher2/MenuEditBar$Item;)V
    .locals 3

    const v2, 0x7f0e0025

    const v1, 0x7f0e0004

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    goto :goto_0
.end method

.method private lock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setLockedViewFromDrag(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    const/16 v2, 0x70

    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "request_lock"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x70

    :try_start_1
    const-string v3, "request_lock"

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    iget-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 2

    iget v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f05002a

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    const v1, 0x7f05002c

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimatorRes:I

    :goto_0
    return-void

    :pswitch_1
    const v1, 0x7f050021

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050022

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_2
    const v1, 0x7f050027

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050028

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x7f050000

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    const v1, 0x7f050001

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimatorRes:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableForOrientation(Lcom/android/launcher2/MenuEditBar$Item;[Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$500(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$500(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, p3

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$300(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 3

    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Lcom/android/launcher2/MenuEditBar$Item;[Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Lcom/android/launcher2/MenuEditBar$Item;[Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setInitialAnimationParameter()V
    .locals 4

    const v3, 0x7f0e0024

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    invoke-static {v3, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    invoke-static {v3, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuEditBar;->initRotationHelperStyle(Lcom/android/launcher2/MenuEditBar$Item;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuEditBar;->initRotationHelperStyle(Lcom/android/launcher2/MenuEditBar$Item;)V

    return-void
.end method

.method private setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V
    .locals 1

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setActivated(Z)V

    return-void
.end method

.method private unlock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setLockedViewFromDrag(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_2

    const/16 v2, 0x71

    check-cast p1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "request_unlock"

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x71

    :try_start_1
    const-string v3, "request_unlock"

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    iget-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v3, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v5, p0, Lcom/android/launcher2/MenuEditBar;->mEntered:Z

    iput-boolean v3, p0, Lcom/android/launcher2/MenuEditBar;->mDropped:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v2, v5, v5, v3}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/MenuEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$300(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # invokes: Lcom/android/launcher2/MenuEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$400(Lcom/android/launcher2/MenuEditBar$Item;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    invoke-direct {p0, v0, v6, v4, v4}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$300(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # invokes: Lcom/android/launcher2/MenuEditBar$Item;->updateText()V
    invoke-static {v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$400(Lcom/android/launcher2/MenuEditBar$Item;)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuEditBar;->mOrientation:I

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setInitialAnimationParameter()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setInitialAnimationParameter()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    instance-of v6, v3, Lcom/android/launcher2/DragState;

    if-eqz v6, :cond_4

    move-object v1, v3

    check-cast v1, Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-ne p1, v6, :cond_6

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/MenuEditBar;->lock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/launcher2/MenuEditBar$Item;->access$300(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v2

    :cond_1
    :goto_2
    instance-of v6, p1, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->hide()V

    :cond_4
    move v5, v4

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-ne p1, v6, :cond_1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/MenuEditBar;->unlock(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/launcher2/MenuEditBar$Item;->access$300(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v2, v5}, Lcom/android/launcher2/MenuEditBar;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    goto :goto_3

    :pswitch_1
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/android/launcher2/MenuEditBar;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v2, 0x7f100095

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const v2, 0x7f100097

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2, v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$202(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$102(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$502(Lcom/android/launcher2/MenuEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    const v2, 0x7f100096

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$302(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$602(Lcom/android/launcher2/MenuEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_0
    const v2, 0x7f100092

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const v2, 0x7f100094

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2, v0}, Lcom/android/launcher2/MenuEditBar$Item;->access$202(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$102(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$502(Lcom/android/launcher2/MenuEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$302(Lcom/android/launcher2/MenuEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$100(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    # setter for: Lcom/android/launcher2/MenuEditBar$Item;->label:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuEditBar$Item;->access$602(Lcom/android/launcher2/MenuEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/MenuEditBar;->mOrientation:I

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuEditBar;->reloadLayout(I)V

    return-void
.end method

.method public reloadLayout(I)V
    .locals 4

    const v3, 0x7f090128

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setHideAnimation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget v1, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimatorRes:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v3

    :cond_0
    instance-of v9, p1, Lcom/android/launcher2/FolderItem;

    if-nez v9, :cond_6

    const/4 v8, 0x1

    :goto_0
    instance-of v9, p1, Lcom/android/launcher2/AppItem;

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    :goto_1
    instance-of v5, p1, Lcom/android/launcher2/FolderItem;

    if-eqz v5, :cond_8

    move-object v9, p1

    check-cast v9, Lcom/android/launcher2/FolderItem;

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v7, 0x1

    :goto_2
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    :goto_3
    instance-of v9, p1, Lcom/android/launcher2/AppItem;

    if-eqz v9, :cond_a

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v1, 0x1

    :goto_4
    instance-of v9, p1, Lcom/android/launcher2/AppItem;

    if-eqz v9, :cond_b

    if-nez v6, :cond_1

    if-eqz v7, :cond_b

    :cond_1
    if-eqz v3, :cond_b

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v2, 0x1

    :goto_5
    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v1, :cond_c

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher2/MenuEditBar;->setStates(Lcom/android/launcher2/MenuEditBar$Item;ZZZ)V

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v2, :cond_d

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuEditBar;->setVisibility(I)V

    iget v9, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimatorRes:I

    iput v9, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    iget v9, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mLock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimatorRes:I

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/launcher2/MenuEditBar;->mUnlock:Lcom/android/launcher2/MenuEditBar$Item;

    # getter for: Lcom/android/launcher2/MenuEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lcom/android/launcher2/MenuEditBar$Item;->access$200(Lcom/android/launcher2/MenuEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_c
    const/16 v9, 0x8

    goto/16 :goto_6

    :cond_d
    const/16 v9, 0x8

    goto/16 :goto_7
.end method
