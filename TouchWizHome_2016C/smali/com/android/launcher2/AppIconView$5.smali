.class Lcom/android/launcher2/AppIconView$5;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppIconView;->createAndShowQuickOptionsPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView$5;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AppIconView"

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$5;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setCurrentQuickoptionsPopup(Lcom/android/launcher2/QuickOptionsPopup;)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$5;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$5;->this$0:Lcom/android/launcher2/AppIconView;

    iput-object v2, v0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-void
.end method
