.class Lcom/android/incallui/InCallActivity$InCallActivityMenu;
.super Landroid/widget/PopupMenu;
.source "InCallActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallActivityMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "anchor"    # Landroid/view/View;

    .prologue
    .line 2895
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    .line 2896
    const v0, 0x800005

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 2897
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 2901
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    .line 2902
    .local v0, "inCallMenu":Lcom/android/incallui/InCallMenu;
    if-eqz v0, :cond_0

    .line 2903
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    .line 2910
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2914
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2915
    .local v1, "menu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    .line 2916
    .local v0, "inCallMenu":Lcom/android/incallui/InCallMenu;
    if-eqz v0, :cond_0

    .line 2917
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2918
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    .line 2920
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2921
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    .line 2922
    return-void
.end method
