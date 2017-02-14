.class Lcom/android/launcher2/MenuAppsSearch$15;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$15;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x42

    const/16 v4, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$15;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iput-boolean v2, v1, Lcom/android/launcher2/MenuAppsSearch;->check_keydown:Z

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$15;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->requestFocusSearchEdit()V

    :cond_3
    :goto_0
    return v3

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$15;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsSearch;->check_keydown:Z

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_3

    :cond_5
    instance-of v1, p1, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$15;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iput-boolean v3, v1, Lcom/android/launcher2/MenuAppsSearch;->check_keydown:Z

    goto :goto_0
.end method
