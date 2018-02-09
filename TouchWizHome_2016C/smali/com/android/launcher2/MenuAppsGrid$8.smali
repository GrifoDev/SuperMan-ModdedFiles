.class Lcom/android/launcher2/MenuAppsGrid$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->setTabHost(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$8;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$8;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$2602(Lcom/android/launcher2/MenuAppsGrid;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$8;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$8;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    return-void
.end method
