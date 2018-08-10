.class Lcom/android/server/cover/CoverTestModeUtils$1;
.super Landroid/os/Handler;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverTestModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverTestModeUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->-get1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-static {v0}, Lcom/android/server/cover/CoverTestModeUtils;->-get0(Lcom/android/server/cover/CoverTestModeUtils;)Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    move-result-object v0

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->-get1()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    :cond_0
    return-void
.end method
