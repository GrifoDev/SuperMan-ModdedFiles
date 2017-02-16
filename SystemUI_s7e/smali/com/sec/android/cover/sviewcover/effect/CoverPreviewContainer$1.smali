.class Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->-get0(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->-get0(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    :cond_0
    return-void
.end method
