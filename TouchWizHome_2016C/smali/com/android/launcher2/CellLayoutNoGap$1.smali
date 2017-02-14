.class Lcom/android/launcher2/CellLayoutNoGap$1;
.super Ljava/lang/Object;
.source "CellLayoutNoGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutNoGap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutNoGap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap$1;->this$0:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap$1;->this$0:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/CellLayoutNoGap;->mCloseLayoutGapPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->access$002(Lcom/android/launcher2/CellLayoutNoGap;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap$1;->this$0:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    return-void
.end method
