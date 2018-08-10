.class Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings$1;
.super Ljava/lang/Object;
.source "UseIntelligentBiometricsLockSettings.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings$1;->this$0:Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v1, "onSurfaceTextureAvailable : onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
