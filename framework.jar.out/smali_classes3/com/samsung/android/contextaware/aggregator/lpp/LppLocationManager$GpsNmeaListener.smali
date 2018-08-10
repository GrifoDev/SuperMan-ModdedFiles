.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsNmeaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$GpsNmeaListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->logNmeaData(Ljava/lang/String;)V

    return-void
.end method
