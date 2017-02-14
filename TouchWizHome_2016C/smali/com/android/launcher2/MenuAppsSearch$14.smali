.class Lcom/android/launcher2/MenuAppsSearch$14;
.super Landroid/os/Handler;
.source "MenuAppsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v6

    if-le v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v4

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget v6, v6, Lcom/android/launcher2/MenuAppsSearch;->called:I

    if-eq v4, v6, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v1, :cond_2

    const-string v6, "MenuAppsSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon from GalaxyApps is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher2/AppItem;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    iput-object v5, v3, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v6, v6, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget v7, v6, Lcom/android/launcher2/MenuAppsSearch;->called:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/launcher2/MenuAppsSearch;->called:I

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$1700(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$1800(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v6, v6, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v7, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showGalaxyAppsResult(Z)V
    invoke-static {v6, v7}, Lcom/android/launcher2/MenuAppsSearch;->access$1000(Lcom/android/launcher2/MenuAppsSearch;Z)V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$14;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v6, v6, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_3
    const-string v6, "MenuAppsSearch"

    const-string v7, "NETWORK_NOT_CONNECTED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
