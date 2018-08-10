.class public Lcom/samsung/android/sdk/SsdkVendorCheck;
.super Ljava/lang/Object;
.source "SsdkVendorCheck.java"


# static fields
.field private static strBrand:Ljava/lang/String;

.field private static strManufacturer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strBrand:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strManufacturer:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSamsungDevice()Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strBrand:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strBrand:Ljava/lang/String;

    const-string/jumbo v1, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/SsdkVendorCheck;->strManufacturer:Ljava/lang/String;

    const-string/jumbo v1, "Samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v2
.end method
