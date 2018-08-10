.class Lcom/android/server/media/MediaSessionService$SecGlobalVariable;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecGlobalVariable"
.end annotation


# instance fields
.field private final FLAG_A2DP:I

.field private mAudioCoreVolumekeyLoggingEnabled:Z

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDevice:I

.field private mIsMultiSoundOn:Z

.field private mMultiSoundInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mAudioCoreVolumekeyLoggingEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)Lcom/samsung/android/cover/ICoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mDevice:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mIsMultiSoundOn:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mMultiSoundInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mDevice:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mIsMultiSoundOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/media/MediaSessionService$SecGlobalVariable;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mMultiSoundInfo:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mIsMultiSoundOn:Z

    iput v1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mDevice:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->FLAG_A2DP:I

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mAudioCoreVolumekeyLoggingEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mAudioCoreVolumekeyLoggingEnabled:Z

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SecGlobalVariable;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    return-void
.end method
