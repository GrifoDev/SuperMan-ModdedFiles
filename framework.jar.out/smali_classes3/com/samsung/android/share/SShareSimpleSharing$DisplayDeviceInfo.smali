.class final Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayLabel:Ljava/lang/CharSequence;

.field iconType:I

.field netType:I

.field number:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    .line 696
    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    .line 699
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 700
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 701
    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 702
    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 703
    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->iconType:I

    .line 698
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "pDeviceName"    # Ljava/lang/CharSequence;
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pDeviceId"    # Ljava/lang/CharSequence;
    .param p4, "pNumber"    # Ljava/lang/CharSequence;
    .param p5, "pIconType"    # I
    .param p6, "network"    # I
    .param p7, "device"    # I

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    .line 696
    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    .line 707
    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 708
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 709
    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 710
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 711
    iput p5, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->iconType:I

    .line 712
    iput p6, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->netType:I

    .line 713
    iput p7, p0, Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;->devType:I

    .line 706
    return-void
.end method
