.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
.super Ljava/lang/Object;
.source "BtTetherDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceObject"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isBusy:Z

.field summary:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    iput-boolean p4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    return-void
.end method
