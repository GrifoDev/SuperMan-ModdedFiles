.class public Lsiso/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsiso/vt/VTManager$EventHandler;,
        Lsiso/vt/VTManager$VTEventForUI;,
        Lsiso/vt/VTManager$VTStackStateListener;
    }
.end annotation


# static fields
.field public static final H324M_RECORD_RX_AUDIO_CHANNEL:I = 0x2

.field public static final H324M_RECORD_RX_VIDEO_CHANNEL:I = 0x8

.field public static final H324M_RECORD_TX_AUDIO_CHANNEL:I = 0x1

.field public static final H324M_RECORD_TX_VIDEO_CHANNEL:I = 0x4

.field public static final VT_ORIENTATION_LANDSCAPE_BOTTOM:I = 0x4

.field public static final VT_ORIENTATION_LANDSCAPE_TOP:I = 0x2

.field public static final VT_ORIENTATION_PORTAIT_BOTTOM:I = 0x3

.field public static final VT_ORIENTATION_PORTAIT_TOP:I = 0x1

.field private static vtInstance:Lsiso/vt/VTManager;


# instance fields
.field private mContext:I

.field private mContext64:J

.field public mEventHandler:Lsiso/vt/VTManager$EventHandler;

.field private mListenerContext:I

.field private mListenerContext64:J

.field private mNearSurface:Landroid/view/Surface;

.field public mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private mSurface:Landroid/view/Surface;

.field public mUserIndiData:Lsiso/vt/VideoTelephonyData;

