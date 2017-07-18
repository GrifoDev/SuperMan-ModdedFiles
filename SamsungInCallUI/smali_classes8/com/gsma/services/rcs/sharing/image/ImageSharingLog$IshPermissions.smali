.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingLog$IshPermissions;
.super Ljava/lang/Object;
.source "ImageSharingLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharingLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IshPermissions"
.end annotation


# static fields
.field public static final ISH_READ:Ljava/lang/String; = "com.gsma.services.rcs.RCS_IMAGESHARE_READ"

.field public static final ISH_RECEIVE:Ljava/lang/String; = "com.gsma.services.rcs.RCS_IMAGESHARE_RECEIVE"

.field public static final ISH_SEND:Ljava/lang/String; = "com.gsma.services.rcs.RCS_IMAGESHARE_SEND"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
