.class public abstract Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;
.super Ljava/lang/Object;
.source "PluginThumbnailData.java"


# instance fields
.field public insets:Landroid/graphics/Rect;

.field public orientation:I

.field public reducedResolution:Z

.field public scale:F

.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;->insets:Landroid/graphics/Rect;

    return-void
.end method
