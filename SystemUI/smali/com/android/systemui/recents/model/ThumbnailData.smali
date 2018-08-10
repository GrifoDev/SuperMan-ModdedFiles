.class public Lcom/android/systemui/recents/model/ThumbnailData;
.super Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;
.source "ThumbnailData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;-><init>()V

    return-void
.end method

.method public static createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 3

    new-instance v0, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    return-object v0
.end method
