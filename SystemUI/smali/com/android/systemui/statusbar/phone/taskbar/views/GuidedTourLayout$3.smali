.class Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;
.super Ljava/lang/Object;
.source "GuidedTourLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    sub-int v2, p4, p2

    sub-int v0, p5, p3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)I

    move-result v3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
