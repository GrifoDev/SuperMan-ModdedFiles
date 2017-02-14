.class Lcom/android/settings/location/LocationMode$4;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationMode$4;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationMode$4;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$4;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-virtual {v1}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/location/LocationMode;->setLocationMode(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
