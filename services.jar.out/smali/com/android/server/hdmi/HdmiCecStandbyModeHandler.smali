.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;
    }
.end annotation


# instance fields
.field private final mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mCecMessageHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field private final mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-direct {v0, p0, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-direct {v0, p0, v4}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    invoke-direct {v0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;

    invoke-direct {v0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-direct {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x82

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x85

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x81

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x86

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x36

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x87

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x45

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x90

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x9d

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x7e

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x7a

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xc0

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xc5

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x83

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x91

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x84

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x8c

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x46

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    const/16 v1, 0x44

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x8f

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xff

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x9f

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xa0

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x72

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    return-void
.end method

.method private addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method
