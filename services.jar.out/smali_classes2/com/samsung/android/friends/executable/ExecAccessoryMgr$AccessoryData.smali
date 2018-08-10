.class final Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/executable/ExecAccessoryMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessoryData"
.end annotation


# instance fields
.field private mActionNo:I

.field private mBundle:Landroid/os/Bundle;

.field private mOriginalAccessoryId:Ljava/lang/String;

.field private mVerifyRequired:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    return v0
.end method

.method private constructor <init>(IZLandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    iput-boolean p2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    iput-object p3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
