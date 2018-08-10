.class Lcom/samsung/android/settings/location/SatelliteView$4;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/SatelliteView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const-class v2, Lcom/samsung/android/settings/location/SatelliteViewLog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView$4;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/location/SatelliteView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
