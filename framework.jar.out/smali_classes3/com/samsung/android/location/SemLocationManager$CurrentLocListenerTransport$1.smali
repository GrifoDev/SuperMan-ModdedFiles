.class Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport$1;
.super Landroid/os/Handler;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SCurrentLocListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;


# direct methods
.method constructor <init>(Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport$1;->this$1:Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport$1;->this$1:Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    invoke-static {v0, p1}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;->-wrap0(Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;Landroid/os/Message;)V

    return-void
.end method
