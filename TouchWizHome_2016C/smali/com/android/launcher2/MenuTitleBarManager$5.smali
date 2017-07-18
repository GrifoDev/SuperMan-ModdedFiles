.class Lcom/android/launcher2/MenuTitleBarManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuTitleBarManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuTitleBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager$5;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager$5;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-static {v0}, Lcom/android/launcher2/MenuTitleBarManager;->access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f11009f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
