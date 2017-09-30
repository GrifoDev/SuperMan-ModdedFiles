.class public Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$DuidInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuidInfo"
.end annotation


# instance fields
.field public apps:[Lcom/samsung/android/sdk/ssf/account/io/GetAppRespInfo$AppInfo;

.field public device_idx:I

.field public device_type_value:Ljava/lang/String;

.field public duid:Ljava/lang/String;

.field public model_number:Ljava/lang/String;

.field public st:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
