.class Lcom/android/launcher2/MenuWidgetsSearch$1;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsSearch;->openKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsSearch$1;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch$1;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    # getter for: Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsSearch;->access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_0
    return-void
.end method
