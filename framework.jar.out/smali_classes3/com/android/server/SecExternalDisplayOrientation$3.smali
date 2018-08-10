.class Lcom/android/server/SecExternalDisplayOrientation$3;
.super Landroid/view/OrientationEventListener;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayOrientation;->setOrientationListenerForCamera(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayOrientation;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->-get0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Checking orientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bIsCameraOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    rem-int/lit16 p1, p1, 0x168

    const/16 v0, 0x2d

    if-ge p1, v0, :cond_7

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Checking Orientation Value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->-get2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bIsCameraOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$3;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->-get2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    :cond_6
    return-void

    :cond_7
    const/16 v0, 0x87

    if-ge p1, v0, :cond_8

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_9

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_a

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x168

    if-ge p1, v0, :cond_3

    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-set1(I)I

    goto/16 :goto_0
.end method
