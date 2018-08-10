.class Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;
.super Ljava/lang/Object;
.source "GuidedTourLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->makeGuidedTourView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

.field final synthetic val$action:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;->val$action:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;->val$action:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeGuidedTourLayout()V

    return-void
.end method
