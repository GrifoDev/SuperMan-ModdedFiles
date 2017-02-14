.class Lcom/sec/dtl/launcher/WallpaperScroller$1;
.super Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dtl/launcher/WallpaperScroller;


# direct methods
.method constructor <init>(Lcom/sec/dtl/launcher/WallpaperScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-direct {p0}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVectorChanged(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mTiltUpdateHandler:Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$000(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$1;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mTiltUpdateHandler:Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$000(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->update(FFFFFF)V
    invoke-static/range {v0 .. v6}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->access$100(Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;FFFFFF)V

    :cond_0
    return-void
.end method
