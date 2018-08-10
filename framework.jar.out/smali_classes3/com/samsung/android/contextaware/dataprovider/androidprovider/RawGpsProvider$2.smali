.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 2

    const/16 v1, 0x20

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    if-eq p1, v9, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v5, "gpsSatellites is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    aput v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    aput v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    aput v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    aput v6, v5, v1

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    aput v2, v5, v8

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v3, v8

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v6, v3, v9

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v3, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyObserver()V

    return-void
.end method
