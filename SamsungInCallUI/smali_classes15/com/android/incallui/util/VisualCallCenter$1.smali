.class final Lcom/android/incallui/util/VisualCallCenter$1;
.super Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;
.source "VisualCallCenter.java"


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

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "RequestIVRCallBackImp"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onMismatching(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 162
    sget v0, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    packed-switch v0, :pswitch_data_0

    .line 173
    const-string v0, "VisualCallCenter"

    const-string v1, "default error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/VisualCallCenter;->isNoMenuIVR:Z

    .line 170
    const-string v0, "VisualCallCenter"

    const-string v1, "RequestIVRCallBackImp.MF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
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

    .prologue
    .line 154
    const-string v0, "RequestIVRCallBackImp"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method
