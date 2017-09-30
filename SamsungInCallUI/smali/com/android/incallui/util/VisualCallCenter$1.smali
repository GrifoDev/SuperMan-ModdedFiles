.class final Lcom/android/incallui/util/VisualCallCenter$1;
.super Lcom/yulore/sdk/ivr/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "RequestIVRCallBackImp"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMismatching(I)V
    .locals 2

    sget v0, Lcom/yulore/sdk/ivr/c/b;->DIFFENT:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "VisualCallCenter"

    const-string v1, "default error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    const-string v0, "VisualCallCenter"

    const-string v1, "RequestIVRCallBackImp.MF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "RequestIVRCallBackImp"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
