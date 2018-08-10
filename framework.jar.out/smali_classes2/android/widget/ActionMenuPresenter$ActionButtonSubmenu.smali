.class Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get6(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    :cond_0
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    :cond_1
    iget-object v0, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    return-void

    :cond_2
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get6(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->-set0(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
