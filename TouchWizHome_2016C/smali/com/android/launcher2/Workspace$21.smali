.class Lcom/android/launcher2/Workspace$21;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->repositionQuickOptionsOnRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$popup:Lcom/android/launcher2/QuickOptionsPopup;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickOptionsPopup;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$21;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$21;->val$popup:Lcom/android/launcher2/QuickOptionsPopup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$21;->val$popup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsPopup;->getAnchorView()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getIconDestination()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$21;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$21;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->createAndShowQuickOptionsPopup()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace$21;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->createAndShowQuickOptionsPopup()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace$21;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$21;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->createAndShowQuickOptionsPopup()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
