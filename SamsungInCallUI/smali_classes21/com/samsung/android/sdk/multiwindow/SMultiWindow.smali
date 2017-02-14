.class public final Lcom/samsung/android/sdk/multiwindow/SMultiWindow;
.super Ljava/lang/Object;
.source "SMultiWindow.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final FREE_STYLE:I = 0x3

.field public static final MULTIWINDOW:I = 0x1

.field public static final SPLIT_STYLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SMultiWindow"

.field private static enableQueried:Z

.field private static isFreeStyle:Z

.field private static isSplitStyle:Z

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionCode:I

    const-string v0, "1.1.1"

    sput-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionName:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->initMultiWindowFeature()V

    return-void
.end method

.method private initMultiWindowFeature()V
    .locals 2

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->enableQueried:Z

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    sget-object v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$PackageManager;->FEATURE_MULTIWINDOW_FREESTYLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "The device is not supported."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isSplitStyle:Z

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFreeStyle:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
