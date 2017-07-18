.class Lcom/android/launcher2/CellLayoutHotseat$6;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayoutHotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$6;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$6;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-static {v0}, Lcom/android/launcher2/CellLayoutHotseat;->access$200(Lcom/android/launcher2/CellLayoutHotseat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$6;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->access$202(Lcom/android/launcher2/CellLayoutHotseat;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat$6;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    :cond_0
    return-void
.end method
