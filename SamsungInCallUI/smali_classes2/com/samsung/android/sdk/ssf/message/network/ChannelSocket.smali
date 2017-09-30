.class public Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;,
        Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;,
        Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;,
        Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;,
        Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;
    }
.end annotation


# static fields
.field private static final DELIVERY_AUTH_FAIL:I = 0x7d3

.field private static final DELIVERY_MESSAGE:I = 0x7d2

.field private static final DELIVERY_REPLY:I = 0x7d1

.field private static final DELIVERY_REQ_CONNECT_FAIL:I = 0x7d5

.field private static final DELIVERY_REQ_ERROR:I = 0x7d4

.field private static final INPUT_BUFFER_SIZE:I = 0x6

.field private static final KEY_REQUEST_CHANNEL_MESSAGE:Ljava/lang/String; = "key_request_channel_message"

.field private static final KEY_RESPONSE_CHANNEL_MESSAGE:Ljava/lang/String; = "key_channel_msg"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "key_result_code"

.field private static final KEY_RESULT_MSG:Ljava/lang/String; = "key_result_msg"

.field private static final KEY_USER_DATA:Ljava/lang/String; = "key_user_data"

.field private static final SOCKET_RETRY_TIME_DIFF:I = 0x2bf20

.field private static final SOCKET_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_ERROR:I = -0x1

.field private static final TOKEN_ERROR_BUT_TRY_SECONDARY:I = -0x2

.field private static final TOKEN_ERROR_FAILED_TO_READ:I = -0x3

.field private static final TOKEN_ERROR_TIMEOUT:I = -0x5

.field private static final TOKEN_ERROR_TIMEOUT_TO_INITIALIZE_CHANNEL:I = -0x4

.field private static final TOKEN_REQ_AUTHENTICATE:I = 0x3

.field private static final TOKEN_REQ_CONNECT_PRIMARY:I = 0x1

.field private static final TOKEN_REQ_CONNECT_SECONDARY:I = 0x2

.field private static final TOKEN_REQ_READ:I = 0x5

.field private static final TOKEN_REQ_WRITE:I = 0x4


# instance fields
.field private keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

.field private mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

.field private mAuthorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

.field private mChannelAuthCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

.field private final mChannelAuthState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

.field private mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private final mConnectState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private final mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

.field private mIsChannelAuthenticated:Z

.field private mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

.field private mPrimaryProxy:Ljava/net/InetSocketAddress;

.field private final mRequestQueue:Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

.field private mSecondaryProxy:Ljava/net/InetSocketAddress;

.field private mSocket:Ljava/net/Socket;

.field private final mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

.field private final mUiHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

.field private messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

