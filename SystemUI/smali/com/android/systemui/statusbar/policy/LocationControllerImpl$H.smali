.class final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_18285(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method private locationActiveChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private locationSettingsChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs$1;-><init>(Z)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_18033(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationActiveChanged(Z)V

    return-void
.end method
