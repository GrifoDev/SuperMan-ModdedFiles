.class Landroid/app/ActionBar$FollowOutOfActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowOutOfActionBar"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private final mFocusRoot:Landroid/view/ViewGroup;

.field private final mToolbar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    :cond_1
    return-void
.end method
