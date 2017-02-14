.class final Lcom/android/launcher2/FocusHelper$14;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    # getter for: Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {}, Lcom/android/launcher2/FocusHelper;->access$1300()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleWidgetFolderPagedViewWidgetKeyEvent(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
