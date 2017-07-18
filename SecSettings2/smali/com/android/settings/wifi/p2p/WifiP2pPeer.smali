.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    }
.end annotation


# static fields
.field public static final deviceTypeDefaultIcon:[I

.field public static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I

.field private mSecondSummary:Landroid/widget/TextView;

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    return-void

    :array_0
    .array-data 4
        0x7f020545
        0x7f020558
        0x7f02055b
        0x7f02054a
        0x7f020539
        0x7f020559
        0x7f020543
        0x7f020552
        0x7f02054e
        0x7f02055a
        0x7f02053f
        0x7f020540
        0x7f020550
        0x7f020557
        0x7f02053a
        0x7f020549
        0x7f02054d
        0x7f02054f
        0x7f020553
        0x7f02054c
        0x7f020544
        0x7f020555
        0x7f020559
        0x7f020552
        0x7f020551
        0x7f02053e
        0x7f02053d
    .end array-data

    :array_1
    .array-data 4
        0x7f02054b
        0x7f020547
        0x7f020541
        0x7f020542
        0x7f020554
        0x7f02053b
        0x7f02053c
        0x7f020546
        0x7f020543
    .end array-data

    :array_2
    .array-data 4
        0x7f02054a
        0x7f020542
        0x7f02054c
        0x7f02053e
        0x7f020556
        0x7f020548
        0x7f020559
        0x7f020554
        0x7f020541
        0x7f020545
        0x7f020543
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v0, v3, 0xff

    const v3, 0x7f040356

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-lt v2, v7, :cond_1

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_1

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_1
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v7

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_2
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_3
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_4
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_7
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :sswitch_8
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    array-length v3, v1

    if-ge v3, v7, :cond_4

    :cond_3
    const-string/jumbo v3, "WifiP2pPeer"

    const-string/jumbo v4, "Malformed primaryDeviceType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    :cond_5
    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-gt v3, v4, :cond_6

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x401 -> :sswitch_0
        0x501 -> :sswitch_1
        0x502 -> :sswitch_2
        0x503 -> :sswitch_3
        0x701 -> :sswitch_4
        0x702 -> :sswitch_5
        0x704 -> :sswitch_6
        0x1502 -> :sswitch_7
        0x1601 -> :sswitch_8
    .end sparse-switch
.end method

.method private refresh()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v3, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const v2, 0x7f0b0c68

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0b0c65

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1
    return-void

    :cond_2
    const v2, 0x7f0b0c67

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0b0c66

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSecondSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4

    const/4 v1, 0x1

    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f1107ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTalkback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    return-void
.end method
