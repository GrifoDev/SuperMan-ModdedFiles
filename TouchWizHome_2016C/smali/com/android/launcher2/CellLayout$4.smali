.class Lcom/android/launcher2/CellLayout$4;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    sget-object v1, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_DELAY_END:Lcom/android/launcher2/CellLayout$ReorderStatus;

    iput-object v1, v0, Lcom/android/launcher2/CellLayout;->mReorderstate:Lcom/android/launcher2/CellLayout$ReorderStatus;

    return-void
.end method
