.class Lcom/android/launcher2/CellLayoutHotseat$2;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$2;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$2;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$2;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget v1, p0, Lcom/android/launcher2/CellLayoutHotseat$2;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    return-void
.end method
