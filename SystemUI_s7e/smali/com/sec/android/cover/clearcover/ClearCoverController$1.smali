.class Lcom/sec/android/cover/clearcover/ClearCoverController$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    :cond_0
    return-void
.end method
