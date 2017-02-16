.class final Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field iconType:I

.field photoIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 726
    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 728
    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    .line 729
    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 724
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pLabel"    # Ljava/lang/CharSequence;
    .param p2, "pIconType"    # I
    .param p3, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 734
    iput p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 735
    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    .line 736
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 732
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;)V
    .locals 0
    .param p1, "pLabel"    # Ljava/lang/CharSequence;
    .param p2, "pIconType"    # I
    .param p3, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;
    .param p5, "pDeviceInfo"    # Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 742
    iput p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 743
    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    .line 744
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 745
    iput-object p5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 740
    return-void
.end method
