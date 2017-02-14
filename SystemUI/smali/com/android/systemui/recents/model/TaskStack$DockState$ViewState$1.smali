.class final Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;
.super Landroid/util/IntProperty;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->-get0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;->get(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->-set0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;I)I

    iget-object v0, p1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;->setValue(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;I)V

    return-void
.end method
