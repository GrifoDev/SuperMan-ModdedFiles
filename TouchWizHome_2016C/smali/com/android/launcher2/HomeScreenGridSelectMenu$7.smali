.class Lcom/android/launcher2/HomeScreenGridSelectMenu$7;
.super Ljava/lang/Object;
.source "HomeScreenGridSelectMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeScreenGridSelectMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    const-string v5, "screenGrid save button clicked."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setActive(ZZZ)V

    sput-boolean v6, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-static {v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->access$100(Lcom/android/launcher2/HomeScreenGridSelectMenu;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-static {v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->access$100(Lcom/android/launcher2/HomeScreenGridSelectMenu;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->bindHomePagesUpdated()V

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-static {v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->access$100(Lcom/android/launcher2/HomeScreenGridSelectMenu;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->applyGridChangefinally()V

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    invoke-virtual {v1, v6}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->applyMenuGridChangefinally()V

    :goto_0
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    return-void

    :cond_2
    sget-object v4, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    const-string v5, "mSaveButtonClickListener: menuView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
