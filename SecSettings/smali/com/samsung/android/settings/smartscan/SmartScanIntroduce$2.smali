.class Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;
.super Ljava/lang/Object;
.source "SmartScanIntroduce.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onSurfaceTextureAvailable : onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
