.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;
.super Ljava/lang/Object;
.source "KMLGenerator.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mCoordinates:Ljava/lang/String;

.field mGPSCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field mLineStyle:Ljava/lang/String;

.field mPlaceID:Ljava/lang/String;

.field mPolyStyleColor:Ljava/lang/String;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "KMLGenerator"

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "temp"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mPlaceID:Ljava/lang/String;

    const-string/jumbo v0, "ffffffff"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mLineStyle:Ljava/lang/String;

    const-string/jumbo v0, "00ffffff"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mPolyStyleColor:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mWidth:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mCoordinates:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mGPSCoordinates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->SetPlaceID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AddCoordinate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[KMLGen]LppLocation size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mCoordinates:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mCoordinates:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public AddCoordinateRT(Landroid/location/Location;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mCoordinates:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mCoordinates:Ljava/lang/String;

    return-void
.end method

.method public AddGPSCoordinate(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[KMLGen]LppLocation size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mGPSCoordinates:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/Location;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-direct {v3, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GenerateLineString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public SetLineStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mLineStyle:Ljava/lang/String;

    return-void
.end method

.method SetLineWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mWidth:I

    return-void
.end method

.method SetPlaceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mPlaceID:Ljava/lang/String;

    return-void
.end method

.method SetPolyStyleColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;->mPolyStyleColor:Ljava/lang/String;

    return-void
.end method
