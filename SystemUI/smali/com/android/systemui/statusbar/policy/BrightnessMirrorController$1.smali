.class Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->-get0(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->-get1(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    return-void
.end method
