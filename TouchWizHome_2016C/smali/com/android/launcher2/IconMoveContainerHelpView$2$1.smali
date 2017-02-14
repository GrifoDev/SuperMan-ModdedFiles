.class Lcom/android/launcher2/IconMoveContainerHelpView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconMoveContainerHelpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainerHelpView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainerHelpView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$600(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mForceClose:Z
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$700(Lcom/android/launcher2/IconMoveContainerHelpView;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_ImgView:Landroid/widget/ViewSwitcher;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$300(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/ViewSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_ImgView:Landroid/widget/ViewSwitcher;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$300(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/ViewSwitcher;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    move-object v2, v5

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_ImgView:Landroid/widget/ViewSwitcher;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$300(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/widget/ViewSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # setter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView_ImgView:Landroid/widget/ViewSwitcher;
    invoke-static {v6, v7}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$302(Lcom/android/launcher2/IconMoveContainerHelpView;Landroid/widget/ViewSwitcher;)Landroid/widget/ViewSwitcher;

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # setter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v6, v7}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$602(Lcom/android/launcher2/IconMoveContainerHelpView;Landroid/view/View;)Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # setter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mIsRunning:Z
    invoke-static {v6, v8}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$802(Lcom/android/launcher2/IconMoveContainerHelpView;Z)Z

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$900(Lcom/android/launcher2/IconMoveContainerHelpView;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mForceClose:Z
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$700(Lcom/android/launcher2/IconMoveContainerHelpView;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v6, "MoveApps_Help_Shown"

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$1000(Lcom/android/launcher2/IconMoveContainerHelpView;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$1000(Lcom/android/launcher2/IconMoveContainerHelpView;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainerHelpView$2$1;->this$1:Lcom/android/launcher2/IconMoveContainerHelpView$2;

    iget-object v6, v6, Lcom/android/launcher2/IconMoveContainerHelpView$2;->this$0:Lcom/android/launcher2/IconMoveContainerHelpView;

    # getter for: Lcom/android/launcher2/IconMoveContainerHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v6}, Lcom/android/launcher2/IconMoveContainerHelpView;->access$1000(Lcom/android/launcher2/IconMoveContainerHelpView;)Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->requestFocus()Z

    :cond_4
    return-void
.end method