.field private vtStackEventStrings:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsiso/vt/VTManager;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Inside Static Block"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "vtmanager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "H324M_VT_CREATE_SESSION_CONFIRMED"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_AUDIO_TX_OLC_ESTABLISHED"

    aput-object v2, v1, v6

    const-string/jumbo v2, "H324M_VT_AUDIO_RX_OLC_ESTABLISHED"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_VIDEO_TX_OLC_ESTABLISHED"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_VIDEO_RX_OLC_ESTABLISHED"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_AUDIO_TX_OLC_CLOSED"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_AUDIO_RX_OLC_CLOSED"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_VIDEO_TX_OLC_CLOSED"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_VIDEO_RX_OLC_CLOSED"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_START_CALL_SUCCESS"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_START_CALL_FAILURE"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_SESSION_STOP_SUCCESS"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_SESSION_STOP_FAILED"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_END_CALL_REQUEST"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_PROTOCOL_ERR_IND"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_RB_CALL_DISCONNECTED"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_CALL_DEINITIALIZED"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_SET_CAMERA_FRAME_RATE"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_GENERATE_IFRAME"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_VENDOR_ID_IND"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_USER_INPUT_INDICATION"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_FIRST_VIDEO_FRAME_DECODED"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_UL_VIDEO_RESOURCE_INIT_DONE"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_START_SUCESS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_START_FAILURE"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_STOP_SUCESS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_STOP_FAILURE"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_START_SUCCESS"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_START_FAILURE"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_UNSUPPORTED_AUDIO"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_UNSUPPORTED_VIDEO"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_FILE_READ_ERR"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_NO_AUDIO"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_NO_VIDEO"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_STOP_SUCCESS"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_STOP_FAILED"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_FC_PROTOCOL_ERROR"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "H234M_FC_VOL_READ_FAILED"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_START_SUCCESS"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_START_FAILURE"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_STOP_SUCCESS"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_STOP_FAILED"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_CANCEL_SUCCESS"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_PROTOCOL_ERROR"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_REC_MAX_TIMEOUT"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_CAMERA_CONNECT_FAILED"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_VIDEO_DEACTIVATED"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IC_VIDEO_ACTIVATED"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_PREVIEW_VIDEO_DATA_IND"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_REMOTE_VIDEO_DATA_IND"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_ALL_OLC_ESTABLISHED"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_MRBT_START"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_MRBT_END"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_NO_DATA_ERR_IND"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_VT_RECIEVED_DATA_IND"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string/jumbo v2, "H324M_IND_TO_APP_MAX"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_DECODE_JPEG_FAILURE"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_SURFACE_INIT_FAILURE"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_CAMERA_START_FAILURE"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_CAMERA_START_SUCCESS"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_CAMERA_RETRY_START_SUCCESS"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_USER_INDICATION"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_VMS_MODE"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string/jumbo v2, "VTMNGR_FIRST_FRAME_FROM_CAMERA"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    iput-object v1, p0, Lsiso/vt/VTManager;->vtStackEventStrings:[Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    :goto_0
    const-string/jumbo v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mContext64 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lsiso/vt/VTManager;->mContext64:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mListenerContext64 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lsiso/vt/VTManager;->mListenerContext64:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsiso/vt/VTManager;->mContext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mListenerContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsiso/vt/VTManager;->mListenerContext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lsiso/vt/VTManager;->dummy(I)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lsiso/vt/VTManager;->native_setup(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto/16 :goto_0

    :cond_1
    iput-object v4, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto/16 :goto_0
.end method

.method public static getInstance()Lsiso/vt/VTManager;
    .locals 1

    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    new-instance v0, Lsiso/vt/VTManager;

    invoke-direct {v0}, Lsiso/vt/VTManager;-><init>()V

    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    :cond_0
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "postEventFromNative"

    const-string/jumbo v1, "VT Manager Instance Deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "postEventFromNative"

    const-string/jumbo v2, "posting message"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "postEventFromNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "arg1 :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "postEventFromNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "arg2 :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1

    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    if-nez v0, :cond_3

    new-instance v0, Lsiso/vt/VideoTelephonyData;

    move-object v3, p4

    check-cast v3, Ljava/lang/String;

    move-object v2, v1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lsiso/vt/VideoTelephonyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v0, p1, p2, p3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v0, v6, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lsiso/vt/VideoTelephonyData;->setUserData(Ljava/lang/String;)V

    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v0, p3}, Lsiso/vt/VideoTelephonyData;->setDataLen(I)V

    iget-object v0, v6, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    invoke-virtual {v0, p2}, Lsiso/vt/VideoTelephonyData;->getObjectMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public final native CancelRecording()V
.end method

.method public final native CaptureImage(Ljava/lang/String;Z)V
.end method

.method public final native FreezeVideo()V
.end method

.method public final native GetCameraParams(I)I
.end method

.method public final native IncreaseRemoteRenderCount()V
.end method

.method public final native IncreaseRenderCount()V
.end method

.method public final native MuteCamera()V
.end method

.method public final native ResetNearEndDisplay()V
.end method

.method public final native ResetPreviewDisplay()V
.end method

.method public final native SetCameraParams(II)I
.end method

.method public final native StartRecording(Ljava/lang/String;I)V
.end method

.method public final native StartVTCall(Z)V
.end method

.method public final native StartVTCall(ZI)V
.end method

.method public final native StopRecording(Z)V
.end method

.method public final native StopVTCall()V
.end method

.method public final native SwipeSurface()V
.end method

.method public final native UnmuteCamera()V
.end method

.method public final native cleanupCall()V
.end method

.method public deinitVTManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    iput-object v0, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    iput-object v0, p0, Lsiso/vt/VTManager;->mUserIndiData:Lsiso/vt/VideoTelephonyData;

    return-void
.end method

.method public dummy(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v4, v3, v3, v3, v4}, Lsiso/vt/VTManager;->postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->IncreaseRemoteRenderCount()V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->IncreaseRenderCount()V

    invoke-virtual {p0, v0, v1, v2, v2}, Lsiso/vt/VTManager;->startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V

    invoke-virtual {p0, v2, v2}, Lsiso/vt/VTManager;->StartVTCall(ZI)V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->CancelRecording()V

    invoke-virtual {p0, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    invoke-virtual {p0}, Lsiso/vt/VTManager;->FreezeVideo()V

    invoke-virtual {p0, v4, v2}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2, v2}, Lsiso/vt/VTManager;->setSKTInfo(II)V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->SwipeSurface()V

    invoke-virtual {p0, v2}, Lsiso/vt/VTManager;->setEmotionalEyeContact(I)V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->MuteCamera()V

    invoke-virtual {p0}, Lsiso/vt/VTManager;->UnmuteCamera()V

    invoke-virtual {p0, v4}, Lsiso/vt/VTManager;->setPresetImg(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lsiso/vt/VTManager;->enableDualCamera(Z)V

    return-void
.end method

.method public final native enableDualCamera(Z)V
.end method

.method public final native releaseVTManager()V
.end method

.method public final native sendDTMF(Ljava/lang/String;I)V
.end method

.method public final native sendLiveVideo()V
.end method

.method public final native sendStillImage(Ljava/lang/String;)V
.end method

.method public final native sendVideo(Ljava/lang/String;)V
.end method

.method public final native setEmotionalAnimation(I)V
.end method

.method public final native setEmotionalEyeContact(I)V
.end method

.method public final native setOrientation(I)V
.end method

.method public final native setPresetImg(Ljava/lang/String;)V
.end method

.method public final setPreviewDisplay(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public final native setPreviewDisplay(Landroid/view/Surface;II)V
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public final native setSKTInfo(II)V
.end method

.method public setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V
    .locals 2

    const-string/jumbo v0, "setStackStateListener"

    const-string/jumbo v1, "Setting mStackStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    return-void
.end method

.method public final startCamera(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    return-void
.end method

.method public final native startCamera(Landroid/view/Surface;II)V
.end method

.method public final startCamera(Landroid/view/SurfaceHolder;II)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    return-void
.end method

.method public final startCameraQCICS(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, v1, p3, p4}, Lsiso/vt/VTManager;->startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    return-void
.end method

.method public final native startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V
.end method

.method public final startCameraQCICS(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;II)V
    .locals 2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lsiso/vt/VTManager;->startCameraQCICS(Landroid/view/Surface;Landroid/view/Surface;II)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    return-void
.end method

.method public final native stopCamera()V
.end method
