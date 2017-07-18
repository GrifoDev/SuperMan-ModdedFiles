.class public Lcom/android/incallui/util/CameraEffect;
.super Landroid/widget/RelativeLayout;
.source "CameraEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mCameraEffectLayoutVisible:Z


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private mCancelEffectButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEffectBeauty:Landroid/widget/ImageButton;

.field private mEffectLayout:Landroid/view/ViewGroup;

.field private mEffectMono:Landroid/widget/ImageButton;

.field private mEffectNegative:Landroid/widget/ImageButton;

.field private mEffectNone:Landroid/widget/ImageButton;

.field private mEffectSepia:Landroid/widget/ImageButton;

.field private mEffectSolarise:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "CameraEffect"

    iput-object v1, p0, Lcom/android/incallui/util/CameraEffect;->LOG_TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/incallui/util/CameraEffect;->DBG:Z

    const-string v1, "CameraEffect constructor..."

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04012d

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static isCameraEffectLayoutVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CameraEffect"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CameraEffect"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setCameraEffect(I)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect - effectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraEffect(I)V

    :cond_0
    return-void
.end method

.method public static setCameraEffectLayoutVisible(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    return-void
.end method

.method private updateSwitchButtonLayout()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout()V

    return-void
.end method


# virtual methods
.method public hideEffectLayout()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/util/CameraEffect;->updateSwitchButtonLayout()V

    return-void
.end method

.method protected init()V
    .locals 1

    const v0, 0x7f1003b9

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const v0, 0x7f1003bb

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f1003be

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f1003c1

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f1003c4

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f1003c7

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public isShowingEffectLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;Z)V

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v4}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    :sswitch_6
    sput-boolean v3, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    invoke-virtual {p0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003bb -> :sswitch_0
        0x7f1003be -> :sswitch_1
        0x7f1003c1 -> :sswitch_2
        0x7f1003c4 -> :sswitch_3
        0x7f1003c7 -> :sswitch_4
        0x7f1003ca -> :sswitch_5
        0x7f1003cc -> :sswitch_6
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/incallui/util/CameraEffect;->init()V

    return-void
.end method

.method public showEffectLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    :cond_0
    return-void
.end method