.field private previousRequest:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/message/io/KeySet;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$IdleState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ConnectState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mConnectState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$ChannelAuthState;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIsChannelAuthenticated:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAuthorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mPrimaryProxy:Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSecondaryProxy:Ljava/net/InetSocketAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->previousRequest:J

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mRequestQueue:Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getGpbauthkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mPrimaryProxy:Ljava/net/InetSocketAddress;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSecondaryProxy:Ljava/net/InetSocketAddress;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    iput-object p6, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iput-object p7, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAuthorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getChatid()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->setSenderChatid(J)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-direct {v0, p0, p5, v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/SsfClient;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mUiHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    return-void
.end method

.method private ConvertToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN TOKEN ERROR"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TOKEN_REQ_CONNECT_PRIMARY"

    goto :goto_0

    :sswitch_1
    const-string v0, "TOKEN_REQ_CONNECT_SECONDARY"

    goto :goto_0

    :sswitch_2
    const-string v0, "TOKEN_REQ_AUTHENTICATE"

    goto :goto_0

    :sswitch_3
    const-string v0, "TOKEN_REQ_WRITE"

    goto :goto_0

    :sswitch_4
    const-string v0, "TOKEN_REQ_READ"

    goto :goto_0

    :sswitch_5
    const-string v0, "TOKEN_ERROR"

    goto :goto_0

    :sswitch_6
    const-string v0, "TOKEN_ERROR_BUT_TRY_SECONDARY"

    goto :goto_0

    :sswitch_7
    const-string v0, "TOKEN_ERROR_FAILED_TO_READ"

    goto :goto_0

    :sswitch_8
    const-string v0, "TOKEN_ERROR_TIMEOUT_TO_INITIALIZE_CHANNEL"

    goto :goto_0

    :sswitch_9
    const-string v0, "TOKEN_ERROR_TIMEOUT"

    goto :goto_0

    :sswitch_a
    const-string v0, "DELIVERY_REPLY"

    goto :goto_0

    :sswitch_b
    const-string v0, "DELIVERY_MESSAGE"

    goto :goto_0

    :sswitch_c
    const-string v0, "DELIVERY_AUTH_FAIL"

    goto :goto_0

    :sswitch_d
    const-string v0, "DELIVERY_REQ_ERROR"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_9
        -0x4 -> :sswitch_8
        -0x3 -> :sswitch_7
        -0x2 -> :sswitch_6
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7d1 -> :sswitch_a
        0x7d2 -> :sswitch_b
        0x7d3 -> :sswitch_c
        0x7d4 -> :sswitch_d
    .end sparse-switch
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->write(Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mRequestQueue:Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mListener:Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->messageServerProtocol:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mUiHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->rejectRequestInQueue(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->previousRequest:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mPrimaryProxy:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;ILjava/net/InetSocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->connect(ILjava/net/InetSocketAddress;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIdleState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSecondaryProxy:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/io/KeySet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/SsfClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAuthorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Ljava/io/BufferedInputStream;[B)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->read(Ljava/io/BufferedInputStream;[B)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->checkAndInvalidateSocket()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->ConvertToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIsChannelAuthenticated:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIsChannelAuthenticated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mConnectState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    return-object v0
.end method

.method private checkAndInvalidateSocket()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket Channel is not connected. isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isClosed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mIsChannelAuthenticated:Z

    :cond_1
    return-void
.end method

.method private closeHandlerThreads()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    return-void
.end method

.method private connect(ILjava/net/InetSocketAddress;)V
    .locals 3

    const-string v0, "connect."

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;-><init>(Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private read(Ljava/io/BufferedInputStream;[B)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x6

    move v3, v2

    move v2, v1

    :goto_0
    if-lez v3, :cond_1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    aget-byte v3, p2, v1

    const/4 v2, 0x1

    aget-byte v4, p2, v2

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v5, 0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v2, v5

    const/4 v5, 0x4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    const/4 v5, 0x5

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read. version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bodySize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0xf4240

    if-le v2, v5, :cond_2

    const-string v1, "read. Invalid bodySize."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    new-array v5, v2, [B

    :goto_2
    if-lez v2, :cond_3

    invoke-virtual {p1, v5, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read. Total "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->valueOf(I)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "read. Unknown type."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/2addr v1, v6

    sub-int/2addr v2, v6

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->previousRequest:J

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    invoke-direct {v0, v3, v1, v5}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;-><init>(ILcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;[B)V

    goto :goto_1
.end method

.method private rejectRequestInQueue(ILjava/lang/String;)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mRequestQueue:Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mRequestQueue:Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequestQueue;->poll()Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[IdleState] processMessage. Invalid channelRequest."

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getReqChannelMsg()Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mUiHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x7d4

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_result_code"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "key_result_msg"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_request_channel_message"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_user_data"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mUiHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$DeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private write(Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;)I
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getProtocolVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getType()Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->getEncryptedBody()[B

    move-result-object v3

    if-nez v2, :cond_0

    const-string v1, "write. Invalid type."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_2

    :cond_1
    const-string v1, "write. Invalid encryptedBody."

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write. version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", encryptedBodySize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->getValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v1, v4, 0x18

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    shr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    int-to-byte v1, v4

    invoke-virtual {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    add-int/lit8 v0, v4, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write. Total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->previousRequest:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->checkAndInvalidateSocket()V

    goto/16 :goto_0
.end method


# virtual methods
.method public authenticate(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "authenticate. Invalid channelMsg."

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;->getReqId()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticate. reqId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mChannelAuthCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;->buildFrom(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/util/AesCipher;)Lcom/samsung/android/sdk/ssf/message/server/MessagePayload;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mAsyncSocketHandler:Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket$AsyncSocketHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public close()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->checkAndInvalidateSocket()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xea61

    const-string v2, "Connection closed."

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->rejectRequestInQueue(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getKeySet()Lcom/samsung/android/sdk/ssf/message/io/KeySet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    return-object v0
.end method

.method public send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channelMsg."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public send(Lcom/samsung/android/sdk/ssf/message/network/ChannelMessage;Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;Landroid/os/Bundle;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reqChannelMsg."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid replyChannelMsgType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/server/MessagePayload$Type;->getValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mStateHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shutDown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->close()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->closeHandlerThreads()V

    return v0
.end method

.method public updateKey(Lcom/samsung/android/sdk/ssf/message/io/KeySet;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->mCipher:Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/network/ChannelSocket;->keySet:Lcom/samsung/android/sdk/ssf/message/io/KeySet;

    return v0
.end method
