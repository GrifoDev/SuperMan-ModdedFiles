.class Lcom/google/android/gms/maps/GoogleMap$11;
.super Lcom/google/android/gms/maps/internal/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ga:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic gm:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->ga:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11;->gm:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/b;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->gm:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    return-void
.end method
