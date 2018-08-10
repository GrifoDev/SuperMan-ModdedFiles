.class Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
.super Lcom/samsung/android/location/ISLocationListener$Stub;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/SemLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_LOCATION_AVAILABLE:I = 0x1

.field public static final TYPE_LOCATION_CHANGED_ADDRESS:I = 0x2


# instance fields
.field private mListener:Lcom/samsung/android/location/SemLocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    new-instance v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;-><init>(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;)V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/location/Location;

    invoke-interface {v4, v3}, Lcom/samsung/android/location/SemLocationListener;->onLocationAvailable([Landroid/location/Location;)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "currentlocationaddress"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-interface {v4, v3, v0}, Lcom/samsung/android/location/SemLocationListener;->onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/location/Address;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "currentlocationaddress"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_0
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
