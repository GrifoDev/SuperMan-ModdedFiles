.class Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
.super Lcom/samsung/android/location/ISCurrentLocListener$Stub;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/SemLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentLocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_CURRENT_LOCATION:I = 0x1


# instance fields
.field private mListener:Lcom/samsung/android/location/SCurrentLocListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SCurrentLocListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/location/SemLocationManager;
    .param p2, "listener"    # Lcom/samsung/android/location/SCurrentLocListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {p0}, Lcom/samsung/android/location/ISCurrentLocListener$Stub;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/android/location/SCurrentLocListener;

    .line 343
    new-instance v0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport$1;-><init>(Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;)V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 340
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/android/location/SCurrentLocListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/samsung/android/location/SCurrentLocListener;->onCurrentLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCurrentLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 352
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method
