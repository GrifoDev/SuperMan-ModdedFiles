.class Lcom/android/systemui/pip/phone/PipDismissViewController$1;
.super Ljava/lang/Object;
.source "PipDismissViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipDismissViewController;->destroyDismissTarget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipDismissViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipDismissViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController$1;->this$0:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController$1;->this$0:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->-get1(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController$1;->this$0:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->-get0(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController$1;->this$0:Lcom/android/systemui/pip/phone/PipDismissViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->-set0(Lcom/android/systemui/pip/phone/PipDismissViewController;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
