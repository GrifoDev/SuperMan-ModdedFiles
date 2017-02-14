.class public Landroid/net/wifi/nan/WifiNanSessionListener;
.super Ljava/lang/Object;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/WifiNanSessionListener$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final FAIL_REASON_INVALID_ARGS:I = 0x1

.field public static final FAIL_REASON_NO_MATCH_SESSION:I = 0x2

.field public static final FAIL_REASON_NO_RESOURCES:I = 0x0

.field public static final FAIL_REASON_OTHER:I = 0x3

.field public static final LISTEN_HIDDEN_FLAGS:I = 0xf5

.field public static final LISTEN_MATCH:I = 0x10

.field public static final LISTEN_MESSAGE_RECEIVED:I = 0x80

.field public static final LISTEN_MESSAGE_SEND_FAIL:I = 0x40

.field public static final LISTEN_MESSAGE_SEND_SUCCESS:I = 0x20

.field public static final LISTEN_PUBLISH_FAIL:I = 0x1

.field public static final LISTEN_PUBLISH_TERMINATED:I = 0x2

.field public static final LISTEN_SUBSCRIBE_FAIL:I = 0x4

.field public static final LISTEN_SUBSCRIBE_TERMINATED:I = 0x8

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"

.field private static final MESSAGE_BUNDLE_KEY_PEER_ID:Ljava/lang/String; = "peer_id"

.field private static final TAG:Ljava/lang/String; = "WifiNanSessionListener"

.field public static final TERMINATE_REASON_DONE:I = 0x0

.field public static final TERMINATE_REASON_FAIL:I = 0x1

.field private static final VDBG:Z


# instance fields
.field public callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/nan/WifiNanSessionListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/nan/WifiNanSessionListener$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/nan/WifiNanSessionListener$1;-><init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V

    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    new-instance v0, Landroid/net/wifi/nan/WifiNanSessionListener$2;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nan/WifiNanSessionListener$2;-><init>(Landroid/net/wifi/nan/WifiNanSessionListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 0

    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 0

    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 0

    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 0

    return-void
.end method

.method public onPublishFail(I)V
    .locals 0

    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 2

    const-string/jumbo v0, "WifiNanSessionListener"

    const-string/jumbo v1, "onPublishTerminated: called in stub - override if interested or disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 0

    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 2

    const-string/jumbo v0, "WifiNanSessionListener"

    const-string/jumbo v1, "onSubscribeTerminated: called in stub - override if interested or disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
