.class Lcom/android/launcher2/QuickViewWorkspace$6;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;

.field final synthetic val$v:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iput-object p2, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->val$v:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v3}, Lcom/android/launcher2/QuickViewWorkspace;->access$200(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveHomeZeroPageOnOffState(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "HOEO"

    const-string v5, "Zero page"

    const-wide/16 v6, -0x1

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->unBindVirtualScreen()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v11, v11}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->bindVirtualScreen()V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->val$v:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v4}, Lcom/android/launcher2/QuickViewWorkspace;->access$300(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->val$v:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v4, v4, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v5, v5, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v6, v6, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v7, v7, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v10

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager;

    move-object v2, v0

    invoke-virtual {v10}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPosition()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->semForceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->val$v:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace$6;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v4}, Lcom/android/launcher2/QuickViewWorkspace;->access$400(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/launcher2/QuickView;->bgImageView:Landroid/widget/ImageView;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
