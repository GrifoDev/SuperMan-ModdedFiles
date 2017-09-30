.class Lcom/android/incallui/InCallActivity$InCallActivityMenu;
.super Landroid/widget/PopupMenu;

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

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    const v0, 0x800005

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
