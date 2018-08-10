.class public Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRestrictionUtil"
.end annotation


# instance fields
.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public isUsbFileTransferRestricted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsbFileTransferRestrictedBySystem()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbBackend$UserRestrictionUtil;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
