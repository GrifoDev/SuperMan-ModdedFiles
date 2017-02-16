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

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v1, "CameraEffect"

    iput-object v1, p0, Lcom/android/incallui/util/CameraEffect;->LOG_TAG:Ljava/lang/String;

    .line 43
    iput-boolean v3, p0, Lcom/android/incallui/util/CameraEffect;->DBG:Z

    .line 58
    const-string v1, "CameraEffect constructor..."

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/util/CameraEffect;->log(Ljava/lang/String;Z)V

    .line 59
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

    .line 60
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

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04012d

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    return-void
.end method

.method public static isCameraEffectLayoutVisible()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "CameraEffect"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 173
    const-string v0, "CameraEffect"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method private setCameraEffect(I)V
    .locals 4
    .param p1, "effectType"    # I

    .prologue
    .line 149
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

    .line 150
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 151
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraEffect(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public static setCameraEffectLayoutVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    .line 166
    return-void
.end method

.method private updateSwitchButtonLayout()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout()V

    .line 158
    return-void
.end method


# virtual methods
.method public hideEffectLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 137
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/util/CameraEffect;->updateSwitchButtonLayout()V

    .line 142
    return-void
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f1003ae

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    .line 76
    const v0, 0x7f1003b0

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    .line 77
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    const v0, 0x7f1003b3

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    .line 79
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectBeauty:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    const v0, 0x7f1003b6

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    .line 81
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectMono:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_2
    const v0, 0x7f1003b9

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectNegative:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_3
    const v0, 0x7f1003bc

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    .line 86
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSepia:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_4
    const v0, 0x7f1003bf

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    .line 88
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectSolarise:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_5
    const v0, 0x7f1003c1

    invoke-virtual {p0, v0}, Lcom/android/incallui/util/CameraEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mCancelEffectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_6
    return-void
.end method

.method public isShowingEffectLayout()Z
    .locals 1

    .prologue
    .line 145
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
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 98
    .local v0, "id":I
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

    .line 100
    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 105
    :sswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 108
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 111
    :sswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 114
    :sswitch_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 117
    :sswitch_5
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/incallui/util/CameraEffect;->setCameraEffect(I)V

    goto :goto_0

    .line 120
    :sswitch_6
    sput-boolean v3, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/incallui/util/CameraEffect;->hideEffectLayout()V

    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003b0 -> :sswitch_0
        0x7f1003b3 -> :sswitch_1
        0x7f1003b6 -> :sswitch_2
        0x7f1003b9 -> :sswitch_3
        0x7f1003bc -> :sswitch_4
        0x7f1003bf -> :sswitch_5
        0x7f1003c1 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    invoke-virtual {p0}, Lcom/android/incallui/util/CameraEffect;->init()V

    .line 71
    return-void
.end method

.method public showEffectLayout()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/incallui/util/CameraEffect;->mEffectLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/util/CameraEffect;->mCameraEffectLayoutVisible:Z

    .line 134
    :cond_0
    return-void
.end method
