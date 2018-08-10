.class Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$1;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/views/GuidedTourLayout;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeGuidedTourLayout()V

    return-void
.end method
