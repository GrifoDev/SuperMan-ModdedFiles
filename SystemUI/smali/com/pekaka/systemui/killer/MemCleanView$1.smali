.class Lcom/pekaka/systemui/killer/MemCleanView$1;
.super Landroid/database/ContentObserver;
.source "MemCleanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pekaka/systemui/killer/MemCleanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pekaka/systemui/killer/MemCleanView;


# direct methods
.method constructor <init>(Lcom/pekaka/systemui/killer/MemCleanView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/pekaka/systemui/killer/MemCleanView$1;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/pekaka/systemui/killer/MemCleanView$1;->this$0:Lcom/pekaka/systemui/killer/MemCleanView;

    invoke-static {v0}, Lcom/pekaka/systemui/killer/MemCleanView;->access$000(Lcom/pekaka/systemui/killer/MemCleanView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pekaka/systemui/killer/MemCleanView$1$1;

    invoke-direct {v1, p0}, Lcom/pekaka/systemui/killer/MemCleanView$1$1;-><init>(Lcom/pekaka/systemui/killer/MemCleanView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
