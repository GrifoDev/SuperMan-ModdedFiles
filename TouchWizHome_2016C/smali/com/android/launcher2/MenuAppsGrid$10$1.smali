.class Lcom/android/launcher2/MenuAppsGrid$10$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$10;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$10;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$10;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$10$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$10;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$10$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$10$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$10;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$10$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$10;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$10$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method
