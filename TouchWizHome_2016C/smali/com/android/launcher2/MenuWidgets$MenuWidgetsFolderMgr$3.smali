.class Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$3;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$3;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->access$2800(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setVisibility(I)V

    return-void
.end method
