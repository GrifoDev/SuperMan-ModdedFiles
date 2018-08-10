.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;
.super Ljava/lang/Object;
.source "CellLayoutChildren.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->onViewAddedInCLC(Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
