.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->closeLayoutGap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$4;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->closeLayoutGap()V

    return-void
.end method
